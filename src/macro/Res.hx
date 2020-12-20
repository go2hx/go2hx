package macro;

import haxe.Resource;
import haxe.macro.Context;
import sys.FileSystem;
import haxe.io.Bytes;
import sys.io.File;

using haxe.io.Path;

class Res {
	#if macro
	public static function gen() {
		readDir("std");
	}

	public static function readDir(path:String) {
		path = Path.addTrailingSlash(path);
		if (FileSystem.exists(path) && FileSystem.isDirectory(path)) {
			var dir = FileSystem.readDirectory(path);
			for (name in dir) {
				if (name.substring(0, 1) == ".")
					continue; // skip git

				if (FileSystem.isDirectory(path + name)) {
					readDir(path + name);
				} else {
					var className = path.substr(4) + name.withoutExtension();
					Context.addResource(className, File.getBytes(path + name));
				}
			}
		}
	}
	#end
}
