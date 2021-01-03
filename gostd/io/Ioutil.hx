package gostd.io;

import haxe.io.Path;
import Os.FileInfo;
import sys.FileSystem;
import Go.ErrorReturn;
import sys.io.File;
import haxe.io.Bytes;

class Ioutil {
	public static function readAll(r:io.Reader) {}

	public static function readFile(filename:String) {}

	public static function writeFile(filename:String, data:Bytes, ?perm:Os.FileMode):Errors {
		try {
			File.saveBytes(filename, data);
			return null;
		} catch (e) {
			return cast e;
		}
	}

	public static function readDir(dirname:String):ErrorReturn<Array<FileInfo>> {
		dirname = Path.addTrailingSlash(dirname);
		try {
			var array:Array<FileInfo> = [];
			for (path in FileSystem.readDirectory(dirname)) {
				array.push(new FileInfo(Path.withoutDirectory(path), FileSystem.stat(dirname + path)));
			}
			return {value: array};
		} catch (e) {
			return {value: null, error: cast e};
		}
	}

	public static function close() {}

	public static function nopCloser(r:io.Reader) {}

	public static function write(p:Bytes) {}

	public static function writeString(s:String) {}

	public static function readFrom(r:io.Reader) {}

	public static function tempFile(dir:String) {}

	public static function tempDir(dir:String) {}
}
