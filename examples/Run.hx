import sys.io.File;
import sys.FileSystem;
import haxe.io.Path;

var debug:Bool = false;
var commands:Array<String> = [];
var path:String;
function main() {

    var args = Sys.args();
    if (args.length == 1 && args[0] == "debug")
        debug = true;
    var dir = Path.normalize(Sys.getCwd()).split("/");
    dir.pop();
    path = dir.join("/");

    var goPath = "go/test";
    var goRepo = new Repo("golang","go");
    var tests:Array<String> = [];
    for (path in FileSystem.readDirectory(goPath)) {
        if (FileSystem.isDirectory('$goPath/$path') && Path.extension(path) != "go")
            continue;
        var file = File.read('$goPath/$path',false);
        try {
            var line = file.readLine();
            line = line.substr(3);
            if (line == "run")
                tests.push(path);
        }catch(e) {
        }
        file.close();
    }
    goRepo.run(tests,"test/");

    if (debug) {
        File.saveContent("log.txt",commands.join("\n"));
    }else{
        var err = Sys.command('neko run.n ${commands.join(" ")} $path');
        if (err != 0)
            throw 'error: $err';
        //non files
        commands = [];
        var repos = [
            "github.com/tidwall/btree",
        ];
        new Repo("mmcgrana","gobyexample").run([
            "hello-world",
            "constants",
            "for"
        ],"examples/");
    
        for (repo in repos)
            command(repo);
    
        /*var algoPath = "Data-Structures-and-Algorithms";
        var algos:Array<String> = [];
        var algoRepo = new Repo("floyernick",algoPath);
        for (path in FileSystem.readDirectory(algoPath))
            if (path.charAt(0) != "." && FileSystem.isDirectory('$algoPath/$path'))
                algos.push(path);
        algoRepo.run(algos);*/

        var err = Sys.command('neko run.n ${commands.join(" ")} $path');
        if (err != 0)
            throw 'error: $err';
    }
}
function command(cmd:String) {
    commands.push(cmd);
    if (!debug)
        Sys.println(cmd);
}
class Repo {
    var user:String;
    var repo:String;
    public function new(user:String,repo:String) {
        this.user = user;
        this.repo = repo;
        if (!FileSystem.exists(repo))
            Sys.command('git clone https://github.com/$user/$repo');
    }
    public function run(examples:Array<String>,pre:String="") {
        for (example in examples)
            command('./$repo/$pre$example');
    }
}