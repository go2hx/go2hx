package stdgo.io;

import haxe.io.Path;
import Os.FileInfo;
import sys.FileSystem;
import Go.ErrorReturn;
import sys.io.File;
import haxe.io.Bytes;

@:noUsing
function readAll(r:io.Reader) {}
@:noUsing
function readFile(filename:String) {}
@:noUsing
function writeFile(filename:String, data:Bytes, ?perm:Os.FileMode):Errors {
	try {
		File.saveBytes(filename, data);
		return null;
	} catch (e) {
		return cast e;
	}
}
@:noUsing
function readDir(dirname:String):ErrorReturn<Array<FileInfo>> {
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

@:noUsing
function close() {}

@:noUsing
function nopCloser(r:io.Reader) {}

@:noUsing
function write(p:Bytes) {}

@:noUsing
function writeString(s:String) {}

@:noUsing
function readFrom(r:io.Reader) {}

@:noUsing
function tempFile(dir:String) {}

@:noUsing
function tempDir(dir:String) {}
