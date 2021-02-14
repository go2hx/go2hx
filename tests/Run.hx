package;

import sys.io.FileInput;
import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;

var path:String;

function main() {
    Sys.setCwd("tests");
    path = Path.normalize(Sys.getCwd());
    gen();
}
function gen() {
    var tests = load();
    tests = ["./go/test/append.go"];
    tests.push(path);
    Main.exportBool = true;
    Main.init(tests);

    tests.pop();
    Sys.setCwd("..");
    for (path in Main.exportPaths) {
        path = StringTools.replace(path,"/",".");
        var command = 'haxe -cp tests/golibs -main $path --interp';
        trace(command);
        Sys.command(command);
    }
}
function load():Array<String> {
    var tests:Array<String> = [];
    if (!FileSystem.isDirectory("go"))
        Sys.command("git clone https://github.com/golang/go");
    function readLine(file:FileInput):Bool {
        try {
            var line = file.readLine();
            line = line.substr(3);
            if (["run","runoutput"].indexOf(line) != -1)
                return true;
        }catch(e) {
            trace(e);
        }
        file.close();
        return false;
    }
    var repo = "go/test";
    for (path in FileSystem.readDirectory(repo)) {
        if (FileSystem.isDirectory('$repo/$path') || Path.extension(path) != "go")
            continue;
        readLine(File.read('$repo/$path',false));
    }
    for (path in FileSystem.readDirectory('$repo/interface')) {
        if (FileSystem.isDirectory('$repo/interface/$path') || Path.extension(path) != "go")
            continue;
        var p = '$repo/interface/$path';
        var file = File.read(p,false);
        readLine(file);
    }
    return tests;
}