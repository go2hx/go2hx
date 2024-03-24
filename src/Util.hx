package src;

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
	throw "unable to create: " + o;
}

final systemName = #if !js Sys.systemName(); #else "js"; #end
final isTestAction = #if js null; #else Sys.getEnv("GITHUB_WORKSPACE") != null; #end
var colorSupported = (systemName == "Linux" || systemName == "Mac" || systemName == "Windows") ? true : isTestAction;

function toExpr(def:ExprDef):Expr {
	return {expr: def, pos: null};
}

function successMsg(msg:String):Void {
	#if !js Sys.println(colorSupported ? '\x1b[32m' + msg + '\x1b[0m' : msg); #end
}

function failMsg(msg:String):Void {
	#if !js Sys.println(colorSupported ? '\x1b[31m' + msg + '\x1b[0m' : msg); #end
}

function infoMsg(msg:String):Void {
	#if !js Sys.println(colorSupported ? '\x1b[36m' + msg + '\x1b[0m' : msg); #end
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
	return "_internal." + path;
}

function kbCount(str:String):Float {
	return str.length / 1000;
}

function deleteDirectoryRecursively(dir:String):Int {
	return switch (systemName) {
		case "Windows":
			#if !js Sys.command("rmdir /s /q " + dir); #else 0; #end
		default:
			#if !js
			Sys.command("rm -rf " + dir);
			#else
			0;
			#end
	}
}

function copyDirectoryRecursively(from:String, to:String):Int {
	return switch (systemName) {
		case "Windows":
			#if !js Sys.command("xcopy /E /I " + from + " " + to); #else 0; #end
		default:
			#if !js Sys.command("cp -r " + from + " " + to); #else 0; #end
	}
}

function getHaxelibPath(libName:String) {
	#if !js
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
	#end
	return null;
}
