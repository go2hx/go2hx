package stdgo.io.ioutil;

import haxe.io.Path;
import sys.FileSystem;
import stdgo.internal.ErrorReturn;
import sys.io.File;
import haxe.io.Bytes;
import stdgo.io.Io.Reader;
import stdgo.StdGoTypes;
import stdgo.os.Os;
import stdgo.internal.ErrorReturn;

function readAll(r:stdgo.io.Io.Reader) {}
function readFile(filename:String) {}

function writeFile(filename:String, data:Bytes, ?perm:GoInt):Error {
	try {
		sys.io.File.saveBytes(filename, data);
		return null;
	} catch (e) {
		return cast e;
	}
}

function readDir(dirname:String):ErrorReturn<Array<FileInfo>> {
	dirname = Path.addTrailingSlash(dirname);
	try {
		var array:Array<FileInfo> = [];
		for (path in FileSystem.readDirectory(dirname)) {}
		return {value: array};
	} catch (e) {
		return {value: null, error: cast e};
	}
}

function close() {}
function nopCloser(r:Reader) {}
function write(p:Bytes) {}
function writeString(s:String) {}
function readFrom(r:Reader) {}
function tempFile(dir:String) {}
function tempDir(dir:String) {}
