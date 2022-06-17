package;

import haxe.Json;
import sys.FileSystem;
import sys.io.File;

var libs:Array<String> = [];
final path = Sys.getCwd();

function main() {
	final args = Sys.args();
	var list:Array<String> = Json.parse(File.getContent("stdgo.json")).stdgo;
	final excludes:Array<String> = Json.parse(File.getContent("excludes.json")).excludes;
	for (path in excludes)
		list.remove(path);
	if (args.indexOf("-rebuild") != -1 || args.indexOf("--rebuild") != -1) {
		// rebuild
		// trace(list);
		for (path in list) {
			shared.Util.deleteDirectoryRecursively('stdgo/$path');
		}
	}
	for (path in list) {
		var exist = false;
		if (FileSystem.exists('stdgo/$path') && FileSystem.isDirectory('stdgo/$path')) {
			exist = false;
			for (file in FileSystem.readDirectory('stdgo/$path')) {
				if (file.charCodeAt(0) == ".".code)
					continue;
				if (!FileSystem.isDirectory('stdgo/$path' + "/" + file)) {
					exist = true;
					break;
				}
			}
		}
		if (!exist)
			libs.push(path);
	}
	for (path in ["runtime/race"])
		libs.remove(path); // remove
	// libs = libs.concat(["sort"]);
	// libs = ["sort"];
	Main.setup(0, 4); // 4 processes of go4hx
	Main.onComplete = complete;
	trace(libs + " libs count: " + libs.length);
	if (libs.length == 0)
		return;
	while (true)
		update();
}

private function complete(modules:Array<Typer.Module>, _) {
	if (libs.length == 0)
		Main.close();
}

function update() {
	var externBool = false;
	Main.update();
	for (lib in libs) {
		externBool = externs.indexOf(lib) != -1;
		final args = [lib, '--nocomments', '--out', 'stdgo', '--root', 'stdgo'];
		if (externBool)
			args.push("--extern");
		args.push(path);
		final instance = Main.compileArgs(args);
		final compiled = Main.compile(instance);
		if (!compiled)
			break;
		libs.remove(lib);
	}
}

final externs = ["syscall/js", "syscall"];
