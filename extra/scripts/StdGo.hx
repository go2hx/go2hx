package;

import haxe.macro.Compiler as MacroCompiler;
import haxe.Json;
import sys.FileSystem;
import sys.io.File;

var libs:Array<String> = [];
final cwd = Sys.getCwd();

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
	final defineLib = MacroCompiler.getDefine("lib");
	if (defineLib != null) {
		libs = [defineLib];
	}
	final defineLibs = MacroCompiler.getDefine("libs");
	if (defineLibs != null) {
		libs = defineLibs.split(",");
	}
	// dot to slashes format: crypto.internal.boring -> crypto/internal/boring
	for (i in 0...libs.length) {
		libs[i] = StringTools.replace(libs[i], ".", "/");
	}
	for (path in excludes)
		libs.remove(path);
	trace(libs);
	
	final args = libs.concat(['--nocomments', '--norun']);
	if (varTraceBool)
		args.push("--vartrace");
	if (stackBool)
		args.push("--stack");
	if (!releaseBool) {
		args.push('--test');
	}
	args.push("-compiler_hl");
	args.push(cwd);
	Sys.command("haxe --run Run " + args.join(" "));
}

var compiled:Bool = false;
var args:Array<String> = [];
var hxml = "";
var varTraceBool = MacroCompiler.getDefine("vartrace") != null;
var stackBool = MacroCompiler.getDefine("stack") != null;
var releaseBool = MacroCompiler.getDefine("release") != null;

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
