package std;

import std.Go.ErrorReturn;
import sys.io.File as Base;
import sys.FileSystem;

class Os {
	public static var Args = Sys.args();

	public static inline function Mkdir(path:String, ?perm:Int) {
		FileSystem.createDirectory(path);
	}

	public static inline function Create(path:String):ErrorReturn<File> {
		return {value: null};
	}

	public static inline function Exit(code:Int) {
		Sys.exit(code);
	}

	public static inline function RemoveAll(path:String) {
		if (sys.FileSystem.exists(path) && sys.FileSystem.isDirectory(path)) {
			var entries = sys.FileSystem.readDirectory(path);
			for (entry in entries) {
				if (sys.FileSystem.isDirectory(path + '/' + entry)) {
					RemoveAll(path + '/' + entry);
					sys.FileSystem.deleteDirectory(path + '/' + entry);
				} else {
					sys.FileSystem.deleteFile(path + '/' + entry);
				}
			}
		}
	}
}

class File {
	public function new() {}
}
