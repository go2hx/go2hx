package go2hx;
import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;
import haxe.Json;
import haxe.Template;
import go2hx.hxargs.Args;
class Main {
    static function main() {
        #if debug
        //trace("go run packages.go");Sys.command("go run packages.go github.com/pxshadow/go2hx/examples/helloworld/");
        new Parser();
        #else
        init();
        #end
        
    }
    static function init() {
        var help:Bool = false;
        var ping:Bool = false;
        var inputPaths:Array<String> = [];
        var outputPath:String = "bin";
        var argHandler = Args.generate([
            @doc("Ping test")
            "-ping" => () -> ping = true,

            @doc("Show help")
            "-help" => () -> help = true,
            @doc("Output directory for the transpiled Go code into Haxe")
            ["-output","-o"] => (path:String) -> {
                outputPath = path;
            },
            _ => (arg:String) -> {
                if (arg.charAt(0) == "-")
                    throw 'Unknown argument "$arg"';
                inputPaths.push(arg);
            }
        ]);
        try argHandler.parse(Sys.args()) catch (e:String) {
            throw('error: $e');
        }
        if (help) {
            printDoc(argHandler);
            return;
        }
        if (ping) {
            Sys.println("Pong!");
            return;
        }
        if (inputPaths.length > 0) {
            trace("main");
            return;
        }
        Sys.println(
            "go2hx golang to haxe transpiler\n" + 
            "Usage:\n" + 
            "    go2hx src -output bin"
        );
    }
    static function printDoc(argHandler:ArgHandler) {
        for (option in argHandler.options) {
            if (option.doc == null)
                continue;
            Sys.println(option.flags.join(", ") + " " + option.args.map(a -> '{${a.opt?'?':''}${a.name}}').join(', '));
        }
    }
}
