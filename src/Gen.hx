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
    var printer = new Printer("    ");
    var content = "";
    for (file in module.files) {
        content = pkgPath;
        for (imp in file.imports) {
            trace("imp: " + imp);
            content += "import " + imp.path;
            if (imp.alias != "" && imp.alias != null)
                content += " as " + imp.alias;
            content += ";\n";
        }
        for (def in file.defs) {
            content += printer.printTypeDefinition(def,false);
        }
        save(outputPath + module.path + "/",file.name,content);
    }
}
private function save(dir:String,name:String,content:String) {
    if (!FileSystem.exists(dir))
        FileSystem.createDirectory(dir);
    File.saveContent(dir + name + ".hx",content);
}