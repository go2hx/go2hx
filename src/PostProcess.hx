import Typer.FileType;
import haxe.io.Path;
import Typer.Module;



function run(module:Module) {
    module.path = StringTools.replace(module.path,".","_");
    module.path = StringTools.replace(module.path,":","_");
    module.path = StringTools.replace(module.path,"-","_");

    var top = "";
    var main:FileType = null;
    var index = module.path.lastIndexOf("/");
    if (index != -1) {
        top = module.path.substr(index + 1);
        module.path = module.path.substr(0,index);
        for (file in module.files) {
            if (file.name == top) {
                main = file;
                break;
            }
        }
    }else{
        top = module.path;
        module.path = "";
    }
    if (main == null) {
        main = {name: top,imports: [],defs: []};
        module.files.push(main);
    }
    for (file in module.files) {
        file.name = title(file.name);
    }
}
private function title(string:String):String {
    return string.charAt(0).toUpperCase() + string.substr(1);
}
private function untitle(string:String):String {
    return string.charAt(0).toLowerCase() + string.substr(1);
}
