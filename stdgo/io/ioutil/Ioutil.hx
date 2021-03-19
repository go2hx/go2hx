package stdgo.io.ioutil;

import haxe.io.Path;
import stdgo.os.Os.FileInfo;
import sys.FileSystem;
import stdgo.Go.ErrorReturn;
import sys.io.File;
import haxe.io.Bytes;

function readAll(r:stdgo.io.Io.Reader) {}
function readFile(filename:String) {}

function writeFile(filename:String, data:Bytes, ?perm:Os.FileMode):Errors {
	try {
		File.saveBytes(filename, data);
		return null;
	} catch (e) {
		return cast e;
	}
}

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

function close() {}
function nopCloser(r:io.Reader) {}
function write(p:Bytes) {}
function writeString(s:String) {}
function readFrom(r:io.Reader) {}
function tempFile(dir:String) {}
function tempDir(dir:String) {}
