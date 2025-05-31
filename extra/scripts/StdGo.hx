package;

import haxe.macro.Compiler as MacroCompiler;
import haxe.Json;
import sys.FileSystem;
import sys.io.File;

var libs:Array<String> = [];
final path = Sys.getCwd();

function main() {
	var list:Array<String> = File.getContent("data/stdgo.list").split("\n");
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
	trace(libs);

	final args = libs;
	if (MacroCompiler.getDefine("_hl") != null) {
		args.push("-compiler_hl");
	} else {
		args.push("-compiler_cpp");
	}
	if (haxe.macro.Compiler.getDefine("rebuild") != null)
		args.push("--rebuild");
	if (haxe.macro.Compiler.getDefine("nogo4hx") != null)
		args.push("-nogo4hx");
	args.push(cwd);
	Sys.exit(Sys.command("haxe --run Run -nocache " + args.join(" ")));
}

var compiled:Bool = false;
var args:Array<String> = [];

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
