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
    //HELLO FRIEND ITS ME FROM THE PAST, YOU SEE I am like you however you have taken my tech debt on to you and for that
    //I applaud you for your service, please go here -> https://github.com/HaxeFoundation/haxe/blob/4.1.3/std/haxe/macro/Expr.hx#L880
    //look at how TypeDefinition can be both a typedef/class/abstract
    //modular level functions with static extenion using in order to not need abstract classes to represent
    //ClassKind.KModuleFields
    //printer.printTypeDefinition(def);
}
private function save(dir:String,name:String,content:String) {
    if (!FileSystem.exists(dir))
        FileSystem.createDirectory(dir);
    File.saveContent(dir + name + ".hx",content);
}