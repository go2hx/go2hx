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

function readFile(filename:GoString):{_0:Slice<GoByte>, _1:Error} {
	if (!FileSystem.exists(filename))
		return {_0: new Slice<GoByte>(), _1: stdgo.errors.Errors.new_('open $filename: no such file or directory')};
	try {
		return {_0: File.getBytes(filename), _1: null};
	} catch (e) {
		return {_0: new Slice<GoByte>(), _1: stdgo.errors.Errors.new_(e.message)};
	}
}

function writeFile(filename:GoString, data:Bytes, ?perm:GoInt):Error {
	try {
		sys.io.File.saveBytes(filename, data);
		return null;
	} catch (e) {
		return cast e;
	}
}

function readDir(dirname:GoString):{_0:Slice<FileInfo>, ?_1:Error} {
	dirname = Path.addTrailingSlash(dirname);
	try {
		var array:Array<FileInfo> = [];
		for (path in FileSystem.readDirectory(dirname)) {}
		return {_0: new Slice(...array)};
	} catch (e) {
		return {_0: new Slice().nil(), _1: stdgo.errors.Errors.new_(e.message)};
	}
}

function close() {}
function nopCloser(r:Reader) {}
function write(p:Bytes) {}
function writeString(s:GoString) {}
function readFrom(r:Reader) {}
function tempFile(dir:GoString) {}
function tempDir(dir:GoString) {}
