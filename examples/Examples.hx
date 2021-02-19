import sys.io.File;
import sys.FileSystem;
import haxe.io.Path;
var path:String;
function main() {
    Sys.setCwd("examples");
    path = Path.normalize(Sys.getCwd());
    gen();
}

function gen() {
    var tests = load();
    tests = ["./gobyexample/examples/pointers"];
    final libs = false;
    //libraries to download
    if (libs) {
        Sys.command("go get -u github.com/tidwall/btree");
    }
    tests.push(path);
    tests.unshift("-ident");
    Main.exportBool = true;
    Main.init(tests);
    Sys.setCwd("..");
    for (path in Main.exportPaths) {
        path = StringTools.replace(path,"/",".");
        var command = 'haxe -cp examples/golibs -main $path --interp';
        trace(command);
        Sys.command(command);
    }
    Main.exportBool = false;
    //run libraries
    if (libs) {
        Main.init(["-ident","github.com/tidwall/btree",path]);
    }
}
function load():Array<String> {
    var tests:Array<String> = [];
    if (!FileSystem.exists("gobyexample"))
        Sys.command("git clone https://github.com/mmcgrana/gobyexample");
    var repo = "gobyexample/examples";
    for (path in FileSystem.readDirectory(repo)) {
        tests.push('./$repo/$path');
    }
    return tests;
}