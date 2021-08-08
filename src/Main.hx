// ! -lib hxnodejs
package;

import Gen.create;
import Typer.DataType;
import haxe.Json;
import haxe.Resource;
import haxe.io.Path;
import stdgo.StdGoTypes;
import sys.FileSystem;
import sys.io.File;

final cwd = Sys.getCwd();
var exportBool:Bool = false;
var target:String = "";
var targetFolder:Bool = false;
var completionPort = "";

function main() {
	init(Sys.args());
}

function init(args:Array<String>):Array<Typer.Module> {
	var argsCount = 0;
	var outputPath = "golibs";
	var global = false;
	var printGoCode = false;
	var localpath = false;
	var addConnect = false;
	var addOutput = false;
	var removal:Array<String> = [];
	for (arg in args) {
		if (addConnect) {
			completionPort = arg;
			removal.push(arg);
			addConnect = false;
		}
		if (addOutput) {
			outputPath = arg;
			removal.push(arg);
			addOutput = false;
		}
		if (arg.charAt(0) != "-") { // check if flag
			argsCount++;
		} else {
			var remove = true;
			if (arg.charAt(1) == "-")
				arg = arg.substr(1);
			switch arg.substr(1).toLowerCase() {
				case "global", "g":
					global = true;
				case "o", "out", "output":
					addOutput = true;
				case "connect", "port", "wait":
					addConnect = true;
				case "printgocode":
					printGoCode = true;
				// targets
				case "cpp", "c++":
					target = "cpp";
					targetFolder = true;
				case "cs", "c#":
					target = "cs";
					targetFolder = true;
				case "rebuild":
				case "java", "jvm":
					target = "jvm";
				case "py", "python":
					target = "python";
				case "lua":
					target = "lua";
				case "js", "javascript":
					target = "js";
				case "hl", "hashlink":
					target = "hl";
				case "eval", "interp":
					target = "interp";
				case "localpath":
					localpath = true;
				case "color":
					Util.colorSupported = true;
				case "nocolor":
					Util.colorSupported = false;
				default:
					remove = false;
			}
			if (remove) {
				removal.push(arg);
			}
		}
	}
	for (arg in removal)
		args.remove(arg);

	if (localpath)
		args.pop();

	if (argsCount <= 1)
		args.push(cwd);
	var localPath = args[args.length - 1];

	if (args.length == 1) {
		Repl.init();
		return [];
	}
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
	Sys.setCwd(cwd);

	var err = Sys.command((Util.systemName == "Windows" ? "" : "./") + "go4hx", args);
	if (err != 0) {
		Sys.println("go4hx ERROR");
		return [];
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
		return [];
	}
	var exportData:DataType = Json.parse(File.getContent(exportName));
	Typer.excludes = Json.parse(File.getContent("./excludes.json")).excludes;
	Typer.stdgoList = Json.parse(File.getContent("./stdgo.json")).stdgo;

	var modules = Typer.main(exportData, printGoCode);

	Sys.setCwd(localPath);
	outputPath = Path.addTrailingSlash(outputPath);
	var libs:Array<String> = [];
	for (module in modules) {
		if (global && !module.isMain) {
			Sys.setCwd(cwd);
			var name = module.name;
			var libPath = "libs/" + name + "/";
			create(libPath, module);
			Sys.setCwd(localPath);
			Sys.command('haxelib dev $name $libPath');
			if (libs.indexOf(name) == -1)
				libs.push(name);
		} else {
			Gen.create(outputPath, module);
		}
	}
	if (target != "") {
		/*
			if (!FileSystem.exists(target + ".hxml"))
				File.saveContent(target + ".hxml", ""); */
	}
	return modules;
}
