package;

import haxe.macro.Compiler;
import haxe.Json;
import sys.FileSystem;
import sys.io.File;

var libs:Array<String> = [];
final path = Sys.getCwd();
var libCount = 0;

function main() {
	var list:Array<String> = Json.parse(File.getContent("tests.json"));
	final excludes:Array<String> = Json.parse(File.getContent("excludes.json"));
	for (path in excludes)
		list.remove(path);
	for (data in list) {
		libs.push(data.split("-")[0]);
	}
	final defineLib = Compiler.getDefine("lib");
	if (defineLib != null) {
		libs = [defineLib];
	}
	final defineLibs = Compiler.getDefine("libs");
	if (defineLibs != null) {
		libs = defineLibs.split(",");
	}
	trace(libs);
	libCount = libs.length;
	Main.setup(0, 1); // amount of processes to spawn
	Main.onComplete = complete;
	if (libs.length == 0)
		return;
	#if !js
	while (true)
		update();
	#else
	final timer = new haxe.Timer(500);
	timer.run = update;
	#end
}

private function complete(modules:Array<Typer.Module>, _) {
	if (--libCount <= 0)
		Main.close();
}

var instance:Main.InstanceData = null;
var compiled:Bool = false;
var args:Array<String> = [];
var hxml = "";
var varTraceBool = Compiler.getDefine("vartrace") != null;
var stackBool = Compiler.getDefine("stack") != null;
var releaseBool = Compiler.getDefine("release") != null;
var debugBool = Compiler.getDefine("cdebug") != null;

function update() {
	#if !js
	Main.update();
	#end
	for (lib in libs) {
		hxml = "stdgo/" + sanatize(lib);
		args = [lib, '--nocomments', '--out', '.', '--norun'];
		if (varTraceBool)
			args.push("--vartrace");
		if (stackBool)
			args.push("--stack");
		if (noMain.indexOf(lib) == -1 && !releaseBool) {
			args.push('--hxml');
			args.push(hxml);
			args.push('--test');
		}
		if (debugBool)
			args.push("-debug");
		args.push(path);
		instance = Main.compileArgs(args);
		compiled = Main.compile(instance);
		instance = null;
		if (!compiled) {
			break;
		}
		libs.remove(lib);
	}
}

private function sanatize(s:String):String {
	s = StringTools.replace(s, "/", "_");
	return s;
}

final noMain = [
	"testing/internal/testdeps",
	"runtime",
	"runtime/debug",
	"internal/poll",
	"internal/syscall/unix",
	"internal/oserror",
	"encoding",
	"internal/testenv",
	"reflect",
	"internal/bytealg",
	"internal/cpu",
	"internal/types/errors",
	"internal/godebug",
	"internal/abi",
	"syscall",
	"syscall/js",
	"internal/godebugs",
	"log/internal",
	"internal/bisect",
	"context",
];