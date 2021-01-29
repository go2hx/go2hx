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
    Sys.command("go get -u github.com/tidwall/btree");
    Sys.setCwd("..");
    tests.push(path);
    Main.init(tests);
    Main.init(["-ident","github.com/tidwall/btree",path]);
}
function load():Array<String> {
    var tests:Array<String> = [];
    /*if (!FileSystem.exists("gobyexample"))
        Sys.command("git clone https://github.com/mmcgrana/gobyexample");
    var repo = "gobyexample/examples";
    for (path in FileSystem.readDirectory(repo)) {
        tests.push('./$repo/$path');
    }*/
    return tests;
}