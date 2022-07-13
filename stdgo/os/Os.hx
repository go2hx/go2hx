package os;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

var errInvalid:stdgo.Error = stdgo.io.Io.Fs.errInvalid;
var errPermission:stdgo.Error = stdgo.io.Io.Fs.errPermission;
var errExist:stdgo.Error = stdgo.io.Io.Fs.errExist;
var errNotExist:stdgo.Error = stdgo.io.Io.Fs.errNotExist;
var errClosed:stdgo.Error = stdgo.io.Io.Fs.errClosed;
var errNoDeadline:stdgo.Error = _errNoDeadline();
var errDeadlineExceeded:stdgo.Error = _errDeadlineExceeded();
var errProcessDone:stdgo.Error = _errors.new_(((("os: process already finished" : GoString))));
var interrupt:Signal = ((2 : GoInt));
var kill:Signal = ((3 : GoInt));
var stdin:Ref<File> = newFile(((((0 : GoUIntptr)) : GoUIntptr)), ((("/dev/stdin" : GoString))));
var stdout:Ref<File> = newFile(((((1 : GoUIntptr)) : GoUIntptr)), ((("/dev/stdout" : GoString))));
var stderr:Ref<File> = newFile(((((2 : GoUIntptr)) : GoUIntptr)), ((("/dev/stderr" : GoString))));
var args:Slice<GoString> = ((null : Slice<GoString>));

typedef Signal = StructType & {
	public function toString():GoString;
	public function signal():Void;
};

@:structInit @:using(stdgo.os.Os.SyscallError_static_extension) class SyscallError {
	public var syscall:GoString = "";
	public var err:stdgo.Error = ((null : stdgo.Error));

	public function new(?syscall:GoString, ?err:stdgo.Error) {
		if (syscall != null)
			this.syscall = syscall;
		if (err != null)
			this.err = err;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SyscallError(syscall, err);
	}
}

@:structInit @:using(stdgo.os.Os.Process_static_extension) class Process {
	public var pid:GoInt = 0;

	public function new(?pid:GoInt) {
		if (pid != null)
			this.pid = pid;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Process(pid);
	}
}

@:structInit class ProcAttr {
	public var dir:GoString = "";
	public var env:Slice<GoString> = ((null : Slice<GoString>));
	public var files:Slice<Ref<File>> = ((null : Slice<Ref<File>>));
	public var sys:Ref<stdgo.syscall.Syscall.SysProcAttr> = null;

	public function new(?dir:GoString, ?env:Slice<GoString>, ?files:Slice<Ref<File>>, ?sys:Ref<stdgo.syscall.Syscall.SysProcAttr>) {
		if (dir != null)
			this.dir = dir;
		if (env != null)
			this.env = env;
		if (files != null)
			this.files = files;
		if (sys != null)
			this.sys = sys;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ProcAttr(dir, env, files, sys);
	}
}

@:structInit @:using(stdgo.os.Os.ProcessState_static_extension) class ProcessState {
	public function new() {}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ProcessState();
	}
}

@:structInit @:using(stdgo.os.Os.LinkError_static_extension) class LinkError {
	public var op:GoString = "";
	public var old:GoString = "";
	public var new_:GoString = "";
	public var err:stdgo.Error = ((null : stdgo.Error));

	public function new(?op:GoString, ?old:GoString, ?new_:GoString, ?err:stdgo.Error) {
		if (op != null)
			this.op = op;
		if (old != null)
			this.old = old;
		if (new_ != null)
			this.new_ = new_;
		if (err != null)
			this.err = err;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new LinkError(op, old, new_, err);
	}
}

@:structInit @:using(stdgo.os.Os.File_static_extension) class File {
	public function new() {}

	public function _close():stdgo.Error
		return null;

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new File();
	}
}

@:named typedef DirEntry = stdgo.io.fs.Fs.DirEntry;
@:named typedef PathError = stdgo.io.fs.Fs.PathError;
@:named typedef FileInfo = stdgo.io.fs.Fs.FileInfo;
@:named typedef FileMode = stdgo.io.fs.Fs.FileMode;

/**
	// ReadDir reads the named directory,
	// returning all its directory entries sorted by filename.
	// If an error occurs reading the directory,
	// ReadDir returns the entries it was able to read before the error,
	// along with the error.
**/
function readDir(_name:GoString):{var _0:Slice<DirEntry>; var _1:Error;}
	return {_0: ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1: ((null : stdgo.Error))};

/**
	// Expand replaces ${var} or $var in the string based on the mapping function.
	// For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
**/
function expand(_s:GoString, _mapping:GoString->GoString):GoString
	return (("" : GoString));

/**
	// ExpandEnv replaces ${var} or $var in the string according to the values
	// of the current environment variables. References to undefined
	// variables are replaced by the empty string.
**/
function expandEnv(_s:GoString):GoString
	return (("" : GoString));

/**
	// Getenv retrieves the value of the environment variable named by the key.
	// It returns the value, which will be empty if the variable is not present.
	// To distinguish between an empty value and an unset value, use LookupEnv.
**/
function getenv(_key:GoString):GoString
	return (("" : GoString));

/**
	// LookupEnv retrieves the value of the environment variable named
	// by the key. If the variable is present in the environment the
	// value (which may be empty) is returned and the boolean is true.
	// Otherwise the returned value will be empty and the boolean will
	// be false.
**/
function lookupEnv(_key:GoString):{var _0:GoString; var _1:Bool;}
	return {_0: (("" : GoString)), _1: false};

/**
	// Setenv sets the value of the environment variable named by the key.
	// It returns an error, if any.
**/
function setenv(_key:GoString, _value:GoString):Error
	return ((null : stdgo.Error));

/**
	// Unsetenv unsets a single environment variable.
**/
function unsetenv(_key:GoString):Error
	return ((null : stdgo.Error));

/**
	// Clearenv deletes all environment variables.
**/
function clearenv():Void
	return;

/**
	// Environ returns a copy of strings representing the environment,
	// in the form "key=value".
**/
function environ():Slice<GoString>
	return ((null : Slice<GoString>));

/**
	// NewSyscallError returns, as an error, a new SyscallError
	// with the given system call name and error details.
	// As a convenience, if err is nil, NewSyscallError returns nil.
**/
function newSyscallError(_syscall:GoString, _err:Error):Error
	return ((null : stdgo.Error));

/**
	// IsExist returns a boolean indicating whether the error is known to report
	// that a file or directory already exists. It is satisfied by ErrExist as
	// well as some syscall errors.
	//
	// This function predates errors.Is. It only supports errors returned by
	// the os package. New code should use errors.Is(err, fs.ErrExist).
**/
function isExist(_err:Error):Bool
	return false;

/**
	// IsNotExist returns a boolean indicating whether the error is known to
	// report that a file or directory does not exist. It is satisfied by
	// ErrNotExist as well as some syscall errors.
	//
	// This function predates errors.Is. It only supports errors returned by
	// the os package. New code should use errors.Is(err, fs.ErrNotExist).
**/
function isNotExist(_err:Error):Bool
	return false;

/**
	// IsPermission returns a boolean indicating whether the error is known to
	// report that permission is denied. It is satisfied by ErrPermission as well
	// as some syscall errors.
	//
	// This function predates errors.Is. It only supports errors returned by
	// the os package. New code should use errors.Is(err, fs.ErrPermission).
**/
function isPermission(_err:Error):Bool
	return false;

/**
	// IsTimeout returns a boolean indicating whether the error is known
	// to report that a timeout occurred.
	//
	// This function predates errors.Is, and the notion of whether an
	// error indicates a timeout can be ambiguous. For example, the Unix
	// error EWOULDBLOCK sometimes indicates a timeout and sometimes does not.
	// New code should use errors.Is with a value appropriate to the call
	// returning the error, such as os.ErrDeadlineExceeded.
**/
function isTimeout(_err:Error):Bool
	return false;

/**
	// Getpid returns the process id of the caller.
**/
function getpid():GoInt
	return ((0 : GoInt));

/**
	// Getppid returns the process id of the caller's parent.
**/
function getppid():GoInt
	return ((0 : GoInt));

/**
	// FindProcess looks for a running process by its pid.
	//
	// The Process it returns can be used to obtain information
	// about the underlying operating system process.
	//
	// On Unix systems, FindProcess always succeeds and returns a Process
	// for the given pid, regardless of whether the process exists.
**/
function findProcess(_pid:GoInt):{var _0:Process; var _1:Error;}
	return {_0: null, _1: ((null : stdgo.Error))};

/**
	// StartProcess starts a new process with the program, arguments and attributes
	// specified by name, argv and attr. The argv slice will become os.Args in the
	// new process, so it normally starts with the program name.
	//
	// If the calling goroutine has locked the operating system thread
	// with runtime.LockOSThread and modified any inheritable OS-level
	// thread state (for example, Linux or Plan 9 name spaces), the new
	// process will inherit the caller's thread state.
	//
	// StartProcess is a low-level interface. The os/exec package provides
	// higher-level interfaces.
	//
	// If there is an error, it will be of type *PathError.
**/
function startProcess(_name:GoString, _argv:Slice<GoString>, _attr:ProcAttr):{var _0:Process; var _1:Error;}
	return {_0: null, _1: ((null : stdgo.Error))};

/**
	// Executable returns the path name for the executable that started
	// the current process. There is no guarantee that the path is still
	// pointing to the correct executable. If a symlink was used to start
	// the process, depending on the operating system, the result might
	// be the symlink or the path it pointed to. If a stable result is
	// needed, path/filepath.EvalSymlinks might help.
	//
	// Executable returns an absolute path unless an error occurred.
	//
	// The main use case is finding resources located relative to an
	// executable.
**/
function executable():{var _0:GoString; var _1:Error;}
	return {_0: (("" : GoString)), _1: ((null : stdgo.Error))};

/**
	// Mkdir creates a new directory with the specified name and permission
	// bits (before umask).
	// If there is an error, it will be of type *PathError.
**/
function mkdir(_name:GoString, _perm:FileMode):Error
	return ((null : stdgo.Error));

/**
	// Chdir changes the current working directory to the named directory.
	// If there is an error, it will be of type *PathError.
**/
function chdir(_dir:GoString):Error
	return ((null : stdgo.Error));

/**
	// Open opens the named file for reading. If successful, methods on
	// the returned file can be used for reading; the associated file
	// descriptor has mode O_RDONLY.
	// If there is an error, it will be of type *PathError.
**/
function open(_name:GoString):{var _0:File; var _1:Error;}
	return {_0: null, _1: ((null : stdgo.Error))};

/**
	// Create creates or truncates the named file. If the file already exists,
	// it is truncated. If the file does not exist, it is created with mode 0666
	// (before umask). If successful, methods on the returned File can
	// be used for I/O; the associated file descriptor has mode O_RDWR.
	// If there is an error, it will be of type *PathError.
**/
function create(_name:GoString):{var _0:File; var _1:Error;}
	return {_0: null, _1: ((null : stdgo.Error))};

/**
	// OpenFile is the generalized open call; most users will use Open
	// or Create instead. It opens the named file with specified flag
	// (O_RDONLY etc.). If the file does not exist, and the O_CREATE flag
	// is passed, it is created with mode perm (before umask). If successful,
	// methods on the returned File can be used for I/O.
	// If there is an error, it will be of type *PathError.
**/
function openFile(_name:GoString, _flag:GoInt, _perm:FileMode):{var _0:File; var _1:Error;}
	return {_0: null, _1: ((null : stdgo.Error))};

/**
	// Rename renames (moves) oldpath to newpath.
	// If newpath already exists and is not a directory, Rename replaces it.
	// OS-specific restrictions may apply when oldpath and newpath are in different directories.
	// If there is an error, it will be of type *LinkError.
**/
function rename(_oldpath:GoString, _newpath:GoString):Error
	return ((null : stdgo.Error));

/**
	// TempDir returns the default directory to use for temporary files.
	//
	// On Unix systems, it returns $TMPDIR if non-empty, else /tmp.
	// On Windows, it uses GetTempPath, returning the first non-empty
	// value from %TMP%, %TEMP%, %USERPROFILE%, or the Windows directory.
	// On Plan 9, it returns /tmp.
	//
	// The directory is neither guaranteed to exist nor have accessible
	// permissions.
**/
function tempDir():GoString
	return (("" : GoString));

/**
	// UserCacheDir returns the default root directory to use for user-specific
	// cached data. Users should create their own application-specific subdirectory
	// within this one and use that.
	//
	// On Unix systems, it returns $XDG_CACHE_HOME as specified by
	// https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
	// non-empty, else $HOME/.cache.
	// On Darwin, it returns $HOME/Library/Caches.
	// On Windows, it returns %LocalAppData%.
	// On Plan 9, it returns $home/lib/cache.
	//
	// If the location cannot be determined (for example, $HOME is not defined),
	// then it will return an error.
**/
function userCacheDir():{var _0:GoString; var _1:Error;}
	return {_0: (("" : GoString)), _1: ((null : stdgo.Error))};

/**
	// UserConfigDir returns the default root directory to use for user-specific
	// configuration data. Users should create their own application-specific
	// subdirectory within this one and use that.
	//
	// On Unix systems, it returns $XDG_CONFIG_HOME as specified by
	// https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
	// non-empty, else $HOME/.config.
	// On Darwin, it returns $HOME/Library/Application Support.
	// On Windows, it returns %AppData%.
	// On Plan 9, it returns $home/lib.
	//
	// If the location cannot be determined (for example, $HOME is not defined),
	// then it will return an error.
**/
function userConfigDir():{var _0:GoString; var _1:Error;}
	return {_0: (("" : GoString)), _1: ((null : stdgo.Error))};

/**
	// UserHomeDir returns the current user's home directory.
	//
	// On Unix, including macOS, it returns the $HOME environment variable.
	// On Windows, it returns %USERPROFILE%.
	// On Plan 9, it returns the $home environment variable.
**/
function userHomeDir():{var _0:GoString; var _1:Error;}
	return {_0: (("" : GoString)), _1: ((null : stdgo.Error))};

/**
	// Chmod changes the mode of the named file to mode.
	// If the file is a symbolic link, it changes the mode of the link's target.
	// If there is an error, it will be of type *PathError.
	//
	// A different subset of the mode bits are used, depending on the
	// operating system.
	//
	// On Unix, the mode's permission bits, ModeSetuid, ModeSetgid, and
	// ModeSticky are used.
	//
	// On Windows, only the 0200 bit (owner writable) of mode is used; it
	// controls whether the file's read-only attribute is set or cleared.
	// The other bits are currently unused. For compatibility with Go 1.12
	// and earlier, use a non-zero mode. Use mode 0400 for a read-only
	// file and 0600 for a readable+writable file.
	//
	// On Plan 9, the mode's permission bits, ModeAppend, ModeExclusive,
	// and ModeTemporary are used.
**/
function chmod(_name:GoString, _mode:FileMode):Error
	return ((null : stdgo.Error));

/**
	// DirFS returns a file system (an fs.FS) for the tree of files rooted at the directory dir.
	//
	// Note that DirFS("/prefix") only guarantees that the Open calls it makes to the
	// operating system will begin with "/prefix": DirFS("/prefix").Open("file") is the
	// same as os.Open("/prefix/file"). So if /prefix/file is a symbolic link pointing outside
	// the /prefix tree, then using DirFS does not stop the access any more than using
	// os.Open does. DirFS is therefore not a general substitute for a chroot-style security
	// mechanism when the directory tree contains arbitrary content.
**/
function dirFS(_dir:GoString):stdgo.io.fs.Fs.FS
	return ((null : stdgo.io.fs.Fs.FS));

/**
	// ReadFile reads the named file and returns the contents.
	// A successful call returns err == nil, not err == EOF.
	// Because ReadFile reads the whole file, it does not treat an EOF from Read
	// as an error to be reported.
**/
function readFile(_name:GoString):{var _0:Slice<GoByte>; var _1:Error;}
	return {_0: ((null : Slice<GoUInt8>)), _1: ((null : stdgo.Error))};

/**
	// WriteFile writes data to the named file, creating it if necessary.
	// If the file does not exist, WriteFile creates it with permissions perm (before umask);
	// otherwise WriteFile truncates it before writing, without changing permissions.
**/
function writeFile(_name:GoString, _data:Slice<GoByte>, _perm:FileMode):Error
	return ((null : stdgo.Error));

/**
	// Chown changes the numeric uid and gid of the named file.
	// If the file is a symbolic link, it changes the uid and gid of the link's target.
	// A uid or gid of -1 means to not change that value.
	// If there is an error, it will be of type *PathError.
	//
	// On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
	// EPLAN9 error, wrapped in *PathError.
**/
function chown(_name:GoString, _uid:GoInt, _gid:GoInt):Error
	return ((null : stdgo.Error));

/**
	// Lchown changes the numeric uid and gid of the named file.
	// If the file is a symbolic link, it changes the uid and gid of the link itself.
	// If there is an error, it will be of type *PathError.
	//
	// On Windows, it always returns the syscall.EWINDOWS error, wrapped
	// in *PathError.
**/
function lchown(_name:GoString, _uid:GoInt, _gid:GoInt):Error
	return ((null : stdgo.Error));

/**
	// Chtimes changes the access and modification times of the named
	// file, similar to the Unix utime() or utimes() functions.
	//
	// The underlying filesystem may truncate or round the values to a
	// less precise time unit.
	// If there is an error, it will be of type *PathError.
**/
function chtimes(_name:GoString, _atime:stdgo.time.Time.Time, _mtime:stdgo.time.Time.Time):Error
	return ((null : stdgo.Error));

/**
	// NewFile returns a new File with the given file descriptor and
	// name. The returned value will be nil if fd is not a valid file
	// descriptor. On Unix systems, if the file descriptor is in
	// non-blocking mode, NewFile will attempt to return a pollable File
	// (one for which the SetDeadline methods work).
	//
	// After passing it to NewFile, fd may become invalid under the same
	// conditions described in the comments of the Fd method, and the same
	// constraints apply.
**/
function newFile(_fd:GoUIntptr, _name:GoString):File
	return null;

/**
	// Truncate changes the size of the named file.
	// If the file is a symbolic link, it changes the size of the link's target.
	// If there is an error, it will be of type *PathError.
**/
function truncate(_name:GoString, _size:GoInt64):Error
	return ((null : stdgo.Error));

/**
	// Remove removes the named file or (empty) directory.
	// If there is an error, it will be of type *PathError.
**/
function remove(_name:GoString):Error
	return ((null : stdgo.Error));

/**
	// Link creates newname as a hard link to the oldname file.
	// If there is an error, it will be of type *LinkError.
**/
function link(_oldname:GoString, _newname:GoString):Error
	return ((null : stdgo.Error));

/**
	// Symlink creates newname as a symbolic link to oldname.
	// On Windows, a symlink to a non-existent oldname creates a file symlink;
	// if oldname is later created as a directory the symlink will not work.
	// If there is an error, it will be of type *LinkError.
**/
function symlink(_oldname:GoString, _newname:GoString):Error
	return ((null : stdgo.Error));

/**
	// Readlink returns the destination of the named symbolic link.
	// If there is an error, it will be of type *PathError.
**/
function readlink(_name:GoString):{var _0:GoString; var _1:Error;}
	return {_0: (("" : GoString)), _1: ((null : stdgo.Error))};

/**
	// Getwd returns a rooted path name corresponding to the
	// current directory. If the current directory can be
	// reached via multiple paths (due to symbolic links),
	// Getwd may return any one of them.
**/
function getwd():{var _0:GoString; var _1:Error;}
	return {_0: (("" : GoString)), _1: ((null : stdgo.Error))};

/**
	// MkdirAll creates a directory named path,
	// along with any necessary parents, and returns nil,
	// or else returns an error.
	// The permission bits perm (before umask) are used for all
	// directories that MkdirAll creates.
	// If path is already a directory, MkdirAll does nothing
	// and returns nil.
**/
function mkdirAll(_path:GoString, _perm:FileMode):Error
	return ((null : stdgo.Error));

/**
	// RemoveAll removes path and any children it contains.
	// It removes everything it can but returns the first error
	// it encounters. If the path does not exist, RemoveAll
	// returns nil (no error).
	// If there is an error, it will be of type *PathError.
**/
function removeAll(_path:GoString):Error
	return ((null : stdgo.Error));

/**
	// IsPathSeparator reports whether c is a directory separator character.
**/
function isPathSeparator(_c:GoUInt8):Bool
	return false;

/**
	// Pipe returns a connected pair of Files; reads from r return bytes written to w.
	// It returns the files and an error, if any.
**/
function pipe():{var _0:File; var _1:File; var _2:Error;}
	return {_0: null, _1: null, _2: ((null : stdgo.Error))};

/**
	// Getuid returns the numeric user id of the caller.
	//
	// On Windows, it returns -1.
**/
function getuid():GoInt
	return ((0 : GoInt));

/**
	// Geteuid returns the numeric effective user id of the caller.
	//
	// On Windows, it returns -1.
**/
function geteuid():GoInt
	return ((0 : GoInt));

/**
	// Getgid returns the numeric group id of the caller.
	//
	// On Windows, it returns -1.
**/
function getgid():GoInt
	return ((0 : GoInt));

/**
	// Getegid returns the numeric effective group id of the caller.
	//
	// On Windows, it returns -1.
**/
function getegid():GoInt
	return ((0 : GoInt));

/**
	// Getgroups returns a list of the numeric ids of groups that the caller belongs to.
	//
	// On Windows, it returns syscall.EWINDOWS. See the os/user package
	// for a possible alternative.
**/
function getgroups():{var _0:Slice<GoInt>; var _1:Error;}
	return {_0: ((null : Slice<GoInt>)), _1: ((null : stdgo.Error))};

/**
	// Exit causes the current program to exit with the given status code.
	// Conventionally, code zero indicates success, non-zero an error.
	// The program terminates immediately; deferred functions are not run.
	//
	// For portability, the status code should be in the range [0, 125].
**/
function exit(_code:GoInt):Void
	return;

/**
	// Stat returns a FileInfo describing the named file.
	// If there is an error, it will be of type *PathError.
**/
function stat(_name:GoString):{var _0:FileInfo; var _1:Error;}
	return {_0: ((null : stdgo.io.fs.Fs.FileInfo)), _1: ((null : stdgo.Error))};

/**
	// Lstat returns a FileInfo describing the named file.
	// If the file is a symbolic link, the returned FileInfo
	// describes the symbolic link. Lstat makes no attempt to follow the link.
	// If there is an error, it will be of type *PathError.
**/
function lstat(_name:GoString):{var _0:FileInfo; var _1:Error;}
	return {_0: ((null : stdgo.io.fs.Fs.FileInfo)), _1: ((null : stdgo.Error))};

/**
	// Hostname returns the host name reported by the kernel.
**/
function hostname():{var _0:GoString; var _1:Error;}
	return {_0: (("" : GoString)), _1: ((null : stdgo.Error))};

/**
	// CreateTemp creates a new temporary file in the directory dir,
	// opens the file for reading and writing, and returns the resulting file.
	// The filename is generated by taking pattern and adding a random string to the end.
	// If pattern includes a "*", the random string replaces the last "*".
	// If dir is the empty string, CreateTemp uses the default directory for temporary files, as returned by TempDir.
	// Multiple programs or goroutines calling CreateTemp simultaneously will not choose the same file.
	// The caller can use the file's Name method to find the pathname of the file.
	// It is the caller's responsibility to remove the file when it is no longer needed.
**/
function createTemp(_dir:GoString, _pattern:GoString):{var _0:File; var _1:Error;}
	return {_0: null, _1: ((null : stdgo.Error))};

/**
	// MkdirTemp creates a new temporary directory in the directory dir
	// and returns the pathname of the new directory.
	// The new directory's name is generated by adding a random string to the end of pattern.
	// If pattern includes a "*", the random string replaces the last "*" instead.
	// If dir is the empty string, MkdirTemp uses the default directory for temporary files, as returned by TempDir.
	// Multiple programs or goroutines calling MkdirTemp simultaneously will not choose the same directory.
	// It is the caller's responsibility to remove the directory when it is no longer needed.
**/
function mkdirTemp(_dir:GoString, _pattern:GoString):{var _0:GoString; var _1:Error;}
	return {_0: (("" : GoString)), _1: ((null : stdgo.Error))};

/**
	// Getpagesize returns the underlying system's memory page size.
**/
function getpagesize():GoInt
	return ((0 : GoInt));

/**
	// SameFile reports whether fi1 and fi2 describe the same file.
	// For example, on Unix this means that the device and inode fields
	// of the two underlying structures are identical; on other systems
	// the decision may be based on the path names.
	// SameFile only applies to results returned by this package's Stat.
	// It returns false in other cases.
**/
function sameFile(_fi1:FileInfo, _fi2:FileInfo):Bool
	return false;

@:keep class SyscallError_static_extension {
	/**
		// Timeout reports whether this error represents a timeout.
	**/
	@:keep
	public static function timeout(_e:SyscallError):Bool
		return false;

	@:keep
	public static function unwrap(_e:SyscallError):Error
		return ((null : stdgo.Error));

	@:keep
	public static function error(_e:SyscallError):GoString
		return (("" : GoString));
}

class SyscallError_wrapper {
	/**
		// Timeout reports whether this error represents a timeout.
	**/
	@:keep
	public var timeout:() -> Bool = null;

	@:keep
	public var unwrap:() -> Error = null;
	@:keep
	public var error:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:SyscallError;
}

@:keep class Process_static_extension {
	/**
		// Signal sends a signal to the Process.
		// Sending Interrupt on Windows is not implemented.
	**/
	@:keep
	public static function signal(_p:Process, _sig:Signal):Error
		return ((null : stdgo.Error));

	/**
		// Wait waits for the Process to exit, and then returns a
		// ProcessState describing its status and an error, if any.
		// Wait releases any resources associated with the Process.
		// On most operating systems, the Process must be a child
		// of the current process or an error will be returned.
	**/
	@:keep
	public static function wait(_p:Process):{var _0:ProcessState; var _1:Error;}
		return {_0: null, _1: ((null : stdgo.Error))};

	/**
		// Kill causes the Process to exit immediately. Kill does not wait until
		// the Process has actually exited. This only kills the Process itself,
		// not any other processes it may have started.
	**/
	@:keep
	public static function kill(_p:Process):Error
		return ((null : stdgo.Error));

	/**
		// Release releases any resources associated with the Process p,
		// rendering it unusable in the future.
		// Release only needs to be called if Wait is not.
	**/
	@:keep
	public static function release(_p:Process):Error
		return ((null : stdgo.Error));
}

class Process_wrapper {
	/**
		// Signal sends a signal to the Process.
		// Sending Interrupt on Windows is not implemented.
	**/
	@:keep
	public var signal:Signal->Error = null;

	/**
		// Wait waits for the Process to exit, and then returns a
		// ProcessState describing its status and an error, if any.
		// Wait releases any resources associated with the Process.
		// On most operating systems, the Process must be a child
		// of the current process or an error will be returned.
	**/
	@:keep
	public var wait:() -> {
		var _0:ProcessState;
		var _1:Error;
	} = null;

	/**
		// Kill causes the Process to exit immediately. Kill does not wait until
		// the Process has actually exited. This only kills the Process itself,
		// not any other processes it may have started.
	**/
	@:keep
	public var kill:() -> Error = null;

	/**
		// Release releases any resources associated with the Process p,
		// rendering it unusable in the future.
		// Release only needs to be called if Wait is not.
	**/
	@:keep
	public var release:() -> Error = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:Process;
}

@:keep class ProcessState_static_extension {
	/**
		// ExitCode returns the exit code of the exited process, or -1
		// if the process hasn't exited or was terminated by a signal.
	**/
	@:keep
	public static function exitCode(_p:ProcessState):GoInt
		return ((0 : GoInt));

	@:keep
	public static function toString(_p:ProcessState):GoString
		return (("" : GoString));

	/**
		// Pid returns the process id of the exited process.
	**/
	@:keep
	public static function pid(_p:ProcessState):GoInt
		return ((0 : GoInt));

	/**
		// SysUsage returns system-dependent resource usage information about
		// the exited process. Convert it to the appropriate underlying
		// type, such as *syscall.Rusage on Unix, to access its contents.
		// (On Unix, *syscall.Rusage matches struct rusage as defined in the
		// getrusage(2) manual page.)
	**/
	@:keep
	public static function sysUsage(_p:ProcessState):AnyInterface
		return ((null : AnyInterface));

	/**
		// Sys returns system-dependent exit information about
		// the process. Convert it to the appropriate underlying
		// type, such as syscall.WaitStatus on Unix, to access its contents.
	**/
	@:keep
	public static function sys(_p:ProcessState):AnyInterface
		return ((null : AnyInterface));

	/**
		// Success reports whether the program exited successfully,
		// such as with exit status 0 on Unix.
	**/
	@:keep
	public static function success(_p:ProcessState):Bool
		return false;

	/**
		// Exited reports whether the program has exited.
		// On Unix systems this reports true if the program exited due to calling exit,
		// but false if the program terminated due to a signal.
	**/
	@:keep
	public static function exited(_p:ProcessState):Bool
		return false;

	/**
		// SystemTime returns the system CPU time of the exited process and its children.
	**/
	@:keep
	public static function systemTime(_p:ProcessState):stdgo.time.Time.Duration
		return new stdgo.time.Time.Duration();

	/**
		// UserTime returns the user CPU time of the exited process and its children.
	**/
	@:keep
	public static function userTime(_p:ProcessState):stdgo.time.Time.Duration
		return new stdgo.time.Time.Duration();
}

class ProcessState_wrapper {
	/**
		// ExitCode returns the exit code of the exited process, or -1
		// if the process hasn't exited or was terminated by a signal.
	**/
	@:keep
	public var exitCode:() -> GoInt = null;

	@:keep
	public var toString:() -> GoString = null;

	/**
		// Pid returns the process id of the exited process.
	**/
	@:keep
	public var pid:() -> GoInt = null;

	/**
		// SysUsage returns system-dependent resource usage information about
		// the exited process. Convert it to the appropriate underlying
		// type, such as *syscall.Rusage on Unix, to access its contents.
		// (On Unix, *syscall.Rusage matches struct rusage as defined in the
		// getrusage(2) manual page.)
	**/
	@:keep
	public var sysUsage:() -> AnyInterface = null;

	/**
		// Sys returns system-dependent exit information about
		// the process. Convert it to the appropriate underlying
		// type, such as syscall.WaitStatus on Unix, to access its contents.
	**/
	@:keep
	public var sys:() -> AnyInterface = null;

	/**
		// Success reports whether the program exited successfully,
		// such as with exit status 0 on Unix.
	**/
	@:keep
	public var success:() -> Bool = null;

	/**
		// Exited reports whether the program has exited.
		// On Unix systems this reports true if the program exited due to calling exit,
		// but false if the program terminated due to a signal.
	**/
	@:keep
	public var exited:() -> Bool = null;

	/**
		// SystemTime returns the system CPU time of the exited process and its children.
	**/
	@:keep
	public var systemTime:() -> stdgo.time.Time.Duration = null;

	/**
		// UserTime returns the user CPU time of the exited process and its children.
	**/
	@:keep
	public var userTime:() -> stdgo.time.Time.Duration = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:ProcessState;
}

@:keep class LinkError_static_extension {
	@:keep
	public static function unwrap(_e:LinkError):Error
		return ((null : stdgo.Error));

	@:keep
	public static function error(_e:LinkError):GoString
		return (("" : GoString));
}

class LinkError_wrapper {
	@:keep
	public var unwrap:() -> Error = null;
	@:keep
	public var error:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:LinkError;
}

@:keep class File_static_extension {
	/**
		// Stat returns the FileInfo structure describing file.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public static function stat(_f:File):{var _0:FileInfo; var _1:Error;}
		return {_0: ((null : stdgo.io.fs.Fs.FileInfo)), _1: ((null : stdgo.Error))};

	/**
		// Fd returns the integer Unix file descriptor referencing the open file.
		// If f is closed, the file descriptor becomes invalid.
		// If f is garbage collected, a finalizer may close the file descriptor,
		// making it invalid; see runtime.SetFinalizer for more information on when
		// a finalizer might be run. On Unix systems this will cause the SetDeadline
		// methods to stop working.
		// Because file descriptors can be reused, the returned file descriptor may
		// only be closed through the Close method of f, or by its finalizer during
		// garbage collection. Otherwise, during garbage collection the finalizer
		// may close an unrelated file descriptor with the same (reused) number.
		//
		// As an alternative, see the f.SyscallConn method.
	**/
	@:keep
	public static function fd(_f:File):GoUIntptr
		return ((0 : GoUIntptr));

	/**
		// Chdir changes the current working directory to the file,
		// which must be a directory.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public static function chdir(_f:File):Error
		return ((null : stdgo.Error));

	/**
		// Sync commits the current contents of the file to stable storage.
		// Typically, this means flushing the file system's in-memory copy
		// of recently written data to disk.
	**/
	@:keep
	public static function sync(_f:File):Error
		return ((null : stdgo.Error));

	/**
		// Truncate changes the size of the file.
		// It does not change the I/O offset.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public static function truncate(_f:File, _size:GoInt64):Error
		return ((null : stdgo.Error));

	/**
		// Chown changes the numeric uid and gid of the named file.
		// If there is an error, it will be of type *PathError.
		//
		// On Windows, it always returns the syscall.EWINDOWS error, wrapped
		// in *PathError.
	**/
	@:keep
	public static function chown(_f:File, _uid:GoInt, _gid:GoInt):Error
		return ((null : stdgo.Error));

	/**
		// Close closes the File, rendering it unusable for I/O.
		// On files that support SetDeadline, any pending I/O operations will
		// be canceled and return immediately with an ErrClosed error.
		// Close will return an error if it has already been called.
	**/
	@:keep
	public static function close(_f:File):Error
		return ((null : stdgo.Error));

	/**
		// SyscallConn returns a raw file.
		// This implements the syscall.Conn interface.
	**/
	@:keep
	public static function syscallConn(_f:File):{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;}
		return {_0: ((null : stdgo.syscall.Syscall.RawConn)), _1: ((null : stdgo.Error))};

	/**
		// SetWriteDeadline sets the deadline for any future Write calls and any
		// currently-blocked Write call.
		// Even if Write times out, it may return n > 0, indicating that
		// some of the data was successfully written.
		// A zero value for t means Write will not time out.
		// Not all files support setting deadlines; see SetDeadline.
	**/
	@:keep
	public static function setWriteDeadline(_f:File, _t:stdgo.time.Time.Time):Error
		return ((null : stdgo.Error));

	/**
		// SetReadDeadline sets the deadline for future Read calls and any
		// currently-blocked Read call.
		// A zero value for t means Read will not time out.
		// Not all files support setting deadlines; see SetDeadline.
	**/
	@:keep
	public static function setReadDeadline(_f:File, _t:stdgo.time.Time.Time):Error
		return ((null : stdgo.Error));

	/**
		// SetDeadline sets the read and write deadlines for a File.
		// It is equivalent to calling both SetReadDeadline and SetWriteDeadline.
		//
		// Only some kinds of files support setting a deadline. Calls to SetDeadline
		// for files that do not support deadlines will return ErrNoDeadline.
		// On most systems ordinary files do not support deadlines, but pipes do.
		//
		// A deadline is an absolute time after which I/O operations fail with an
		// error instead of blocking. The deadline applies to all future and pending
		// I/O, not just the immediately following call to Read or Write.
		// After a deadline has been exceeded, the connection can be refreshed
		// by setting a deadline in the future.
		//
		// If the deadline is exceeded a call to Read or Write or to other I/O
		// methods will return an error that wraps ErrDeadlineExceeded.
		// This can be tested using errors.Is(err, os.ErrDeadlineExceeded).
		// That error implements the Timeout method, and calling the Timeout
		// method will return true, but there are other possible errors for which
		// the Timeout will return true even if the deadline has not been exceeded.
		//
		// An idle timeout can be implemented by repeatedly extending
		// the deadline after successful Read or Write calls.
		//
		// A zero value for t means I/O operations will not time out.
	**/
	@:keep
	public static function setDeadline(_f:File, _t:stdgo.time.Time.Time):Error
		return ((null : stdgo.Error));

	/**
		// Chmod changes the mode of the file to mode.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public static function chmod(_f:File, _mode:FileMode):Error
		return ((null : stdgo.Error));

	/**
		// WriteString is like Write, but writes the contents of string s rather than
		// a slice of bytes.
	**/
	@:keep
	public static function writeString(_f:File, _s:GoString):{var _0:GoInt; var _1:Error;}
		return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

	/**
		// Seek sets the offset for the next Read or Write on file to offset, interpreted
		// according to whence: 0 means relative to the origin of the file, 1 means
		// relative to the current offset, and 2 means relative to the end.
		// It returns the new offset and an error, if any.
		// The behavior of Seek on a file opened with O_APPEND is not specified.
		//
		// If f is a directory, the behavior of Seek varies by operating
		// system; you can seek to the beginning of the directory on Unix-like
		// operating systems, but not on Windows.
	**/
	@:keep
	public static function seek(_f:File, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
		return {_0: ((0 : GoInt64)), _1: ((null : stdgo.Error))};

	/**
		// WriteAt writes len(b) bytes to the File starting at byte offset off.
		// It returns the number of bytes written and an error, if any.
		// WriteAt returns a non-nil error when n != len(b).
		//
		// If file was opened with the O_APPEND flag, WriteAt returns an error.
	**/
	@:keep
	public static function writeAt(_f:File, _b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

	/**
		// Write writes len(b) bytes from b to the File.
		// It returns the number of bytes written and an error, if any.
		// Write returns a non-nil error when n != len(b).
	**/
	@:keep
	public static function write(_f:File, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

	/**
		// ReadFrom implements io.ReaderFrom.
	**/
	@:keep
	public static function readFrom(_f:File, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		return {_0: ((0 : GoInt64)), _1: ((null : stdgo.Error))};

	/**
		// ReadAt reads len(b) bytes from the File starting at byte offset off.
		// It returns the number of bytes read and the error, if any.
		// ReadAt always returns a non-nil error when n < len(b).
		// At end of file, that error is io.EOF.
	**/
	@:keep
	public static function readAt(_f:File, _b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

	/**
		// Read reads up to len(b) bytes from the File and stores them in b.
		// It returns the number of bytes read and any error encountered.
		// At end of file, Read returns 0, io.EOF.
	**/
	@:keep
	public static function read(_f:File, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

	/**
		// Name returns the name of the file as presented to Open.
	**/
	@:keep
	public static function name(_f:File):GoString
		return (("" : GoString));

	/**
		// ReadDir reads the contents of the directory associated with the file f
		// and returns a slice of DirEntry values in directory order.
		// Subsequent calls on the same file will yield later DirEntry records in the directory.
		//
		// If n > 0, ReadDir returns at most n DirEntry records.
		// In this case, if ReadDir returns an empty slice, it will return an error explaining why.
		// At the end of a directory, the error is io.EOF.
		//
		// If n <= 0, ReadDir returns all the DirEntry records remaining in the directory.
		// When it succeeds, it returns a nil error (not io.EOF).
	**/
	@:keep
	public static function readDir(_f:File, _n:GoInt):{var _0:Slice<DirEntry>; var _1:Error;}
		return {_0: ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1: ((null : stdgo.Error))};

	/**
		// Readdirnames reads the contents of the directory associated with file
		// and returns a slice of up to n names of files in the directory,
		// in directory order. Subsequent calls on the same file will yield
		// further names.
		//
		// If n > 0, Readdirnames returns at most n names. In this case, if
		// Readdirnames returns an empty slice, it will return a non-nil error
		// explaining why. At the end of a directory, the error is io.EOF.
		//
		// If n <= 0, Readdirnames returns all the names from the directory in
		// a single slice. In this case, if Readdirnames succeeds (reads all
		// the way to the end of the directory), it returns the slice and a
		// nil error. If it encounters an error before the end of the
		// directory, Readdirnames returns the names read until that point and
		// a non-nil error.
	**/
	@:keep
	public static function readdirnames(_f:File, _n:GoInt):{var _0:Slice<GoString>; var _1:Error;}
		return {_0: ((null : Slice<GoString>)), _1: ((null : stdgo.Error))};

	/**
		// Readdir reads the contents of the directory associated with file and
		// returns a slice of up to n FileInfo values, as would be returned
		// by Lstat, in directory order. Subsequent calls on the same file will yield
		// further FileInfos.
		//
		// If n > 0, Readdir returns at most n FileInfo structures. In this case, if
		// Readdir returns an empty slice, it will return a non-nil error
		// explaining why. At the end of a directory, the error is io.EOF.
		//
		// If n <= 0, Readdir returns all the FileInfo from the directory in
		// a single slice. In this case, if Readdir succeeds (reads all
		// the way to the end of the directory), it returns the slice and a
		// nil error. If it encounters an error before the end of the
		// directory, Readdir returns the FileInfo read until that point
		// and a non-nil error.
		//
		// Most clients are better served by the more efficient ReadDir method.
	**/
	@:keep
	public static function readdir(_f:File, _n:GoInt):{var _0:Slice<FileInfo>; var _1:Error;}
		return {_0: ((null : Slice<stdgo.io.fs.Fs.FileInfo>)), _1: ((null : stdgo.Error))};
}

class File_wrapper {
	/**
		// Stat returns the FileInfo structure describing file.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public var stat:() -> {
		var _0:FileInfo;
		var _1:Error;
	} = null;

	/**
		// Fd returns the integer Unix file descriptor referencing the open file.
		// If f is closed, the file descriptor becomes invalid.
		// If f is garbage collected, a finalizer may close the file descriptor,
		// making it invalid; see runtime.SetFinalizer for more information on when
		// a finalizer might be run. On Unix systems this will cause the SetDeadline
		// methods to stop working.
		// Because file descriptors can be reused, the returned file descriptor may
		// only be closed through the Close method of f, or by its finalizer during
		// garbage collection. Otherwise, during garbage collection the finalizer
		// may close an unrelated file descriptor with the same (reused) number.
		//
		// As an alternative, see the f.SyscallConn method.
	**/
	@:keep
	public var fd:() -> GoUIntptr = null;

	/**
		// Chdir changes the current working directory to the file,
		// which must be a directory.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public var chdir:() -> Error = null;

	/**
		// Sync commits the current contents of the file to stable storage.
		// Typically, this means flushing the file system's in-memory copy
		// of recently written data to disk.
	**/
	@:keep
	public var sync:() -> Error = null;

	/**
		// Truncate changes the size of the file.
		// It does not change the I/O offset.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public var truncate:GoInt64->Error = null;

	/**
		// Chown changes the numeric uid and gid of the named file.
		// If there is an error, it will be of type *PathError.
		//
		// On Windows, it always returns the syscall.EWINDOWS error, wrapped
		// in *PathError.
	**/
	@:keep
	public var chown:(GoInt, GoInt) -> Error = null;

	/**
		// Close closes the File, rendering it unusable for I/O.
		// On files that support SetDeadline, any pending I/O operations will
		// be canceled and return immediately with an ErrClosed error.
		// Close will return an error if it has already been called.
	**/
	@:keep
	public var close:() -> Error = null;

	/**
		// SyscallConn returns a raw file.
		// This implements the syscall.Conn interface.
	**/
	@:keep
	public var syscallConn:() -> {
		var _0:stdgo.syscall.Syscall.RawConn;
		var _1:Error;
	} = null;

	/**
		// SetWriteDeadline sets the deadline for any future Write calls and any
		// currently-blocked Write call.
		// Even if Write times out, it may return n > 0, indicating that
		// some of the data was successfully written.
		// A zero value for t means Write will not time out.
		// Not all files support setting deadlines; see SetDeadline.
	**/
	@:keep
	public var setWriteDeadline:stdgo.time.Time.Time->Error = null;

	/**
		// SetReadDeadline sets the deadline for future Read calls and any
		// currently-blocked Read call.
		// A zero value for t means Read will not time out.
		// Not all files support setting deadlines; see SetDeadline.
	**/
	@:keep
	public var setReadDeadline:stdgo.time.Time.Time->Error = null;

	/**
		// SetDeadline sets the read and write deadlines for a File.
		// It is equivalent to calling both SetReadDeadline and SetWriteDeadline.
		//
		// Only some kinds of files support setting a deadline. Calls to SetDeadline
		// for files that do not support deadlines will return ErrNoDeadline.
		// On most systems ordinary files do not support deadlines, but pipes do.
		//
		// A deadline is an absolute time after which I/O operations fail with an
		// error instead of blocking. The deadline applies to all future and pending
		// I/O, not just the immediately following call to Read or Write.
		// After a deadline has been exceeded, the connection can be refreshed
		// by setting a deadline in the future.
		//
		// If the deadline is exceeded a call to Read or Write or to other I/O
		// methods will return an error that wraps ErrDeadlineExceeded.
		// This can be tested using errors.Is(err, os.ErrDeadlineExceeded).
		// That error implements the Timeout method, and calling the Timeout
		// method will return true, but there are other possible errors for which
		// the Timeout will return true even if the deadline has not been exceeded.
		//
		// An idle timeout can be implemented by repeatedly extending
		// the deadline after successful Read or Write calls.
		//
		// A zero value for t means I/O operations will not time out.
	**/
	@:keep
	public var setDeadline:stdgo.time.Time.Time->Error = null;

	/**
		// Chmod changes the mode of the file to mode.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public var chmod:FileMode->Error = null;

	/**
		// WriteString is like Write, but writes the contents of string s rather than
		// a slice of bytes.
	**/
	@:keep
	public var writeString:GoString -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// Seek sets the offset for the next Read or Write on file to offset, interpreted
		// according to whence: 0 means relative to the origin of the file, 1 means
		// relative to the current offset, and 2 means relative to the end.
		// It returns the new offset and an error, if any.
		// The behavior of Seek on a file opened with O_APPEND is not specified.
		//
		// If f is a directory, the behavior of Seek varies by operating
		// system; you can seek to the beginning of the directory on Unix-like
		// operating systems, but not on Windows.
	**/
	@:keep
	public var seek:(GoInt64, GoInt) -> {
		var _0:GoInt64;
		var _1:Error;
	} = null;

	/**
		// WriteAt writes len(b) bytes to the File starting at byte offset off.
		// It returns the number of bytes written and an error, if any.
		// WriteAt returns a non-nil error when n != len(b).
		//
		// If file was opened with the O_APPEND flag, WriteAt returns an error.
	**/
	@:keep
	public var writeAt:(Slice<GoByte>, GoInt64) -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// Write writes len(b) bytes from b to the File.
		// It returns the number of bytes written and an error, if any.
		// Write returns a non-nil error when n != len(b).
	**/
	@:keep
	public var write:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// ReadFrom implements io.ReaderFrom.
	**/
	@:keep
	public var readFrom:stdgo.io.Io.Reader -> {
		var _0:GoInt64;
		var _1:Error;
	} = null;

	/**
		// ReadAt reads len(b) bytes from the File starting at byte offset off.
		// It returns the number of bytes read and the error, if any.
		// ReadAt always returns a non-nil error when n < len(b).
		// At end of file, that error is io.EOF.
	**/
	@:keep
	public var readAt:(Slice<GoByte>, GoInt64) -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// Read reads up to len(b) bytes from the File and stores them in b.
		// It returns the number of bytes read and any error encountered.
		// At end of file, Read returns 0, io.EOF.
	**/
	@:keep
	public var read:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// Name returns the name of the file as presented to Open.
	**/
	@:keep
	public var name:() -> GoString = null;

	/**
		// ReadDir reads the contents of the directory associated with the file f
		// and returns a slice of DirEntry values in directory order.
		// Subsequent calls on the same file will yield later DirEntry records in the directory.
		//
		// If n > 0, ReadDir returns at most n DirEntry records.
		// In this case, if ReadDir returns an empty slice, it will return an error explaining why.
		// At the end of a directory, the error is io.EOF.
		//
		// If n <= 0, ReadDir returns all the DirEntry records remaining in the directory.
		// When it succeeds, it returns a nil error (not io.EOF).
	**/
	@:keep
	public var readDir:GoInt -> {
		var _0:Slice<DirEntry>;
		var _1:Error;
	} = null;

	/**
		// Readdirnames reads the contents of the directory associated with file
		// and returns a slice of up to n names of files in the directory,
		// in directory order. Subsequent calls on the same file will yield
		// further names.
		//
		// If n > 0, Readdirnames returns at most n names. In this case, if
		// Readdirnames returns an empty slice, it will return a non-nil error
		// explaining why. At the end of a directory, the error is io.EOF.
		//
		// If n <= 0, Readdirnames returns all the names from the directory in
		// a single slice. In this case, if Readdirnames succeeds (reads all
		// the way to the end of the directory), it returns the slice and a
		// nil error. If it encounters an error before the end of the
		// directory, Readdirnames returns the names read until that point and
		// a non-nil error.
	**/
	@:keep
	public var readdirnames:GoInt -> {
		var _0:Slice<GoString>;
		var _1:Error;
	} = null;

	/**
		// Readdir reads the contents of the directory associated with file and
		// returns a slice of up to n FileInfo values, as would be returned
		// by Lstat, in directory order. Subsequent calls on the same file will yield
		// further FileInfos.
		//
		// If n > 0, Readdir returns at most n FileInfo structures. In this case, if
		// Readdir returns an empty slice, it will return a non-nil error
		// explaining why. At the end of a directory, the error is io.EOF.
		//
		// If n <= 0, Readdir returns all the FileInfo from the directory in
		// a single slice. In this case, if Readdir succeeds (reads all
		// the way to the end of the directory), it returns the slice and a
		// nil error. If it encounters an error before the end of the
		// directory, Readdir returns the FileInfo read until that point
		// and a non-nil error.
		//
		// Most clients are better served by the more efficient ReadDir method.
	**/
	@:keep
	public var readdir:GoInt -> {
		var _0:Slice<FileInfo>;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:File;
}
