package stdgo.os;

import haxe.io.Output;
import haxe.io.Path;
import stdgo.Pointer;
import stdgo.StdGoTypes;
import sys.FileStat;
import sys.FileSystem; // TODO: interp error [0] Instance prototype not found: haxe.macro.Error

var args = new Slice<GoString>(...([(#if interp "" #else Sys.programPath() #end : GoString)].concat([for (arg in Sys.args()) (arg : GoString)])));
var stderr = Go.pointer(new OutputWriter(Sys.stderr()));

var stdin:Dynamic = {
	value: {
		name: () -> "name"
	}
};

var stdout = Go.pointer(new OutputWriter(Sys.stdout()));

class OutputWriter {
	public function __underlying__():AnyInterface
		return null;

	var output:Output;

	public function new(output) {
		this.output = output;
	}

	public function write(p:Slice<GoByte>):{_0:GoInt, _1:Error} {
		for (c in p)
			output.writeByte(c.toBasic());
		return {_0: 0, _1: null};
	}

	public function name():GoString {
		return "";
	}
}

inline function mkdir(path:GoString, ?perm:GoInt):Error {
	try {
		FileSystem.createDirectory(path);
		return null;
	} catch (e) {
		return cast e;
	}
}

inline function getenv(path:GoString):GoString {
	var e = Sys.getEnv(path);
	if (path == "GOSSAINTERP")
		return "1";
	if (path == "GOARCH")
		return stdgo.runtime.Runtime.goarch;
	return e == null ? "" : e;
}

function isNotExist(err:Error):Bool {
	return false;
}

inline function open(name:GoString):{_0:Pointer<File>, _1:Error} {
	return try {
		{_0: Go.pointer(new File(sys.io.File.read(name), null)), _1: null};
	} catch (_) {
		{_0: null, _1: stdgo.errors.Errors.new_("unable to open")};
	}
}

inline function lookupEnv(path:GoString):{_0:GoString, _1:Bool} {
	var e = Sys.getEnv(path);
	if (e == null)
		return {_0: "", _1: false};
	return {_0: e, _1: true};
}

inline function mkdirAll(path:GoString, ?perm:GoInt):Error {
	return mkdir(path, perm);
}

inline function create(path:GoString):{_0:Pointer<File>, _1:Error} {
	var dir = haxe.io.Path.directory(path);
	if (!sys.FileSystem.exists(dir))
		sys.FileSystem.createDirectory(dir);
	sys.io.File.saveContent(path, "");
	var file = new stdgo.os.Os.File(sys.io.File.read(path), sys.io.File.write(path));
	return {_0: Go.pointer(file), _1: null};
}

inline function exit(code:GoInt) {
	Sys.exit(code.toBasic());
}

inline function newSyscallError(syscall:GoString, err:Error):Error {
	if (err == null)
		return null;
	return stdgo.errors.Errors.new_(syscall);
}

inline function chdir(dir:GoString):Error {
	try {
		Sys.setCwd(dir);
		return null;
	} catch (e) {
		return cast e;
	}
}

inline function remove(name:GoString):Error {
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

inline function removeAll(path:GoString):Error {
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

function readFile(filename:GoString):{_0:Slice<GoByte>, _1:Error} {
	if (!FileSystem.exists(filename))
		return {_0: new Slice<GoByte>(), _1: stdgo.errors.Errors.new_('open $filename: no such file or directory')};
	try {
		return {_0: sys.io.File.getBytes(filename), _1: null};
	} catch (e) {
		return {_0: new Slice<GoByte>(), _1: stdgo.errors.Errors.new_(e.message)};
	}
}

@:using(Os.File_static_extension)
class File {
	public function __underlying__():AnyInterface
		return null;

	var input:sys.io.FileInput;
	var output:sys.io.FileOutput;
	var cur:GoInt64 = 0;

	public function new(input, output) {
		this.input = input;
		this.output = output;
	}
}

class File_wrapper {
	public var __t__:File = null;

	public function new(__t__)
		this.__t__ = __t__;

	public function seek(_offset:GoInt64, _whence:GoInt):{_0:GoInt64, _1:Error}
		return __t__.seek(_offset, _whence);

	public function write(_p:Slice<GoByte>)
		return __t__.write(_p);

	public function read(_p:Slice<GoByte>)
		return __t__.read(_p);

	public function close()
		__t__.close();

	public function __underlying__()
		return Go.toInterface(this);
}

class File_static_extension {
	public static function seek(file:File, _offset:GoInt64, _whence:GoInt):{_0:GoInt64, _1:Error} {
		final pos = sys.io.FileSeek.createByIndex(_whence.toBasic());
		@:privateAccess file.input.seek((_offset : GoInt).toBasic(), pos);
		return {
			_0: @:privateAccess file.input.tell(),
			_1: null,
		};
		return {_0: 0, _1: stdgo.errors.Errors.new_("seek failed")};
	}

	public static function write(file:File, p:Slice<GoByte>):{_0:GoInt, _1:Error} {
		if (@:privateAccess file.output == null)
			return {_0: 0, _1: stdgo.errors.Errors.new_("bad file descriptor")};
		return try {
			for (c in p)
				@:privateAccess file.output.writeByte(c.toBasic());
			{_0: p.length, _1: null};
		} catch (e) {
			return {_0: 0, _1: stdgo.errors.Errors.new_(e.details())};
		}
	}

	public static function read(file:File, p:Slice<GoByte>):{_0:GoInt, _1:Error} {
		if (@:privateAccess file.input == null)
			return {_0: 0, _1: stdgo.errors.Errors.new_("bad file descriptor")};
		var index = 0;
		return try {
			while (index < p.length.toBasic()) {
				@:privateAccess p[index++] = (file.input.readByte() : GoByte);
			}
			{_0: p.length, _1: null};
		} catch (e) {
			if (index > 0)
				return {_0: index, _1: null};
			return {_0: 0, _1: stdgo.errors.Errors.new_(e.details())};
		}
	}

	public static function close(file:File):Error {
		return try {
			if (@:privateAccess file.input != null)
				@:privateAccess file.input.close();
			if (@:privateAccess file.output != null)
				@:privateAccess file.output.close();
			null;
		} catch (e) {
			return stdgo.errors.Errors.new_(e.details());
		}
	}
}
