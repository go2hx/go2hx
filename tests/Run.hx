package;

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
    tests = ["./go/test/closure2.go"];
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
    var repo = "go/test";
    var tests:Array<String> = [];
    if (!FileSystem.isDirectory("go"))
        Sys.command("git clone https://github.com/golang/go");
    for (path in FileSystem.readDirectory(repo)) {
        if (FileSystem.isDirectory('$repo/$path') || Path.extension(path) != "go")
            continue;
        var file = File.read('$repo/$path',false);
        try {
            var line = file.readLine();
            line = line.substr(3);
            if (["run","runoutput"].indexOf(line) != -1)
                tests.push('./$repo/$path');
        }catch(e) {
            trace(e);
        }
        file.close();
    }
    return tests;
}