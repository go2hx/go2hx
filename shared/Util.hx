package shared;

import haxe.Timer;
import haxe.macro.Expr;

using StringTools;

function makeExpr(o:Dynamic):Expr {
	if ((o is String))
		return toExpr(EConst(CString(o)));
	if ((o is Int))
		return toExpr(EConst(CInt(Std.string(o))));
	var t = Type.typeof(o);
	switch t {
		case TEnum(e):
			e.getName();
		default:
	}
	throw "unable to create";
}

final systemName = Sys.systemName();
final isTestAction = Sys.getEnv("GITHUB_WORKSPACE") != null;
var colorSupported = (systemName == "Linux" || systemName == "Mac" || systemName == "Windows") ? true : isTestAction;

function toExpr(def:ExprDef):Expr {
	return {expr: def, pos: null};
}

function successMsg(msg:String):Void {
	Sys.println(colorSupported ? '\x1b[32m' + msg + '\x1b[0m' : msg);
}

function failMsg(msg:String):Void {
	Sys.println(colorSupported ? '\x1b[31m' + msg + '\x1b[0m' : msg);
}

function infoMsg(msg:String):Void {
	Sys.println(colorSupported ? '\x1b[36m' + msg + '\x1b[0m' : msg);
}

// Typer.Module
function mainPath(modules:Array<Dynamic>):String {
	var path = "";
	for (module in modules) {
		if (!module.isMain || !module.files[0].isMain)
			continue;
		path = module.path;
		var name = module.files[0].name;
		if (path != "")
			path += ".";
		path += name;
	}
	return path;
}

function kbCount(str:String):Float {
	return str.length / 1000;
}

function haxelibInstallGit(account:String, repository:String, ?branch:String, ?srcPath:String, useRetry:Bool = false, ?altName:String):Void {
	var name:String = (altName == null) ? repository : altName;
	try {
		getHaxelibPath(name);
	} catch (e:Dynamic) {
		var args:Array<String> = ["git", name, 'https://github.com/$account/$repository'];
		if (branch != null) {
			args.push(branch);
		}
		if (srcPath != null) {
			args.push(srcPath);
		}

		runCommand("haxelib", args, useRetry);
	}
}

function commandSucceed(cmd:String, args:Array<String>):Bool {
	return try {
		var p = new sys.io.Process(cmd, args);
		var succeed = p.exitCode() == 0;
		p.close();
		succeed;
	} catch (e:Dynamic) false;
}

function runCommand(cmd:String, ?args:Array<String>, useRetry:Bool = false, allowFailure:Bool = false):Void {
	var trials = useRetry ? 3 : 1;
	var exitCode:Int = 1;
	var cmdStr = cmd + (args == null ? '' : ' $args');

	while (trials-- > 0) {
		infoMsg('Command: $cmdStr');

		var t = Timer.stamp();
		exitCode = Sys.command(cmd, args);
		var dt = Math.round(Timer.stamp() - t);

		if (exitCode == 0) {
			successMsg('Command exited with $exitCode in ${dt}s: $cmdStr');
			return;
		} else
			failMsg('Command exited with $exitCode in ${dt}s: $cmdStr');

		if (trials > 0) {
			infoMsg('Command will be re-run...');
		}
	}

	if (!allowFailure)
		throw "fail command";
}

function haxelibInstall(library:String):Void {
	try {
		getHaxelibPath(library);
	} catch (e:Dynamic) {
		runCommand("haxelib", ["install", library]);
	}
}

function deleteDirectoryRecursively(dir:String):Int {
	return switch (Sys.systemName()) {
		case "Windows":
			Sys.command("rmdir /s /q " + dir);
		case _:
			Sys.command("rm -rf " + dir);
	}
}

function getHaxelibPath(libName:String) {
	var proc = new sys.io.Process("haxelib", ["path", libName]);
	var result;
	var code = proc.exitCode();
	do {
		result = proc.stdout.readLine();
		if (!result.startsWith("-L")) {
			break;
		}
	} while (true);
	proc.close();
	if (code != 0) {
		throw 'Failed to get haxelib path ($result)';
	}
	return result;
}
