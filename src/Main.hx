// ! -lib hxnodejs
package;

import Typer.DataType;
import haxe.Resource;
import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;
import haxe.Json;
import haxe.Template;
import bson.Bson;
import Ast;
function main() {
	var cwd = Path.normalize(Sys.getCwd());
	var jsonBool:Bool = false;
	var args = Sys.args();
	var localPath = args.pop();
	var outputPath = "golibs";
	//for (arg in args)
	// go4hx run here
	var httpsString = "https://";
	var argRemove:Array<String> = [];
	for (i in 0...args.length) {
		var arg = args[i];
		if (arg.charAt(0) == "-") {
			if (arg == "-json")
				jsonBool = true;
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
	args.push(cwd); //for go to know cwd of go2hx
	Sys.println("> parser:");
	Sys.setCwd(localPath);
	var err = Sys.command("./go4hx", args);
	if (err != 0)
		Sys.println("go4hx ERROR");
	var exportName = "export." + (jsonBool ? "json" : "bson");
	if (!FileSystem.exists(exportName)) {
		trace('error: $exportName not found');
		return;
	}
	var exportData:DataType = jsonBool ? Json.parse(File.getContent(exportName)) : Bson.decode(File.getBytes(exportName));
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