// ! -lib hxnodejs
package;

import Gen.create;
import Typer.DataType;
import haxe.Resource;
import sys.FileSystem;
import haxe.io.Path;
import sys.io.File;
import haxe.Json;
import stdgo.StdGoTypes;

final cwd = Sys.getCwd();
var exportPaths:Array<String> = [];
var exportBool:Bool = false;
var target:String = "";
var targetFolder:Bool = false;

function main() {
	init(Sys.args());
}

function init(args:Array<String>) {
	var argsCount = 0;

	var outputPath = "golibs";
	var global = false;
	var addOutput = false;
	var printGoCode = false;

	for (arg in args) {
		if (addOutput) {
			outputPath = arg;
			args.remove(arg);
			addOutput = false;
		}
		if (arg.charAt(0) != "-") {// check if flag
			argsCount++;
		}else{
			var remove = true;
			switch arg.substr(1).toLowerCase() {
				case "global", "g": global = true;
				case "o", "out", "output": addOutput = true;
				case "printgocode": printGoCode = true;
				//targets
				case "cpp","c++": target = "cpp"; targetFolder = true;
				case "cs", "c#": target = "cs"; targetFolder = true;
				case "java", "jvm": target = "jvm";
				case "py", "python": target = "python";
				case "lua": target = "lua";
				case "js", "javascript": target = "js";
				case "hl", "hashlink": target = "hl";
				case "eval", "interp": target = "interp";
				default: remove = false;
			}
			if (remove)
				args.remove(arg);
		}
	}
	if (argsCount <= 1)
		args.push(cwd);
	var localPath = args[args.length - 1];
	// for (arg in args)
	// go4hx run here
	var httpsString = "https://";
	for (i in 0...args.length - 1) {
		var path = args[i];
		if (StringTools.startsWith(path, httpsString)) {
			path = path.substr(httpsString.length);
			args[i] = path;
		}
		if (Path.extension(path) == "go" || path.charAt(0) == "." || path.indexOf("/") == -1)
			continue;
		var command = 'go get -u $path';
		Sys.command(command);
	}
	Sys.println("> parser:");
	Sys.setCwd(cwd);
	var haxerc = ".haxerc";
	var haxercContent = File.getContent(haxerc);
	//Sys.println('./go4hx ${args.join(" ")}');
	var err = Sys.command("./go4hx", args);
	if (err != 0) {
		Sys.println("go4hx ERROR");
		return;
	}
	var exportName = "export.json";
	if (!FileSystem.exists(exportName)) {
		Sys.println("Usage of go2hx:");
		Sys.println("    -output");
		Sys.println("        transpile out code to directory or file location");
		Sys.println("    -printGoCode");
		Sys.println("        print out go code in code comments");
		Sys.println("    -global");
		Sys.println("        all go packages except main are turned into global haxelib dev libs");
		Sys.println("Targets:");
		Sys.println("    -cpp");
		Sys.println("        target c++");
		Sys.println("    -js");
		Sys.println("        target javascript");
		Sys.println("    -java");
		Sys.println("        target java");
		Sys.println("    -cs");
		Sys.println("        target c#");
		Sys.println("    -lua");
		Sys.println("        target lua");
		Sys.println("    -python");
		Sys.println("        target python");
		Sys.println("    -interp");
		Sys.println("        target Haxe interpreted target");
		Sys.println("    -hl");
		Sys.println("        target Hashlink virtual machine");
		return;
	}
	var exportData:DataType = Json.parse(File.getContent(exportName));
	Typer.excludes = Json.parse(File.getContent("./excludes.json")).excludes;
	Typer.stdgoList = Json.parse(File.getContent("./stdgo.json")).stdgo;
	Sys.println("> typer: " + exportData.pkgs.length);
	var modules = Typer.main(exportData,printGoCode);
	Sys.println("> generator: " + modules.length);
	Sys.setCwd(localPath);
	outputPath = Path.addTrailingSlash(outputPath);
	var libs:Array<String> = [];
	for (module in modules) {
		if (global && !module.isMain) {
			Sys.setCwd(cwd);
			var name = module.name;
			var libPath = "libs/" + name + "/";
			create(libPath,module);
			Sys.setCwd(localPath);
			Sys.command('haxelib dev $name $libPath');
			if (libs.indexOf(name) == -1)
				libs.push(name);
		}else{
			Gen.create(outputPath, module);
		}
	}
	if (target != "") {
		if (!FileSystem.exists(haxerc))
			File.saveContent(haxerc,haxercContent);
		if (!FileSystem.exists(target + ".hxml"))
			File.saveContent(target + ".hxml","

			");
	}
	if (exportBool) {
		exportPaths = [];
		for (module in modules) {
			if (module.isMain) {
				for (file in module.files) {
					exportPaths.push(module.path + "/" + file.name);
				}
			}
		}
	}
}
