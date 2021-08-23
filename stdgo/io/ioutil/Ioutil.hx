package stdgo.io.ioutil;

import haxe.io.Bytes;
import haxe.io.Path;
import stdgo.StdGoTypes;
import stdgo.io.Io.Reader;
import stdgo.os.Os;
import sys.FileSystem;
import sys.io.File;

function readAll(r:Reader)
	return stdgo.io.Io.readAll(r);

function readFile(filename:GoString) {}

function writeFile(filename:GoString, data:Bytes, ?perm:GoInt):Error {
	try {
		sys.io.File.saveBytes(filename, data);
		return null;
	} catch (e) {
		return cast e;
	}
}

function readDir(dirname:GoString):{v0:Slice<FileInfo>, ?v1:Error} {
	dirname = Path.addTrailingSlash(dirname);
	try {
		var array:Array<FileInfo> = [];
		for (path in FileSystem.readDirectory(dirname)) {}
		return {v0: new Slice(...array)};
	} catch (e) {
		return {v0: new Slice().nil(), v1: stdgo.errors.Errors.new_(e.message)};
	}
}

function close() {}
function nopCloser(r:Reader) {}
function write(p:Bytes) {}
function writeString(s:GoString) {}
function readFrom(r:Reader) {}
function tempFile(dir:GoString) {}
function tempDir(dir:GoString) {}
