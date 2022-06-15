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
	var count = module.files.length;

	for (file in module.files) {
		content = pkgPath;
		for (imp in file.imports) {
			if (imp == null)
				continue;
			content += "import " + imp.path.join(".");
			if (imp.alias != "" && imp.alias != null)
				content += " as " + imp.alias;
			content += ";\n";
		}
		for (def in file.defs) {
			content += Typer.printer.printTypeDefinition(def, false) + "\n";
		}
		save(outputPath + actualPath + "/", file.name, content);
	}
}

private function save(dir:String, name:String, content:String) {
	if (!FileSystem.exists(dir))
		FileSystem.createDirectory(dir);
	File.saveContent(dir + name + ".hx", content);
	// Sys.println("Generated: " + dir + name + ".hx - " + shared.Util.kbCount(content) + "kb");
}
