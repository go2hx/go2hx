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
        //content += printer.printExpr()
        save(outputPath + module.path + "/",file.name,content);
    }
}
private function save(dir:String,name:String,content:String) {
    if (!FileSystem.exists(dir))
        FileSystem.createDirectory(dir);
    File.saveContent(dir + name + ".hx",content);
}