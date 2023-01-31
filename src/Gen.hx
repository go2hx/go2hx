import Typer.Module;
import haxe.macro.Expr.TypeDefKind;
import haxe.macro.Expr.TypeDefinition;
import haxe.macro.Expr;
import haxe.macro.Type.ClassKind;
import sys.FileSystem;
import sys.io.File;

function create(outputPath:String, module:Module, root:String) {
	var actualPath = StringTools.replace(module.path, ".", "/");
	if (root.length > 0)
		root += ".";
	var pkgPath = 'package $root${module.path};\n';
	var content = "";
	var macroContent = "";
	var count = module.files.length;
	var hasMacroDef = false;
	for (file in module.files) {
		content = pkgPath;
		macroContent = pkgPath;
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
								macroContent += Typer.printer.printTypeDefinition(def, false) + "\n";
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
								kind: FFun({args: f.args,ret: f.ret,expr: f.expr ,params: f.params}),
							});
							f.expr = null;
							field.kind = FFun(f);
						default:
					}
				}
			}
			if (macroFields.length > 0) {
				hasMacroDef = true;
				macroContent += Typer.printer.printTypeDefinition({
					name: def.name,
					pos: def.pos,
					pack: def.pack,
					fields: macroFields,
					kind: def.kind,
					isExtern: true,
				},false) + "\n";
			}
			content += Typer.printer.printTypeDefinition(def, false) + "\n";
		}
		save(outputPath + actualPath + "/", file.name, content);
		if (hasMacroDef)
			save(outputPath + actualPath + "/",file.name, macroContent, ".macro");
	}
}

var typeFormatter = -1;

private function runFormatter(path:String) {
	if (typeFormatter == 0)
		return;
	if (typeFormatter == -1) {
		var code = runCmd("haxelib run formatter -v");
		if (code == 0) {
			typeFormatter = 1;
		} else {
			code = runCmd("npx haxelib run formatter -v");
			if (code == 0) {
				typeFormatter = 2;
			} else {
				typeFormatter = 0;
				return;
			}
		}
	}
	var cmd = 'haxelib run formatter -s $path';
	if (typeFormatter > 1)
		cmd = "npx " + cmd;
	final code = runCmd(cmd);
	if (code != 0)
		throw "formatter failed: " + code;
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

private function save(dir:String, name:String, content:String, extension:String="") {
	if (!FileSystem.exists(dir))
		FileSystem.createDirectory(dir);
	final path = dir + name + extension + ".hx";
	File.saveContent(path, content);
	runFormatter(path);
	Sys.println("Generated: " + dir + name + extension + ".hx - " + shared.Util.kbCount(content) + "kb");
}
