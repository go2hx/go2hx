import Pointer.PointerWrapper;
import Go.ErrorReturn;
import sys.io.File as Base;
import sys.FileSystem;

class Os {
	public static var args = Sys.args();
	public static var stderr:Io.Writer;

	public static inline function mkdir(path:String, ?perm:Int) {
		FileSystem.createDirectory(path);
	}

	public static inline function create(path:String):ErrorReturn<Pointer<Pointer.PointerWrapper<File>>> {
		return {value: new Pointer(new PointerWrapper(null))};
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
