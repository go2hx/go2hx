package codegen;

import haxe.macro.Type.FieldKind;
import typer.HaxeAst.Module;
import haxe.macro.Expr.TypeDefKind;
import haxe.macro.Expr.TypeDefinition;
import haxe.macro.Expr;
import haxe.macro.Type.ClassKind;
import sys.FileSystem;
import sys.io.File;
import codegen.Interop;

var splitFiles:Array<String> = [];

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
	if (typer.Typer.stdgoList.contains(typer.Typer.toGoPath(stdFormatPath))) {
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
	var count = module.files.length;
	var hasMacroDef = false;
	for (file in module.files) {
		/*content = pkgPath;
			macroContent = pkgPath;
			interopContent = pkgPathInterop;
			interopMacroContent = pkgPathInterop; */
		contentImports = "";
		for (imp in file.imports) {
			if (imp == null)
				continue;
			contentImports += "import " + imp.path.join(".");
			if (imp.alias != "" && imp.alias != null)
				contentImports += " as " + imp.alias;
			contentImports += ";\n";
		}
		var macroFields:Array<haxe.macro.Expr.Field> = [];
		final cl = macro class C {};
		final clMacro = macro class C {};
		splitFiles = [];
		cl.name = @:privateAccess typer.Typer.importClassName(paths.pop());
		// cl.meta = [{name: ":doxName", params: [macro ${shared.Util.makeExpr("⭐ " + clName,)}], pos: null}];
		clMacro.name = cl.name;
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
					for (td in codegen.Interop.interopGen(def, actualPath, cl))
						interopMacroContent.push(td);
				}
				macroContent.push(stripComments(td));
			}
			if (interopDefBool) {
				for (td in codegen.Interop.interopGen(def, actualPath, cl)) {
					interopContent.push(td);
				}
			}
			content.push(stripComments(def));
		}
		if (interopDefBool) {
			interopContent.push(cl);
			save(outputPath + actualPathInterop + "/", file.name, interopContent, pkgPathInterop, "", false);
		}
		save(outputPath + actualPath + "/", file.name, content, pkgPath + contentImports);
		if (hasMacroDef) {
			if (interopDefBool) {
				interopMacroContent.push(clMacro);
				save(outputPath + actualPathInterop + "/", file.name, interopMacroContent, pkgPath, ".macro", false);
			}
			save(outputPath + actualPath + "/", file.name, macroContent, pkgPath, ".macro");
		}
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

private function save(dir:String, name:String, content:Array<TypeDefinition>, prefix:String, extension:String = "", splitDepsContent:Bool = true) {
	if (content.length == 0)
		return;
	if (splitDepsContent)
		content = splitDeps(dir, name, prefix, extension, content); // clears out content and saves elsewhere
	final contentString = prefix + content.map(f -> typer.Typer.printer.printTypeDefinition(f, false)).join("");
	// used to create the main file and/or hold the init func
	saveRaw(dir, name, contentString, prefix, extension, splitDepsContent);
}

function splitDeps(dir:String, name:String, prefix:String, extension:String, content:Array<TypeDefinition>):Array<TypeDefinition> {
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
		final fullPath = dir + "," + name + "_" + td.name.toLowerCase();
		var contentString = typer.Typer.printer.printTypeDefinition(td, false);
		if (splitFiles.indexOf(fullPath) != -1) {
			appendRaw(dir, name + "_" + td.name.toLowerCase(), contentString, prefix, extension);
		} else {
			contentString = prefix + contentString;
			saveRaw(dir, name + "_" + td.name.toLowerCase(), contentString, prefix, extension);
			splitFiles.push(fullPath);
		}
	}
	return newContent;
}

var sizeMap:Map<String, Int> = [];

private function saveRaw(dir:String, name:String, contentString, prefix:String, extension:String, splitFileBool:Bool = true) {
	if (!FileSystem.exists(dir))
		FileSystem.createDirectory(dir);
	final path = dir + name + extension + ".hx";
	var didWrite = utils.Cache.checkHashAndWrite(path, contentString);
	if (splitFileBool) {
		var sizePath = haxe.io.Path.directory(path);
		if (!didWrite)
			sizePath = "skipped";
		sizeMap[sizePath] = (sizeMap[sizePath] ?? 0) + shared.Util.kbCount(contentString);
	} else {
		if (!didWrite) {
			Sys.println("Skipped: " + dir + name + extension + ".hx");
			return;
		}
		Sys.println("Generated:\nMAIN " + dir + name + extension + ".hx - " + shared.Util.kbCount(contentString) + "kb");
	}
}

private function appendRaw(dir:String, name:String, contentString, prefix:String, extension:String) {
	if (!FileSystem.exists(dir))
		FileSystem.createDirectory(dir);
	final path = dir + name + extension + ".hx";
	var didWrite = utils.Cache.checkHashAndWrite(path, File.getContent(path) + contentString);

	if (!didWrite) {
		Sys.println("Skipped: " + dir + name + extension + ".hx");
		return;
	}

	Sys.println("Appended: " + dir + name + extension + ".hx - " + shared.Util.kbCount(contentString) + "kb");
}

function stripComments(td:TypeDefinition):TypeDefinition {
	td.doc = null;
	td.fields = td.fields.map(function(field) {
		field.doc = null;
		return field;
	});
	return td;
}
