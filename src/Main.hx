// ! -lib hxnodejs
package;

import Typer.DataType;
import haxe.Resource;
import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;
import haxe.Json;
import haxe.Template;
import Ast;
function main() {
	#if debug
	var cwd = Sys.getCwd();
	var localPath = Path.addTrailingSlash(cwd) + "examples";
	Sys.setCwd(localPath);
	var err = Sys.command("haxe --run Run.hx debug");
	if (err != 0) {
		trace("error: " + err);
		return;
	}
	var examples = File.getContent("log.txt").split("\n");
	examples.push(localPath);
	Sys.setCwd(cwd);
	init(examples);
	#else
	init(Sys.args());
	#end
}
function init(args:Array<String>) {
	var cwd = Path.normalize(Sys.getCwd());
	var localPath = args[args.length - 1];
	var outputPath = "golibs";
	//for (arg in args)
	// go4hx run here
	var httpsString = "https://";
	var argRemove:Array<String> = [];
	for (i in 0...args.length - 1) {
		var arg = args[i];
		if (arg.charAt(0) == "-") {
			if (arg == "-o" || arg == "-output" || arg == "-out") {
				outputPath = args[i + 1];
				argRemove.push(arg);
			}
			continue;
		}
		var path = arg;
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
	for (arg in argRemove)
		args.remove(arg);
	Sys.println("> parser:");
	Sys.setCwd(cwd);
	var err = Sys.command("./go4hx", args);
	if (err != 0)
		Sys.println("go4hx ERROR");
	var exportName = "export.json";
	if (!FileSystem.exists(exportName)) {
		trace('error: $exportName not found');
		return;
	}
	var exportData:DataType = Json.parse(File.getContent(exportName));
	Typer.gostdList = [for (name in FileSystem.readDirectory("stdgo")) Path.withoutExtension(name).toLowerCase()];
	Sys.println("> typer: " + exportData.pkgs.length);
	var modules = Typer.main(exportData);
	Sys.println("> generator: " + modules.length);
	Sys.setCwd(cwd);
	outputPath = Path.addTrailingSlash(outputPath);
	for (module in modules) {
		Gen.create(outputPath,module);
	}
}