import Typer.Module;
import haxe.macro.Expr.TypeDefKind;
import haxe.macro.Expr.TypeDefinition;
import haxe.macro.Expr;
import haxe.macro.Type.ClassKind;
import sys.FileSystem;
import sys.io.File;

function create(outputPath:String, module:Module, root:String) {
	var actualPath = StringTools.replace(module.path, ".", "/");
	var actualPathExtern = actualPath;
	final paths = actualPath.split("/");
	var externDefBool = !module.isMain;
	var testPath = actualPathExtern;
	if (paths.length > 0 && externDefBool) {
		actualPath = "_internal/" + actualPath;
	}
	if (testPath.substring(testPath.length - 5) == "_test") {
		testPath = testPath.substring(0, testPath.length - 5);
		externDefBool = false;
	}
	// if stdgo
	if (Typer.stdgoList.contains(testPath)) {
		root = "stdgo";
		actualPath = "stdgo/" + actualPath;
		actualPathExtern = "stdgo/" + actualPathExtern;
	}
	if (root.length > 0)
		root += ".";
	var pkgPath = 'package ${actualPath.split("/").join(".")};\n';
	var pkgPathExtern = 'package ${actualPathExtern.split("/").join(".")};\n';
	var content = "";
	var externContent = "";
	var externMacroContent = "";
	var macroContent = "";
	var count = module.files.length;
	var hasMacroDef = false;
	for (file in module.files) {
		content = pkgPath;
		macroContent = pkgPath;
		externContent = pkgPathExtern;
		externMacroContent = pkgPathExtern;
		for (imp in file.imports) {
			if (imp == null)
				continue;
			content += "import " + imp.path.join(".");
			if (imp.alias != "" && imp.alias != null)
				content += " as " + imp.alias;
			content += ";\n";
		}
		var macroFields:Array<haxe.macro.Expr.Field> = [];
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
								externMacroContent += Typer.printer.printTypeDefinition(externGen(def, actualPath), false) + "\n";
								macroContent += Typer.printer.printTypeDefinition(stripComments(def), false) + "\n";
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
				if (externDefBool)
					externMacroContent += Typer.printer.printTypeDefinition(externGen(td, actualPath), false) + "\n";
				macroContent += Typer.printer.printTypeDefinition(stripComments(td), false) + "\n";
			}
			if (externDefBool)
				externContent += Typer.printer.printTypeDefinition(externGen(def, actualPath), false) + "\n";
			content += Typer.printer.printTypeDefinition(stripComments(def), false) + "\n";
		}
		if (externDefBool) {
			save(outputPath + actualPathExtern + "/", file.name, externContent);
		}
		save(outputPath + actualPath + "/", file.name, content);
		if (hasMacroDef) {
			if (externDefBool)
				save(outputPath + actualPathExtern + "/", file.name, externMacroContent, ".macro");
			save(outputPath + actualPath + "/", file.name, macroContent, ".macro");
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

private function save(dir:String, name:String, content:String, extension:String = "") {
	if (!FileSystem.exists(dir))
		FileSystem.createDirectory(dir);
	final path = dir + name + extension + ".hx";
	File.saveContent(path, content);
	Sys.println("Generated: " + dir + name + extension + ".hx - " + src.Util.kbCount(content) + "kb");
}


function externGen(td:TypeDefinition,path:String):TypeDefinition {
	switch td.kind {
		case TDClass(_, _, isInterface, _, isAbstract):
			if (isInterface)
				return externGenInterface(td);
			if (isAbstract)
				return externGenAbstract(td);
			return externGenClass(td);
		case TDField(kind, access):
			return switch kind {
				case FVar(_, _):
					externGenVar(td);
				case FFun(f):
					{
						name: td.name,
						pos: td.pos,
						pack: td.pack,
						fields: td.fields,
						kind: TDField(FFun(externGenFun(f)), access),
					}
				case FProp(_, _, _, _):
					throw "FProp not supported";
			}
		case TDAlias(_):
			return externGenAlias(td,path);
		default:
	}
	trace("No extern change made for " + td.kind);
	return td;
}

function externGenInterface(td:TypeDefinition):TypeDefinition {
	td.fields = externGenFields(td.fields);
	return externInvalid(td);
}

function externGenAbstract(td:TypeDefinition):TypeDefinition {
	return externInvalid(td);
}

function externGenClass(td:TypeDefinition):TypeDefinition {
	return externInvalid(td);
}

function externGenAlias(td:TypeDefinition, path:String):TypeDefinition {
	return switch td.kind {
		case TDAlias(_):
			{
				name: td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				kind: TDAlias(TPath({name: td.name, pack: path.split("/"), params: td.params?.map(f -> TPType(TPath({name: f.name, pack: []})))})),
				isExtern: td.isExtern,
			};
		default:
			throw "TDAlias expected";
	}
}

function externInvalid(td:TypeDefinition):TypeDefinition {
	return {
		name: td.name,
		pos: td.pos,
		pack: td.pack,
		fields: [],
		meta: [{name: ":invalid", params: [], pos: null}],
		kind: TDAlias(TPath({name: "Dynamic", pack: []})),
	};
}

function externInvalidVar(td:TypeDefinition):TypeDefinition {
	return {
		name: td.name,
		pos: td.pos,
		pack: td.pack,
		fields: [],
		meta: [{name: ":invalid", params: [], pos: null}],
		kind: TDField(FVar(TPath({name: "Dynamic", pack: []}), null), null),
	};
}

function externGenStruct(td:TypeDefinition):TypeDefinition {
	return externInvalid(td);
}

function externGenVar(td:TypeDefinition):TypeDefinition {
	return externInvalidVar(td);
}

function externGenFun(f:Function):Function {
	return  {
		args: f.args,
		ret: TPath({name: "Void", pack: []}),
		expr: macro {},
		params: f.params,
	};
}

function externGenFields(fields:Array<haxe.macro.Expr.Field>):Array<haxe.macro.Expr.Field> {
	return [for (field in fields) {
		switch field.kind {
			case FFun(f):
				{
					name: field.name,
					access: field.access,
					pos: field.pos,
					doc: field.doc,
					kind: FFun(externGenFun(f)),
				};
			default:
				throw "Field kind not supported: " + field.kind;
		}
	}];
}

function stripComments(td:TypeDefinition):TypeDefinition {
	td.doc = null;
	td.fields = td.fields.map(function(field) {
		field.doc = null;
		return field;
	});
	return td;
}