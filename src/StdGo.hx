package;

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
	//libs = ["internal/fmtsort","fmt","internal/cpu"];
	//libs = ["fmt","reflect","strconv"];
	//libs = ["errors","reflect","fmt"];
	//libs = ["internal/types/errors","go/ast"];
	//libs = ["errors","reflect","strconv"];
	// libs = ["go/types"];
	//libs = ["reflect","sync/atomic"];
	//libs = ["sync","fmt","os","strconv","math/bits","errors"];
	//libs = ["fmt", "internal/fmtsort","reflect"];
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
	// update();
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
var externBool = false;
var exportBool = false;
var varTraceBool = false;

function update() {
	#if !js
	Main.update();
	#end
	for (lib in libs) {
		externBool = externs.indexOf(lib) != -1;
		exportBool = exports.indexOf(lib) != -1;
		hxml = "stdgo/" + sanatize(lib);
		args = [lib, '--nocomments', '--out', 'stdgo', '--root', 'stdgo', '--norun'];
		if (varTraceBool)
			args.push("--vartrace");
		if (externBool)
			args.push("--extern");
		if (exportBool)
			args.push("--export");
		if (noMain.indexOf(lib) == -1) {
			args.push('--hxml');
			args.push(hxml);
			args.push('--test');
		}
		args.push(path);
		instance = Main.compileArgs(args);
		compiled = Main.compile(instance);
		instance = null;
		if (!compiled) {
			break;
		}
		trace(hxml);
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
	"internal/oserror",
	"encoding",
	"internal/testenv",
	"reflect",
	"internal/bytealg",
	"internal/cpu",
	"internal/types/errors",
];

final externs = [
	"syscall/js", "syscall", "os", "os/exec", "context", "testing", "testing/iotest", "testing/fstest", "testing/internal/testdeps",
	"regexp/syntax", "regexp", "runtime", "runtime/debug", "reflect", "sync", "sync/atomic",
];

final exports = ["runtime", "runtime/debug", "reflect"];
