package gen;

import haxe.macro.Type.FieldKind;
import typer.HaxeAst.Module;
import haxe.macro.Expr.TypeDefKind;
import haxe.macro.Expr.TypeDefinition;
import haxe.macro.Expr;
import haxe.macro.Type.ClassKind;
import sys.FileSystem;
import sys.io.File;

function cutPrefix(paths:Array<String>):Array<String> {
	return paths.length >= 2 ? paths.slice(2) : paths;
}

function cutPrefixComplexType(ct:ComplexType):ComplexType {
	switch ct {
		case TPath(p):
			if (p.pack.length > 2 && p.pack[0] != "stdgo") {
				p.pack = cutPrefix(p.pack);
			}
		default:
	}
	return ct;
}

function create(outputPath:String, module:typer.HaxeAst.Module, root:String) {
	final printer = new gen.Printer();
	var actualPath = StringTools.replace(module.path, ".", "/");
	final paths = actualPath.split("/");
	// get rid of github.com/org/repo prefix
	var isStdgo = false;
	var actualPathInterop = paths.join("/");
	var interopDefBool = !module.isMain;
	final cut = actualPath.substring(actualPath.length - 5);
	final _testStr = "_test";
	if (cut == _testStr) {
		// actualPath = actualPath.substring(0, actualPath.length - _testStr.length);
		interopDefBool = false;
	}
	final stdFormatPath = actualPath;
	if (paths.length > 0) {
		if (actualPath == "") {
			actualPath = "_internal";
		} else {
			actualPath = "_internal/" + actualPath;
		}
	}
	// if stdgo
	if (io.Data.stdgoList.contains(toGoPath(stdFormatPath))) {
		isStdgo = true;
		root = "stdgo";
		actualPath = "stdgo/" + actualPath;
		if (actualPathInterop.length > 0) {
			actualPathInterop = "stdgo/" + actualPathInterop;
		} else {
			actualPathInterop = "stdgo";
		}
	}
	if (!isStdgo)
		actualPathInterop = cutPrefix(actualPathInterop.split("/")).join("/");
	if (root.length > 0)
		root += ".";
	var pkgPath = 'package ${actualPath.split("/").join(".")};\n';
	var pkgPathInterop = 'package ${actualPathInterop.split("/").join(".")};\n';
	var content:Array<TypeDefinition> = [];
	var contentImports:String = "";
	var interopContent:Array<TypeDefinition> = [];
	var interopMacroContent:Array<TypeDefinition> = [];
	var macroContent:Array<TypeDefinition> = [];
	var hasMacroDef = false;
	for (file in module.files) {
		contentImports = "";
		if (file != null && file.imports != null) {
			for (imp in file.imports) {
				if (imp == null)
					continue;
				contentImports += "import " + imp.path.join(".");
				if (imp.alias != "" && imp.alias != null)
					contentImports += " as " + imp.alias;
				contentImports += ";\n";
			}
		}
		var macroFields:Array<haxe.macro.Expr.Field> = [];
		final cl = macro class C {};
		final clMacro = macro class C {};
		var splitFiles = [];
		cl.name = @:privateAccess io.Path.importClassName(paths.pop());
		clMacro.name = cl.name;
		if (file != null && file.defs != null) {
			for (def in file.defs) {
				macroFields = [];
				switch def.kind {
					case TDField(kind, access):
						if (access != null && access.indexOf(AMacro) != -1) {
							switch kind {
								case FFun(f):
									final isExtern = def.isExtern;
									def.isExtern = true;
									hasMacroDef = true;
									for (td in Interop.interopGen(def, actualPath, clMacro))
										interopMacroContent.push(td);
									macroContent.push(stripComments(def));
									def.isExtern = isExtern;
									f.expr = null;
								default:
							}
						}
					default:
				}
				for (field in def.fields) {
					if (field.access != null && field.access.indexOf(AMacro) != -1) {
						switch field.kind {
							case FFun(f):
								macroFields.push({
									name: field.name,
									access: field.access,
									pos: field.pos,
									kind: FFun({
										args: f.args,
										ret: f.ret,
										expr: f.expr,
										params: f.params
									}),
								});
								f.expr = null;
								field.kind = FFun(f);
							default:
						}
					}
				}
				if (macroFields.length > 0) {
					hasMacroDef = true;
					final td = {
						name: def.name,
						pos: def.pos,
						pack: def.pack,
						fields: macroFields,
						kind: def.kind,
						isExtern: true,
					};
					if (interopDefBool) {
						for (td in Interop.interopGen(def, actualPath, cl))
							interopMacroContent.push(td);
					}
					macroContent.push(stripComments(td));
				}
				if (interopDefBool) {
					for (td in Interop.interopGen(def, actualPath, cl)) {
						interopContent.push(td);
					}
				}
				content.push(stripComments(def));
			}
		}
		if (interopDefBool) {
			interopContent.push(cl);
			save(outputPath + actualPathInterop + "/", file?.name, interopContent, pkgPathInterop, "", false, splitFiles, printer);
		}
		save(outputPath + actualPath + "/", file?.name, content, pkgPath + contentImports, "", !file?.isMain, splitFiles, printer);
		if (hasMacroDef) {
			if (interopDefBool) {
				interopMacroContent.push(clMacro);
				save(outputPath + actualPathInterop + "/", file?.name, interopMacroContent, pkgPath, ".macro", false, splitFiles, printer);
			}
			save(outputPath + actualPath + "/", file.name, macroContent, pkgPath, ".macro", false, splitFiles, printer);
		}
	}
	// cache
	if (module.checksum != "") {
		try {
			final cachePath = outputPath + actualPath + '/.go2hx_cache';
			File.saveContent(cachePath, module.checksum);
		}catch(_) {}
	}
}

private function runCmd(cmd:String) {
	#if (target.threaded)
	final process = new sys.io.Process(cmd);
	final code = process.exitCode();
	process.close();
	return code;
	#else
	return try {
		js.node.ChildProcess.execSync(cmd, null);
		0;
	} catch (_) {
		1;
	}
	#end
}

private function save(dir:String, name:String, content:Array<TypeDefinition>, prefix:String, extension:String, splitDepsContent:Bool, splitFiles:Array<String>, printer:gen.Printer) {
	if (content.length == 0)
		return;
	if (splitDepsContent)
		content = splitDeps(dir, name, prefix, extension, content, splitFiles, printer); // clears out content and saves elsewhere
	final contentString = prefix + content.map(f -> printer.printTypeDefinition(f, false)).join("");
	// used to create the main file and/or hold the init func
	saveRaw(dir, name, contentString, prefix, extension, splitDepsContent);
}

function splitDeps(dir:String, name:String, prefix:String, extension:String, content:Array<TypeDefinition>, splitFiles:Array<String>, printer:gen.Printer):Array<TypeDefinition> {
	final newContent = [];
	for (td in content) {
		switch td.kind {
			case TDAbstract(tthis, flags, from, to):
			case TDClass(_, _, _, _, _):
			case TDAlias(_):
			case TDField(kind, access):
				switch kind {
					case FFun(_):
						if (td.name == "main") {
							newContent.push(td);
							continue;
						}
					case FVar(_, _):
						if (StringTools.startsWith(td.name, "__init_go2hx__")) {
							newContent.push(td);
							continue;
						}
					default:
				}
			default:
		}
		// raw save file
		final defName = removeTypeParamSuffix(td.name.toLowerCase());
		final fullPath = dir + "," + name + "_" + defName;
		var contentString = printer.printTypeDefinition(td, false);
		if (splitFiles.indexOf(fullPath) != -1) {
			appendRaw(dir, name + "_" + defName, contentString, prefix, extension);
		} else {
			contentString = prefix + contentString;
			saveRaw(dir, name + "_" + defName, contentString, prefix, extension, true);
			splitFiles.push(fullPath);
		}
	}
	return newContent;
}

private function removeTypeParamSuffix(name:String):String {
	final index = name.indexOf("__tp__");
	if (index == -1)
		return name;
	return name.substr(0, index);
}

private function saveRaw(dir:String, name:String, contentString, prefix:String, extension:String, splitFileBool:Bool) {
	if (!FileSystem.exists(dir)) {
		try {
			Compiler.mutex.acquire();
			FileSystem.createDirectory(dir);
			Compiler.mutex.release();
		}catch(e) {
			trace(e);
			trace(dir,name);
			throw e;
		}
	}
	final path = dir + name + extension + ".hx";
	File.saveContent(path, contentString);
}

private function appendRaw(dir:String, name:String, contentString, prefix:String, extension:String) {
	if (!FileSystem.exists(dir))
		FileSystem.createDirectory(dir);
	final path = dir + name + extension + ".hx";
	File.saveContent(path, File.getContent(path) + contentString);
}

function stripComments(td:TypeDefinition):TypeDefinition {
	td.doc = null;
	td.fields = td.fields.map(function(field) {
		field.doc = null;
		return field;
	});
	return td;
}
