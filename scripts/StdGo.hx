package;

import haxe.macro.Compiler;
import haxe.Json;
import sys.FileSystem;
import sys.io.File;

var libs:Array<String> = [];
final path = Sys.getCwd();
var libCount = 0;

function main() {
	var list:Array<String> = File.getContent("data/stdgo.list").split("\n");
	final excludes:Array<String> = Json.parse(File.getContent("data/excludes.json"));
	final testList:Array<String> = Json.parse(File.getContent("data/tests.json"));
	for (pkg in list) {
		if (!noMain.contains(pkg))
			noMain.push(pkg);
	}
	for (test in testList) {
		noMain.remove(test);
	}
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
	// dot to slashes format: crypto.internal.boring -> crypto/internal/boring
	for (i in 0...libs.length) {
		libs[i] = StringTools.replace(libs[i], ".", "/");
	}
	for (path in excludes)
		list.remove(path);
	trace(libs);
	libCount = libs.length;
	final runnerCount = Compiler.getDefine("runnerCount") ?? "2";
	Main.setup(new Main.InstanceData(), Std.parseInt(runnerCount)); // amount of processes to spawn
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
		try {
			compiled = Main.compile(instance);
		}catch(e) {
			trace(lib);
			throw e.details();
		}
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
	"go/internal/gccgoimporter",
	"go/internal/typeparams",
	"go/scanner",
	"crypto/internal/randutil",
	"internal/types/errors",
	"internal/saferio",
	"crypto",
	"internal/godebug",
	"internal/abi",
	"syscall",
	"syscall/js",
	"internal/godebugs",
	"log/internal",
	"internal/bisect",
	"context",
	"internal/platform",
	"internal/race",
	"image/color/palette",
];