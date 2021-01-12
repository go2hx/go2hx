import haxe.macro.Expr;
import haxe.macro.Expr.TypeDefKind;
import haxe.macro.Type.ClassKind;
import haxe.macro.Expr.TypeDefinition;
import haxe.macro.Printer;
import sys.FileSystem;
import sys.io.File;
import Typer.Module;

function create(outputPath:String,module:Module) {
    var pkgPath = StringTools.replace(module.path,"/",".");
    pkgPath = 'package $pkgPath;\n';
    var content = "";
    var count = module.files.length;
    Sys.println("generating " + count + " file"  + (count != 1 ? "s" : "") + "...");
    for (file in module.files) {
        content = pkgPath;
        for (imp in file.imports) {
            content += "import " + imp.path.join(".");
            if (imp.alias != "" && imp.alias != null)
                content += " as " + imp.alias;
            content += ";\n";
        }
        for (def in file.defs) {
            content += Typer.printer.printTypeDefinition(def,false) + "\n";
        }
        save(outputPath + module.path + "/",Typer.title(file.name),content);
    }
}
private function save(dir:String,name:String,content:String) {
    if (!FileSystem.exists(dir))
        FileSystem.createDirectory(dir);
    File.saveContent(dir + name + ".hx",content);
}