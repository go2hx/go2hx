package;

import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;
import haxe.Json;
import haxe.Template;
import hxargs.Args;

class Main {
	static function main() {
		trace("init!");
		init();
	}

	static function init() {
		var help:Bool = false;
		var ping:Bool = false;
		var inputPaths:Array<String> = [];
		var format:Bool = false;
		var outputPath:String = "";
		var argHandler = Args.generate([@doc("Ping test")
			"-ping" => () -> ping = true, @doc("Show help")
			"-help" => () -> help = true,
			@doc("Output directory for the transpiled Go code into Haxe")
			["-output", "-o"] => (path:String) -> {
				// outputPath = path;
			},
			@doc("Use formatter library to format the transpiled go to haxe code")
			["-format", "-formatted", "-f"] => () -> format = true,
			_ => (path:String) -> {
				if (path.charAt(0) == "-")
					throw 'Unknown argument "$path"';
				// inputPaths.push(path);
				outputPath = path;
			}
		]);
		try
			argHandler.parse(Sys.args())
		catch (e:String) {
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
		new Parser(outputPath, true);
		// Sys.println("go2hx golang to haxe transpiler\n" + "Usage:\n" + "    go2hx src -output bin");
	}

	static function printDoc(argHandler:ArgHandler) {
		for (option in argHandler.options) {
			if (option.doc == null)
				continue;
			Sys.println(option.flags.join(", ") + " " + option.args.map(a -> '{${a.opt ? '?' : ''}${a.name}}').join(', '));
		}
	}
}
