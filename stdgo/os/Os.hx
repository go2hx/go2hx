package stdgo.os;

import sys.FileStat;
import haxe.io.Path;
import stdgo.internal.ErrorReturn;
import stdgo.Pointer;
import sys.FileSystem;
import stdgo.StdGoTypes.Error;
import stdgo.StdGoTypes.GoByte;
import haxe.io.Output;
import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes.MultiReturn;
import stdgo.StdGoTypes.AnyInterface;

var args = new Slice(...Sys.args());
var stderr = new OutputWriter(Sys.stderr());

// var stdin = new OutputWriter(Sys.stdin());
var stdout = new OutputWriter(Sys.stdout());

class OutputWriter implements stdgo.io.Io.Writer {

	public function __underlying__():AnyInterface
		return null;
	var output:Output;

	public function new(output) {
		this.output = output;
	}

	public function write(p:Array<GoByte>):{n:GoInt, err:Error} {
		for (c in p)
			output.writeByte(c.toBasic());
		return {n: 0, err: null};
	}
}

inline function mkdir(path:String, ?perm:GoInt):Error {
	try {
		FileSystem.createDirectory(path);
		return null;
	} catch (e) {
		return cast e;
	}
}

inline function getenv(path:String):String {
	var e = Sys.getEnv(path);
	return e == null ? "" : e;
}

inline function mkdirAll(path:String, ?perm:GoInt):Error {
	return mkdir(path, perm);
}

inline function create(path:String):MultiReturn<ErrorReturn<PointerWrapper<File>>> {
	var dir = haxe.io.Path.directory(path);
	if (!sys.FileSystem.exists(dir))
		sys.FileSystem.createDirectory(dir);
	sys.io.File.saveContent(path, "");
	var file = new stdgo.os.Os.File(sys.io.File.read(path), sys.io.File.write(path));
	return {value: new PointerWrapper(file)};
}

inline function exit(code:GoInt) {
	Sys.exit(code.toBasic());
}

inline function newSyscallError(syscall:String, err:Error):Error {
	if (err == null)
		return null;
	return stdgo.errors.Errors.new_(syscall);
}

inline function chdir(dir:String):Error {
	try {
		Sys.setCwd(dir);
		return null;
	} catch (e) {
		return cast e;
	}
}

inline function remove(name:String):Error {
	try {
		if (FileSystem.isDirectory(name)) {
			FileSystem.deleteDirectory(name);
		} else {
			FileSystem.deleteFile(name);
		}
		return null;
	} catch (e) {
		return cast e;
	}
}

inline function removeAll(path:String):Error {
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
	return null;
}

class File implements stdgo.io.Io.Writer {

	public function __underlying__():AnyInterface
		return null;
	var input:sys.io.FileInput;
	var output:sys.io.FileOutput;

	public function new(input, output) {
		this.input = input;
		this.output = output;
	}

	public function write(p:Array<GoByte>):{n:GoInt, err:Error} {
		for (c in p)
			output.writeByte(c.toBasic());
		return {n: p.length, err: null};
	}

	public function close():Error {
		input.close();
		output.close();
		return null;
	}
}

typedef FileInfo = stdgo.io.fs.Fs.FileInfo;
