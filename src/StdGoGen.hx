package;

import haxe.Json;
import sys.FileSystem;
import sys.io.File;

function main() {
	var list:Array<String> = Json.parse(File.getContent("stdgo.json")).stdgo;
	final excludes:Array<String> = Json.parse(File.getContent("excludes.json")).excludes;
	for (path in excludes)
		list.remove(path);
	var libs:Array<String> = [];
	for (path in list) {
		var exist = false;
		if (FileSystem.exists("stdgo/" + path) && FileSystem.isDirectory("stdgo/" + path)) {
			exist = false;
			for (file in FileSystem.readDirectory("stdgo/" + path)) {
				if (file.charCodeAt(0) == ".".code)
					continue;
				if (!FileSystem.isDirectory("stdgo/" + path + "/" + file)) {
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
	//libs = libs.concat(["syscall", "syscall/js"]);
	trace(libs);
	final externBool = !false;
	trace("libs count: " + libs.length);
	for (lib in libs)
		Sys.command('haxelib run go2hx $lib --out stdgo --root stdgo' + (externBool ? " --extern" : ""));
}
