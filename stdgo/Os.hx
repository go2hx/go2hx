package stdgo;

import sys.FileStat;
import haxe.io.Path;
import stdgo.internal.ErrorReturn;
import sys.io.File as Base;
import stdgo.Pointer;
import sys.FileSystem;
var args = Sys.args();
var stderr = Sys.stderr();
var stdin = Sys.stdin();
var stdout = Sys.stdout();

inline function mkdir(path:String, ?perm:Int):Errors {
	try {
		FileSystem.createDirectory(path);
		return null;
	} catch (e) {
		return cast e;
	}
}

inline function getenv(path:String):String {
	return Sys.getEnv(path);
}

inline function mkdirAll(path:String, ?perm:Int):Errors {
	return mkdir(path, perm);
}

inline function create(path:String):ErrorReturn<Pointer<File>> {
	var file:File = null;
	return {value: Go.makePointer(file)};
}

inline function exit(code:Int) {
	Sys.exit(code);
}

inline function newSyscallError(syscall:String, err:Errors):Errors {
	if (err == null)
		return null;
	return new Errors(syscall);
}

inline function chdir(dir:String):Errors {
	try {
		Sys.setCwd(dir);
		return null;
	} catch (e) {
		return cast e;
	}
}

inline function remove(name:String):Errors {
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

inline function removeAll(path:String):Errors {
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

typedef FileMode = Int;
typedef File = {};

typedef FileInfo = {
	var stat:FileStat;
	@:noCompletion var _name:String;
};

function name(info:FileInfo):String {
	return info._name;
}

function isDir(info:FileInfo):Bool {
	return info.stat.mode != 1;
}

function mode(info:FileInfo):FileMode {
	return info.stat.mode;
}

function modeTime(info:FileInfo) {
	return info.stat.mtime;
}

function size(info:FileInfo) {
	return info.stat.size;
}
