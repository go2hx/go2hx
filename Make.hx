function main() {
    var args = Sys.args();
    if (args.length == 0) {
        Sys.println("No args specified");
        return;
    }
    //args = args.map(arg -> arg.toLowerCase());
    switch args {
        case ["hxb"]:
            Sys.command("haxelib run go2hx hxb .");
        case ["goto"], ["analysis", "goto"]:
            Sys.command("go run -goto .");
        case ["setup"]:
            Sys.command("haxelib dev go2hx .");
            Sys.command("haxelib run go2hx setup");
        case _ if (args[0] == "std" || args[0] == "stdgo"):
            final cmd = "haxe scripts/stdgo.hxml -D libs=" + args.slice(1).join(",");
            Sys.command(cmd); 
        case ["sorttests"]:
            Sys.command("go run ./scripts/sortTests");
        case ["deletefiles"]:
            Sys.command("sh ./scripts/deletefiles.sh");
        case ["codespaces"]:
            Sys.command("sh ./scripts/codespaces.sh");
        case _ if (args[0] == "test"):
            var file = args[1];
            file = StringTools.replace(file, "/", "_");
            // args[2...] = run command
            final cmd = "haxe stdgo/" + file + ".hxml " + args.slice(2).join(" ");
            Sys.println(cmd);
            Sys.command(cmd);
        case _ if (args[0] == "report"):
            // -D go -D mode=easy -D targets=hl
            final cmd = "haxe tests/tests.hxml -D runnerCount=4 -D nologs -D report " + args.slice(1).join(" ");
            Sys.println(cmd);
            Sys.command(cmd); 
        case ["actions"]:
            Sys.command("haxe scripts/github-actions/build.hxml");
        case ["interop"]:
            Sys.println("build");
            Sys.command("haxelib run go2hx ./tests/interop --nolibwrap");
            Sys.println("test");
            Sys.command("haxe tests/interop.hxml");
        case ["format"]:
            Sys.command("haxelib run formatter --source .");
        case ["rnd"]:
            Sys.command("haxe rnd/rnd.hxml");
        default:
            Sys.println("unknown args");
    }
}