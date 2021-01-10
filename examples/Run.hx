import sys.FileSystem;
import haxe.io.Path;

function main() {
    var dir = Path.normalize(Sys.getCwd()).split("/");
    dir.pop();
    var path = dir.join("/");
    var repos = [
        "github.com/tidwall/btree",
    ];
    for (repo in repos)
        command('neko ../run.n $repo $path');

    runRepo("floyernick","Data-Structures-and-Algorithms",path,[

    ]);
    runRepo("mmcgrana","gobyexample",path,[
        "hello-world",
        "constants",
        "for"
    ],"examples/");
}
function runRepo(user:String,repo:String,path:String,examples:Array<String>,pre:String="") {
    if (!FileSystem.exists(repo))
        command('git clone https://github.com/$user/$repo');
    for (example in examples)
        command('neko ../run.n ./$repo/$pre$example $path');
}
function command(cmd:String) {
    //Sys.println(cmd);
    var err = Sys.command(cmd);
    if (err != 0)
        throw '$cmd error: $err';
}