import Go.ErrorReturn;
import sys.io.File as Base;
import sys.FileSystem;

class Os {
	public static var args = Sys.args();

	public static inline function mkdir(path:String, ?perm:Int) {
		FileSystem.createDirectory(path);
	}

	public static inline function create(path:String):ErrorReturn<File> {
		return {value: null};
	}

	public static inline function exit(code:Int) {
		Sys.exit(code);
	}

	public static inline function removeAll(path:String) {
		if (sys.FileSystem.exists(path) && sys.FileSystem.isDirectory(path)) {
			var entries = sys.FileSystem.readDirectory(path);
			for (entry in entries) {
				if (sys.FileSystem.isDirectory(path + '/' + entry)) {
					removeAll(path + '/' + entry);
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
