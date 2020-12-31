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
	var args = Sys.args();
	var cwd = Sys.getCwd();
	Sys.println('cwd: $cwd');
	var localPath = args.length > 1 ? args.pop() : cwd;
	try
		argHandler.parse(args)
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
	var gopath = Sys.getEnv("GOPATH");
	Sys.println('Setting GOPATH($gopath) to local: $localPath/gopath');
	Sys.putEnv("GOPATH",localPath + "/gopath");
	var httpsString = "https://";
	//Sys.putEnv("GODEBUG","modcacheunzipinplace=1");
	for (i in 0...inputPaths.length) {
		var path = inputPaths[i];
		if (StringTools.startsWith(path,httpsString))
			path = path.substr(httpsString.length);
		if (Path.extension(path) == "go")
			continue;
		if (path.charAt(0) == ".")
			continue;
		if (path.indexOf("/") == -1)
			continue;
		var command = 'go get -u $path';
		Sys.command(command);
	}
	Sys.println("running go4hx:");
	Sys.command("./go4hx",inputPaths);
	Sys.println('Setting back GOPATH');
	Sys.putEnv("GOPATH",gopath);
	if (!FileSystem.exists("export.bson")) {
		trace("export.bson not found");
		return;
	}
	var exportBytes = File.getBytes("export.bson");
	FileSystem.deleteFile("export.bson");
	Sys.setCwd(localPath);
	Sys.println("running go2hx's Parser");
	new Parser(outputPath, exportBytes,true);
}

function printDoc(argHandler:ArgHandler) {
	for (option in argHandler.options) {
		if (option.doc == null)
			continue;
		Sys.println(option.flags.join(", ") + " " + option.args.map(a -> '{${a.opt ? '?' : ''}${a.name}}').join(', '));
	}
}
