package;

import haxe.Json;
import sys.FileSystem;
import sys.io.File;

var libs:Array<String> = [];
final path = Sys.getCwd();

function main() {
	final args = Sys.args();
	var list:Array<String> = Json.parse(File.getContent("tests.json")).tests;
	final excludes:Array<String> = Json.parse(File.getContent("excludes.json")).excludes;
	for (path in excludes)
		list.remove(path);
	final rebuild = args.indexOf("-rebuild") != -1 || args.indexOf("--rebuild") != -1;
	for (data in list) {
		libs.push(data.split("-")[0]);
	}
	trace(libs);
	Main.setup(0, 2); // amount of processes to spawn
	Main.onComplete = complete;
	if (libs.length == 0)
		return;
	#if !js
	while (true)
		update();
	#else
	final timer = new haxe.Timer(500);
	timer.run = () -> update();
	#end
}

private function complete(modules:Array<Typer.Module>, _) {
	#if js
	update();
	#end
	if (libs.length == 0)
		Main.close();
}

function update() {
	var externBool = false;
	#if !js
	Main.update();
	#end
	for (lib in libs) {
		externBool = externs.indexOf(lib) != -1;
		final args = [lib, '--nocomments', '--out', 'stdgo', '--root', 'stdgo'];
		if (externBool)
			args.push("--extern");
		args.push(path);
		final instance = Main.compileArgs(args);
		final compiled = Main.compile(instance);
		if (!compiled) {
			#if !js
			break;
			#else
			update();
			return;
			#end
		}
		libs.remove(lib);
	}
}

final externs = ["syscall/js", "syscall", "os"];
