// ! -lib hxnodejs
package;

import Typer.DataType;
import haxe.Resource;
import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;
import haxe.Json;
import haxe.Template;
import Args.ArgHandler;
import bson.Bson;
import Ast;

function main() {
	var jsonBool:Bool = false;
	var helpBool:Bool = false;
	var pingBool:Bool = false;
	var testBool:Bool = false;
	var inputPaths:Array<String> = [];
	var configPath:String = "";
	var outputPath:String = "golibs";
	var argCount:Int = 0;
	var argHandler = Args.generate([@doc("Ping test")
		_ => (path:String) -> inputPaths.push(path),
		"-test" => () -> {
			testBool = true;
			argCount++;
		}, @doc("Enable testing")
		"-ping" => () -> {
			pingBool = true;
			argCount++;
		}, @doc("Show help")
		"-help" => () -> {
			helpBool = true;
			argCount++;
		},
		"-config" => (path:String) -> {
			configPath = path;
			argCount++;
		},
		"-json" => () -> {
			jsonBool = true;
			argCount++;
		},
		@doc('Output directory default: golibs')
		["-output", "-o"] => (path:String) -> {
			outputPath = path;
			argCount++;
		},
	]);
	var args = Sys.args();
	var cwd = Sys.getCwd();
	try {
		argHandler.parse(args);
	} catch (e:String) {
		throw 'error: $e';
	}
	var localPath = args.length > 1 + argCount ? args.pop() : cwd;
	if (helpBool) {
		printDoc(argHandler);
		return;
	}
	if (pingBool) {
		Sys.println("Pong!");
		return;
	}
	if (inputPaths.length == 0) {
		Sys.println("go2hx golang to haxe transpiler\n" + "Usage:\n" + "    go2hx [src or main.go]");
		return;
	}
	// go4hx run here
	var httpsString = "https://";
	for (i in 0...inputPaths.length) {
		var path = inputPaths[i];
		if (StringTools.startsWith(path, httpsString))
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
	Sys.println("> parser: " + inputPaths.length);
	if (testBool)
		inputPaths.unshift("-test");
	if (jsonBool)
		inputPaths.unshift("-json");
	var err = Sys.command("./go4hx", inputPaths);
	if (err != 0)
		Sys.println("go4hx ERROR");
	var exportName = "export." + (jsonBool ? "json" : "bson");
	if (!FileSystem.exists(exportName)) {
		trace('error: $exportName not found');
		return;
	}
	var exportData:DataType = jsonBool ? Json.parse(File.getContent(exportName)) : Bson.decode(File.getBytes(exportName));
	//FileSystem.deleteFile(exportName);
	var localBool = localPath == cwd;
	Sys.setCwd(localPath);
	Sys.println("> typer: " + exportData.pkgs.length);
	var modules = Typer.main(exportData);
	Sys.println("> post processer: " + modules.length);
	for (module in modules) {
		PostProcess.run(module);
	}
	Sys.println("> generator: " + modules.length);
	outputPath = Path.addTrailingSlash(outputPath);
	for (module in modules) {
		Gen.create(outputPath,module);
	}
	/*if (configPath != "") {
		Sys.println("> config generator:");
		//create a config with lix scope create, go2hx as a library and the build.hxml with --next for each
		var args:Array<String> = [];
		for (module in modules) {

		}
	}*/
}

function printDoc(argHandler:ArgHandler) {
	for (option in argHandler.options) {
		if (option.doc == null)
			continue;
		Sys.println(option.flags.join(", ") + " " + option.args.map(a -> '{${a.opt ? '?' : ''}${a.name}}').join(', '));
	}
}