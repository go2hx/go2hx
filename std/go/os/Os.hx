package go.os;

import stdgo.errors.Errors;

function exit(_code)
	Sys.exit(_code);

function mkdir(_name:stdgo.GoString):stdgo.Error {
	@:define("(sys || hxnodejs)") try {
		sys.FileSystem.createDirectory(_name);
		return null;
	} catch (e) {
		return Errors.new_("mkdir failed");
	}
}

function chdir(_dir:stdgo.GoString):stdgo.Error {
	@:define("(sys || hxnodejs)") {
		Sys.setCwd(_dir);
		return null;
	}
	return Errors.new_("chdir not supported on this target");
}

function chmod(_name:stdgo.GoString, _mode):stdgo.Error {
	@:define("(sys || hxnodejs)") {
		final perm:Int = _mode;
		final name = _name;
		if (Sys.command('chmod $perm $name') == 0) {
			return null;
		} else {
			return Errors.new_("chmod failed");
		}
	}
	return Errors.new_("chmod not supported on this target");
}

function dirFS(_dir:stdgo.GoString) {
	return stdgo.Go.asInterface((_dir : stdgo._internal.os.Os_t_dirfs.T_dirFS));
}

overload extern inline function readDir(_name:stdgo.GoString) {
	@:define("(js && !hxnodejs)") {
		throw "readDir not supported on this target";
	}
	@:define("(sys || hxnodejs)") {
		final name = _name;
		final paths = sys.FileSystem.readDirectory(name);
		final dirs = new stdgo.Slice<stdgo._internal.os.Os_direntry.DirEntry>(paths.length, paths.length);
		for (i in 0...paths.length) {
			dirs[i] = cast stdgo.Go.asInterface(new stdgo._internal.os.Os_t_filestat.T_fileStat(paths[i]));
		}
		return {_0: dirs, _1: null};
	}
}

@:recv(T_dirFS)
overload extern inline function readDir(_dir:stdgo.GoString, _name:stdgo.GoString) {
	final fullname = haxe.io.Path.join([_dir, _name]);
	return stdgo._internal.os.Os_readdir.readDir(fullname);
}

@:recv(T_dirFS)
overload extern inline function open(_dir:stdgo.GoString, _name:stdgo.GoString) {
	final fullname = haxe.io.Path.join([_dir, _name]);
	final obj = stdgo._internal.os.Os_open.open(fullname);
	return {_0: stdgo.Go.asInterface(obj._0), _1: obj._1};
}

final args = stdgo._internal.os.Os__runtime_args._runtime_args();

function environ_() {
	final slice = new stdgo.Slice<stdgo.GoString>(0, 0);
	return slice;
}

function lstat(_name:stdgo.GoString) {
	@:define("(sys || hxnodejs)") {
		if (!sys.FileSystem.exists(_name))
			return {_0: null, _1: stdgo._internal.errors.Errors_new_.new_("readFile " + _name + ": no such file or directory")};
	}
	return {_0: stdgo.Go.asInterface(new stdgo._internal.os.Os_t_filestat.T_fileStat(_name)), _1: null};
}

function mkdirTemp(_pattern:stdgo.GoString) {
	@:define("(sys || hxnodejs)") {
		final chars = "abcdefghijklmnopqrstuvwxyz0123456789";
		function randomNext() {
			return chars.charAt(std.Math.ceil(std.Math.random() * chars.length) - 1);	
		}
		var name = "tmpdir_";
		while (sys.FileSystem.exists(name)) {
			name += randomNext();
			if (name.length > 150)
				throw "to many attempts";
		}
		sys.FileSystem.createDirectory(name);
		return {_0: name, _1: null};
	}
	return {_0: "", _1: null};
}

@:recv(T_dirFS)
overload extern inline function stat(_dir, _0, _1) {
	@:define("(sys || hxnodejs)") {
		if (!sys.FileSystem.exists(_dir))
			return {_0: null, _1: stdgo._internal.errors.Errors_new_.new_("readFile " + _dir + ": no such file or directory")};
	}
	return {_0: stdgo.Go.asInterface(new stdgo._internal.os.Os_t_filestat.T_fileStat(_dir)), _1: null};
}

overload extern inline function stat(_name:stdgo.GoString) {
	@:define("(sys || hxnodejs)") {
		if (!sys.FileSystem.exists(_name))
			return {_0: null, _1: Errors.new_("readFile " + _name + ": no such file or directory")};
	}
	return {_0: stdgo.Go.asInterface(new stdgo._internal.os.Os_t_filestat.T_fileStat(_name)), _1: null};
}

@:recv(File)
overload extern inline function stat(_f) {
	return {_0: stdgo.Go.asInterface(new stdgo._internal.os.Os_t_filestat.T_fileStat(@:privateAccess _f._file._name)), _1: null};
}

@:recv(T_fileStat)
overload extern inline function name(_fs) {
	return _fs._name;
}

@:recv(T_fileStat)
overload extern inline function modTime(_fs) {
	// TODO use: return std.sys.FileSystem.stat(_fs._name);
	return stdgo._internal.time.Time_now.now();
}

@:recv(T_fileStat)
function mode() {
	@:define("(sys || hxnodejs)") {
		return std.sys.FileSystem.stat(_fs._name).mode;
	}
	return 0;
}

@:recv(T_fileStat)
overload extern inline function size(_fs:Dynamic) {
	@:define("(sys || hxnodejs)") {
		return std.sys.FileSystem.stat(_fs._name).size;
	}
	return 0;
}

@:recv(T_fileStat)
overload extern inline function stat(_fs:Dynamic) {
	@:define("(sys || hxnodejs)") {
		if (!sys.FileSystem.exists(_fs._name))
			return {_0: null, _1: Errors.new_("readFile " + _fs._name + ": no such file or directory")};
	}
	return {_0: stdgo.Go.asInterface(new stdgo._internal.os.Os_t_filestat.T_fileStat(_fs._name)), _1: null};
}

@:recv(T_dirStat)
overload extern inline function stat(t, _dir) {
	@:define("(sys || hxnodejs)") {
		if (!sys.FileSystem.exists(_dir))
			return {_0: null, _1: Errors.new_("readFile " + _dir + ": no such file or directory")};
	}
	return {_0: stdgo.Go.asInterface(new stdgo._internal.os.Os_t_filestat.T_fileStat(_dir)), _1: null};
}

@:recv(T_fileStat)
function isDir(_fs):Bool {
	@:define("(sys || hxnodejs)") {
		return std.sys.FileSystem.isDirectory(_fs._name);
	}
	return false;
}

function isPathSeparator(_c:stdgo.GoRune):Bool {
	@:define("js") return _c == "/".code;
	@:define("(sys || hxnodejs)") {
		final sep = switch Sys.systemName() {
			case "Windows":
				untyped "\\\\".code;
			default:
				"/".code;
		}
		return _c == sep;
	}
}

function writeFile(_name:stdgo.GoString, _data) {
	return @:define("(sys || hxnodejs)") {
		if (!sys.FileSystem.exists(_name)) {
			return Errors.new_("writeFile " + _name + ": no such file or directory");
		} else {
			try {
				sys.io.File.saveBytes(_name, _data.toBytes());
				return null;
			} catch (e) {
				return null;
			}
		}
	}
}

function remove(_name:stdgo.GoString):stdgo.Error {
	@:define("(sys || hxnodejs)") {
		final path = _name;
		if (sys.FileSystem.isDirectory(path)) {
			sys.FileSystem.deleteDirectory(path);
		} else {
			sys.FileSystem.deleteFile(path);
		}
	}
	return null;
}

function removeAll(_path:stdgo.GoString):stdgo.Error {
	var deleteRecursively:String->Void = null;
	deleteRecursively = function(path:String) {
		@:define("(sys || hxnodejs)") {
			if (sys.FileSystem.exists(path)) {
				if (sys.FileSystem.isDirectory(path)) {
					var entries = sys.FileSystem.readDirectory(path);
					for (entry in entries) {
						if (sys.FileSystem.isDirectory(path + '/' + entry)) {
							deleteRecursively(path + '/' + entry);
							sys.FileSystem.deleteDirectory(path + '/' + entry);
						} else {
							sys.FileSystem.deleteFile(path + '/' + entry);
						}
					}
				} else {
					sys.FileSystem.deleteFile(path);
				}
			}
		}
	}
	deleteRecursively(_path);
	@:define("(sys || hxnodejs)") {
		sys.FileSystem.deleteDirectory(_path);
	}
	return null;
}

@:recv(File)
function readFrom(_f, _r) {
	final data = stdgo._internal.io.Io_readall.readAll(_r);
	if (data._1 != null)
		return {_0: 0, _1: data._1};
	final obj = _f.write(data._0);
	return {_0: obj._0, _1: obj._1};
}

@:recv(File)
function read(_f, _b) {
	@:privateAccess _f.mutex.acquire();
	final b = @:privateAccess _b.toBytes();
	var i = 0;
	try {
		i = @:privateAccess _f._input.readBytes(b, 0, b.length);
	} catch (e:haxe.io.Eof) {
		@:privateAccess _f.mutex.release();
		return {_0: 0, _1: stdgo._internal.io.Io_eof.eOF};
	}
	@:privateAccess _b.__bytes__ = b;
	@:privateAccess _f.mutex.release();
	return {_0: i, _1: null};
}

@:recv(File)
function seek(_f, _offset, _whence) {
	// seek(p:Int, pos:FileSeek):Void
	// SeekBegin, SeekCur, SeekEnd
	@:define("eval") {
		trace("not supported on eval target");
		return {_0: 0, _1: null};
	}
	@:define("(sys || hxnodejs)") {
		@:privateAccess _f.mutex.acquire();
		final input:sys.io.FileInput = cast @:privateAccess _f._input;
		final pos = sys.io.FileSeek.createByIndex(_whence.toBasic());
		@:privateAccess input.seek(_offset.toBasic().low, pos);
		@:privateAccess _f.mutex.release();
		return {_0: input.tell(), _1: null};
	}
	trace("not supported on non sys target");
	return {_0: 0, _1: null};
}

function readFile(_name:stdgo.GoString) {
	return @:define("(sys || hxnodejs)") {
		if (!sys.FileSystem.exists(_name)) {
			return {_0: null, _1: stdgo._internal.errors.Errors_new_.new_("readFile " + _name + ": no such file or directory")};
		} else {
			try {
				return {_0: sys.io.File.getBytes(_name), _1: null};
			} catch (e) {
				{_0: null, _1: stdgo._internal.errors.Errors_new_.new_(e.details())};
			}
		}
	};
}

overload extern inline function open(_name:stdgo.GoString) {
	return stdgo._internal.os.Os_openfile.openFile(_name, 0, 0);
}

function openFile(_name:stdgo.GoString) {
	return @:define("(sys || hxnodejs)") {
		if (!sys.FileSystem.exists(_name)) {
			sys.io.File.saveBytes(_name, haxe.io.Bytes.alloc(0));
		}
		if (sys.FileSystem.isDirectory(_name)) {
			{_0: {_file: {_name: _name}, _input: null, _output: null}, _1: null};
		}else{
			try {
				{_0: {_file: {_name: _name}, _input: sys.io.File.read(_name, false), _output: sys.io.File.update(_name)}, _1: null};
			} catch (e) {
				{_0: null, _1: stdgo._internal.errors.Errors_new_.new_(e.details())};
			}
		}
	};
}

overload extern inline function truncate() {
	trace("os.truncate not implemented");
	return null;
}

@:recv(File)
function write(_f, _b:stdgo.Slice<stdgo.GoByte>) {
	if (_b.length == 0) {
		return {_0: 0, _1: null};
	}
	@:privateAccess _f.mutex.acquire();
	final b = _b.toBytes();
	final i = @:privateAccess _f._output.writeBytes(b, 0, b.length);
	// fails on js
	// @:privateAccess _f._output.flush();
	@:privateAccess _f.mutex.release();
	if (i != b.length)
		return {_0: i, _1: stdgo._internal.errors.Errors_new_.new_("invalid write")};
	return {_0: i, _1: null};
}

@:recv(File)
function readdirnames(_n) {
	@:define("(sys || hxnodejs)") {
		if (sys.FileSystem.isDirectory(_f._file._name)) {
			var paths = sys.FileSystem.readDirectory(_f._file._name);
			if (_n >= 0) {
				paths = paths.slice(0, _n);
			}
			final slice:stdgo.Slice<stdgo.GoString> = paths.map(path -> (path : stdgo.GoString));
			return {_0: slice, _1: null};
		}
		return {_0: [], _1: stdgo._internal.errors.Errors_new_.new_("File.writeAt readDirNames: invalid")};
	}
	trace("not supported on non sys target");
	return {_0: [], _1: stdgo._internal.errors.Errors_new_.new_("File.writeAt readDirNames: invalid")};
}

@:recv(File)
function writeString(_f, _s)
	return _f.write(_s);

@:recv(File)
overload extern inline function truncate(_f, _size) {
	@:define("(sys || hxnodejs)") {
		@:privateAccess _f.mutex.acquire();
		@:privateAccess _f._output.flush();
		@:privateAccess _f._output.close();
		final bytes = _size == 0 ? haxe.io.Bytes.alloc(0) : sys.io.File.getBytes(@:privateAccess _f._file._name);
		sys.io.File.saveBytes(@:privateAccess _f._file._name, bytes.sub(0, (_size : stdgo.GoInt).toBasic()));
		@:privateAccess _f._output = sys.io.File.write(@:privateAccess _f._file._name);
		@:privateAccess _f.mutex.release();
	}
	return null;
}

@:recv(File)
function close(_f) {
	@:privateAccess _f.mutex.acquire();
	@:privateAccess _f._output?.flush();
	@:privateAccess _f._input?.close();
	@:privateAccess _f._output?.close();
	@:privateAccess _f.mutex.release();
	return null;
}

function getenv(_key) {
	return std.Sys.getEnv(_key) ?? "";
}

function getwd() {
	return @:define("(sys || hxnodejs)") {
		try {
			return {_0: std.Sys.getCwd(), _1: null};
		} catch (e) {
			return {_0: null, _1: stdgo._internal.errors.Errors_new_.new_(e.details())};
		}
	};
}

function _runtime_args() {
	@:define("(sys || hxnodejs)") {
		final args:Array<stdgo.GoString> = std.Sys.args().map(arg -> (arg : stdgo.GoString));
		args.unshift(std.Sys.getCwd());
		return new stdgo.Slice<stdgo.GoString>(args.length, args.length, ...args).__setString__();
	};
	@:define("js") return new stdgo.Slice<stdgo.GoString>(1, 1, ".").__setString__();
}

function create(_name) {
	// O_RDWR|O_CREATE|O_TRUNC
	return stdgo._internal.os.Os_openfile.openFile(_name, 0, 0);
}

function tempDir()
	return "temp";

function createTemp(_dir, _pattern) {
	final dir = _dir;
	final pattern = _pattern;
	var name = "tmpfile_";
		final chars = "abcdefghijklmnopqrstuvwxyz0123456789";
	function randomNext() {
		return chars.charAt(std.Math.ceil(std.Math.random() * chars.length) - 1);
	}
	while (sys.FileSystem.exists((dir != "" ? haxe.io.Path.addTrailingSlash(dir) : "") + name)) {
		name += randomNext();
		if (name.length > 150)
			throw "to many attempts";
	}
	return stdgo._internal.os.Os_openfile.openFile((dir != "" ? haxe.io.Path.addTrailingSlash(dir) : "") + name, 0, 0);
}

final stdin = {
	final input:haxe.io.Input = @:define("(sys || hxnodejs)") std.Sys.stdin();
	new stdgo._internal.os.Os_file.File(input, null);
};

final stdout = {
	var output:haxe.io.Output = null;
	@:define("js") (output = new stdgo._internal.os.Os_jsoutput.JsOutput());
	@:define("(sys || hxnodejs)") (output = std.Sys.stdout());
	new stdgo._internal.os.Os_file.File(null, output);
};

final stderr = {
	final output:haxe.io.Output = @:define("(sys || hxnodejs)") std.Sys.stderr();
	new stdgo._internal.os.Os_file.File(null, output);
};

@:recv(File)
function writeAt(_f, _b, _off) {
	@:define("(sys || hxnodejs)") {
		if (_b.length == 0)
			return {_0: 0, _1: null};
		@:privateAccess _f.mutex.acquire();
		try {
			var t = 0;
			@:define("!eval") {
				t = @:privateAccess cast(_f._output, sys.io.FileOutput).tell();
				@:privateAccess cast(_f._output, sys.io.FileOutput).seek(_off.toBasic().low, sys.io.FileSeek.SeekBegin);
			}
			final b = _b.toBytes();
			final i = @:privateAccess _f._output.writeBytes(b, 0, b.length);
			@:define("!eval") {
				@:privateAccess cast(_f._output, sys.io.FileOutput).seek(t, sys.io.FileSeek.SeekBegin);
			}
			@:privateAccess _f._output.flush();
			@:privateAccess _f.mutex.release();
			return {_0: i, _1: null};
		} catch (e) {
			@:privateAccess _f.mutex.release();
			return {_0: 0, _1: stdgo._internal.errors.Errors_new_.new_("File.writeAt failed: " + e)};
		}
	};
	trace("not supported on non sys target");
	return {_0: 0, _1: null};
}

@:recv(File)
overload extern inline function name(_f) {
	return _f._file._name;
}

@:recv(File)
overload extern inline function readAt(_f, _b, _off) {
	@:define("(sys || hxnodejs)") {
		if (_b.length == 0)
			return {_0: 0, _1: null};
		@:privateAccess _f.mutex.acquire();
		try {
			var offset = _off.toBasic().low;
			// @:privateAccess cast(_f._input, sys.io.FileInput).seek(0, sys.io.FileSeek.SeekBegin);
			final b = _b.toBytes();
			var t = 0;
			@:define("!eval") {
				t = @:privateAccess cast(_f._input, sys.io.FileInput).tell();
				@:privateAccess cast(_f._input, sys.io.FileInput).seek(offset, sys.io.FileSeek.SeekBegin);
			}
			var n = @:privateAccess _f._input.readBytes(b, 0, b.length);
			@:define("!eval") {
				@:privateAccess cast(_f._input, sys.io.FileInput).seek(t, sys.io.FileSeek.SeekBegin);
			}
			@:privateAccess _b.__bytes__ = b;
			// always returns a non-nil error when n < len(b). At end of file, that error is io.EOF.
			var err = null;
			if (n < b.length) {
				err = stdgo._internal.io.Io_eof.eOF;
			}
			@:privateAccess _f.mutex.release();
			return {_0: n, _1: err};
		} catch (e) {
			@:privateAccess _f.mutex.release();
			return {_0: 0, _1: stdgo._internal.errors.Errors_new_.new_("File.readAt failed: " + e)};
		}
	};
	trace("not supported on non sys target");
	return {_0: 0, _1: null};
}

function _fastrand() {
	return std.Std.random(1) > 0 ? -std.Std.random(2147483647) - 1 : std.Std.random(2147483647);
}
