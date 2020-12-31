//! -lib hxnodejs
package;

import haxe.Resource;
import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;
import haxe.Json;
import haxe.Template;
import Args.ArgHandler;

function main() {
	var help:Bool = false;
	var ping:Bool = false;
	var inputPaths:Array<String> = [];
	var format:Bool = true;
	var outputPath:String = "golibs";
	var argHandler = Args.generate([@doc("Ping test")
		_ => (path:String) -> inputPaths.push(path),
		"-ping" => () -> ping = true, @doc("Show help")
		"-help" => () -> help = true,
		@doc('Output directory default: golibs')
		["-output", "-o"] => (path:String) -> {
			outputPath = path;
		},
	]);
	try
		argHandler.parse(Sys.args())
	catch (e:String) {
		throw 'error: $e';
	}
	if (help) {
		printDoc(argHandler);
		return;
	}
	if (ping) {
		Sys.println("Pong!");
		return;
	}
	if (inputPaths.length == 0) {
		Sys.println("go2hx golang to haxe transpiler\n" + "Usage:\n" + "    go2hx [src or main.go]");
		return;
	}
	//go4hx run here
	Sys.println("cwd: " + Sys.getCwd());
	var ext = gen.Res.ext;
	Sys.println("unpackaging go4hx...");
	File.saveBytes('go4hx$ext',haxe.zip.Uncompress.run(Resource.getBytes("go4hx")));
	Sys.println("running go4hx:");
	Sys.command("./go4hx",inputPaths);
	FileSystem.deleteFile('go4hx$ext');
	var gopath = Sys.getEnv("GOPATH");
	Sys.println('Setting GOPATH($gopath) to local');
	Sys.putEnv("GOPATH",Sys.getCwd());
	for (i in 0...outputPath.length) {
		
	}
	Sys.println("running go2hx's Parser");
	new Parser(outputPath, true);
}

function printDoc(argHandler:ArgHandler) {
	for (option in argHandler.options) {
		if (option.doc == null)
			continue;
		Sys.println(option.flags.join(", ") + " " + option.args.map(a -> '{${a.opt ? '?' : ''}${a.name}}').join(', '));
	}
}
