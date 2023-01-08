package stdgo.os;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package os provides a platform-independent interface to operating system
	// functionality. The design is Unix-like, although the error handling is
	// Go-like; failing calls return values of type error rather than error numbers.
	// Often, more information is available within the error. For example,
	// if a call that takes a file name fails, such as Open or Stat, the error
	// will include the failing file name when printed and will be of type
	// *PathError, which may be unpacked for more information.
	//
	// The os interface is intended to be uniform across all operating systems.
	// Features not generally available appear in the system-specific package syscall.
	//
	// Here is a simple example, opening a file and reading some of it.
	//
	//	file, err := os.Open("file.go") // For read access.
	//	if err != nil {
	//		log.Fatal(err)
	//	}
	//
	// If the open fails, the error string will be self-explanatory, like
	//
	//	open file.go: no such file or directory
	//
	// The file's data can then be read into a slice of bytes. Read and
	// Write take their byte counts from the length of the argument slice.
	//
	//	data := make([]byte, 100)
	//	count, err := file.Read(data)
	//	if err != nil {
	//		log.Fatal(err)
	//	}
	//	fmt.Printf("read %d bytes: %q\n", count, data[:count])
	//
	// Note: The maximum number of concurrent operations on a File may be limited by
	// the OS or the system. The number should be high, but exceeding it may degrade
	// performance or cause other issues.
**/
private var __go2hxdoc__package:Bool;

private var _dirBufPool:stdgo.sync.Sync.Pool = ({} : stdgo.sync.Sync.Pool);

/**
	// "invalid argument"// ErrInvalid indicates an invalid argument.
	// Methods on File will return this error when the receiver is nil.
**/
var errInvalid:Error = (null : Error);

/**
	// "permission denied"// Portable analogs of some common system call errors.
	//
	// Errors returned from this package may be tested against these errors
	// with errors.Is.
**/
var errPermission:Error = (null : Error);

/**
	// "file already exists"// Portable analogs of some common system call errors.
	//
	// Errors returned from this package may be tested against these errors
	// with errors.Is.
**/
var errExist:Error = (null : Error);

/**
	// "file does not exist"// Portable analogs of some common system call errors.
	//
	// Errors returned from this package may be tested against these errors
	// with errors.Is.
**/
var errNotExist:Error = (null : Error);

/**
	// "file already closed"// Portable analogs of some common system call errors.
	//
	// Errors returned from this package may be tested against these errors
	// with errors.Is.
**/
var errClosed:Error = (null : Error);

/**
	// "file type does not support deadline"// Portable analogs of some common system call errors.
	//
	// Errors returned from this package may be tested against these errors
	// with errors.Is.
**/
var errNoDeadline:Error = (null : Error);

/**
	// "i/o timeout"// Portable analogs of some common system call errors.
	//
	// Errors returned from this package may be tested against these errors
	// with errors.Is.
**/
var errDeadlineExceeded:Error = (null : Error);

/**
	// ErrProcessDone indicates a Process has finished.
**/
var errProcessDone:Error = (null : Error);

/**
	// The only signal values guaranteed to be present in the os package on all
	// systems are os.Interrupt (send the process an interrupt) and os.Kill (force
	// the process to exit). On Windows, sending os.Interrupt to a process with
	// os.Process.Signal is not implemented; it will return an error instead of
	// sending a signal.
**/
var interrupt:Signal = (null : Signal);

/**
	// The only signal values guaranteed to be present in the os package on all
	// systems are os.Interrupt (send the process an interrupt) and os.Kill (force
	// the process to exit). On Windows, sending os.Interrupt to a process with
	// os.Process.Signal is not implemented; it will return an error instead of
	// sending a signal.
**/
var kill:Signal = (null : Signal);

private var _errWriteAtInAppendMode:Error = (null : Error);

/**
	// Stdin, Stdout, and Stderr are open Files pointing to the standard input,
	// standard output, and standard error file descriptors.
	//
	// Note that the Go runtime writes to standard error for panics and crashes;
	// closing Stderr may cause those messages to go elsewhere, perhaps
	// to a file opened later.
**/
var stdin:Ref<File> = new File(Sys.stdin(), null);

/**
	// Stdin, Stdout, and Stderr are open Files pointing to the standard input,
	// standard output, and standard error file descriptors.
	//
	// Note that the Go runtime writes to standard error for panics and crashes;
	// closing Stderr may cause those messages to go elsewhere, perhaps
	// to a file opened later.
**/
var stdout:Ref<File> = new File(null, Sys.stdout());

/**
	// Stdin, Stdout, and Stderr are open Files pointing to the standard input,
	// standard output, and standard error file descriptors.
	//
	// Note that the Go runtime writes to standard error for panics and crashes;
	// closing Stderr may cause those messages to go elsewhere, perhaps
	// to a file opened later.
**/
var stderr:Ref<File> = new File(null, Sys.stderr());

private var _errPatternHasSeparator:Error = (null : Error);

/**
	// lstat is overridden in tests.
**/
private var _lstat:GoString -> {
	var _0:stdgo.io.fs.Fs.FileInfo;
	var _1:Error;
} = null;

var atime:stdgo.io.fs.Fs.FileInfo->stdgo.time.Time.Time = null;

var lstatP:Ref<GoString -> {
	var _0:stdgo.io.fs.Fs.FileInfo;
	var _1:Error;
}> = (null : Ref<GoString -> {
	var _0:stdgo.io.fs.Fs.FileInfo;
	var _1:Error;
}>);

var errWriteAtInAppendMode:Error = (null : Error);
var testingForceReadDirLstat:Pointer<Bool> = (null : Pointer<Bool>);
var errPatternHasSeparator:Error = (null : Error);

var splitPath:GoString -> {
	var _0:GoString;
	var _1:GoString;
} = null;

private final _readdirName:T_readdirMode = ((0 : GoInt) : T_readdirMode);
private final _readdirDirEntry:T_readdirMode = ((0 : GoInt) : T_readdirMode);
private final _readdirFileInfo:T_readdirMode = ((0 : GoInt) : T_readdirMode);

/**
	// testingForceReadDirLstat forces ReadDir to call Lstat, for testing that code path.
	// This can be difficult to provoke on some Unix systems otherwise.
**/
private var _testingForceReadDirLstat:Bool = false;

/**
	// More than 5760 to work around https://golang.org/issue/24015.
**/
private final _blockSize:GoUInt64 = (0 : GoUInt64);

private final _isBigEndian:InvalidType = null;

/**
	// open the file read-only.// Exactly one of O_RDONLY, O_WRONLY, or O_RDWR must be specified.
**/
final o_RDONLY:GoInt = (0 : GoInt);

/**
	// open the file write-only.// Flags to OpenFile wrapping those of the underlying system. Not all
	// flags may be implemented on a given system.
**/
final o_WRONLY:GoInt = (0 : GoInt);

/**
	// open the file read-write.// Flags to OpenFile wrapping those of the underlying system. Not all
	// flags may be implemented on a given system.
**/
final o_RDWR:GoInt = (0 : GoInt);

/**
	// append data to the file when writing.// The remaining values may be or'ed in to control behavior.
**/
final o_APPEND:GoInt = (0 : GoInt);

/**
	// create a new file if none exists.// Flags to OpenFile wrapping those of the underlying system. Not all
	// flags may be implemented on a given system.
**/
final o_CREATE:GoInt = (0 : GoInt);

/**
	// used with O_CREATE, file must not exist.// Flags to OpenFile wrapping those of the underlying system. Not all
	// flags may be implemented on a given system.
**/
final o_EXCL:GoInt = (0 : GoInt);

/**
	// open for synchronous I/O.// Flags to OpenFile wrapping those of the underlying system. Not all
	// flags may be implemented on a given system.
**/
final o_SYNC:GoInt = (0 : GoInt);

/**
	// truncate regular writable file when opened.// Flags to OpenFile wrapping those of the underlying system. Not all
	// flags may be implemented on a given system.
**/
final o_TRUNC:GoInt = (0 : GoInt);

/**
	// seek relative to the origin of the file// Seek whence values.
	//
	// Deprecated: Use io.SeekStart, io.SeekCurrent, and io.SeekEnd.
**/
final seek_SET:GoInt = (0 : GoInt);

/**
	// seek relative to the current offset// Seek whence values.
	//
	// Deprecated: Use io.SeekStart, io.SeekCurrent, and io.SeekEnd.
**/
final seek_CUR:GoInt = (0 : GoInt);

/**
	// seek relative to the end// Seek whence values.
	//
	// Deprecated: Use io.SeekStart, io.SeekCurrent, and io.SeekEnd.
**/
final seek_END:GoInt = (0 : GoInt);

private final _kindNewFile:T_newFileKind = ((0 : GoInt) : T_newFileKind);
private final _kindOpenFile:T_newFileKind = ((0 : GoInt) : T_newFileKind);
private final _kindPipe:T_newFileKind = ((0 : GoInt) : T_newFileKind);
private final _kindNonBlock:T_newFileKind = ((0 : GoInt) : T_newFileKind);

/**
	// DevNull is the name of the operating system's “null device.”
	// On Unix-like systems, it is "/dev/null"; on Windows, "NUL".
**/
final devNull:GoString = ("" : GoString);

private var _getwdCache:T__struct_0 = ({mutex: ({} : stdgo.sync.Sync.Mutex), _dir: ("" : GoString)} : T__struct_0);

/**
	// OS-specific path separator
**/
final pathSeparator:GoInt32 = (0 : GoInt32);

/**
	// OS-specific path list separator
**/
final pathListSeparator:GoInt32 = (0 : GoInt32);

/**
	// Args hold the command-line arguments, starting with the program name.
**/
var args:Slice<GoString> = (null : Slice<GoString>);

/**
	// According to sticky(8), neither open(2) nor mkdir(2) will create
	// a file with the sticky bit set.
**/
private final _supportsCreateWithStickyBit:InvalidType = null;

private final _hex:GoString = ("" : GoString);

/**
	// supportsCloseOnExec reports whether the platform supports the
	// O_CLOEXEC flag.
**/
private final _supportsCloseOnExec:InvalidType = null;

/**
	// d: is a directory// The single letters are the abbreviations
	// used by the String method's formatting.
**/
final modeDir:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// a: append-only// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeAppend:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// l: exclusive use// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeExclusive:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// T: temporary file; Plan 9 only// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeTemporary:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// L: symbolic link// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeSymlink:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// D: device file// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeDevice:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// p: named pipe (FIFO)// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeNamedPipe:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// S: Unix domain socket// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeSocket:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// u: setuid// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeSetuid:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// g: setgid// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeSetgid:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// c: Unix character device, when ModeDevice is set// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeCharDevice:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// t: sticky// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeSticky:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// ?: non-regular file; nothing else is known about this file// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modeIrregular:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// Mask for the type bits. For regular files, none will be set.
**/
final modeType:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

/**
	// Unix permission bits, 0o777// The defined file mode bits are the most significant bits of the FileMode.
	// The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
	// The values of these bits should be considered part of the public API and
	// may be used in wire protocols or disk representations: they must not be
	// changed, although new bits might be added.
**/
final modePerm:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);

private typedef T_timeout = StructType & {
	public function timeout():Bool;
};

/**
	// A Signal represents an operating system signal.
	// The usual underlying implementation is operating system-dependent:
	// on Unix it is syscall.Signal.
**/
typedef Signal = StructType & {
	public function string():GoString;

	/**
		// to distinguish from other Stringers
	**/
	public function signal():Void;
};

/**
	// Auxiliary information if the File describes a directory
**/
@:structInit @:using(stdgo.os.Os.T_dirInfo_static_extension) private class T_dirInfo {
	/**
		// buffer for directory I/O
	**/
	public var _buf:Ref<Slice<GoUInt8>> = null;

	/**
		// length of buf; return value from Getdirentries
	**/
	public var _nbuf:GoInt = 0;

	/**
		// location of next record in buf.
	**/
	public var _bufp:GoInt = 0;

	public function new(?_buf:Ref<Slice<GoUInt8>>, ?_nbuf:GoInt, ?_bufp:GoInt) {
		if (_buf != null)
			this._buf = _buf;
		if (_nbuf != null)
			this._nbuf = _nbuf;
		if (_bufp != null)
			this._bufp = _bufp;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_dirInfo(_buf, _nbuf, _bufp);
	}
}

/**
	// SyscallError records an error from a specific system call.
**/
@:structInit @:using(stdgo.os.Os.SyscallError_static_extension) class SyscallError {
	public var syscall:GoString = "";
	public var err:Error = (null : Error);

	public function new(?syscall:GoString, ?err:Error) {
		if (syscall != null)
			this.syscall = syscall;
		if (err != null)
			this.err = err;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new SyscallError(syscall, err);
	}
}

/**
	// Process stores the information about a process created by StartProcess.
**/
@:structInit @:using(stdgo.os.Os.Process_static_extension) class Process {
	public var pid:GoInt = 0;

	/**
		// handle is accessed atomically on Windows
	**/
	public var _handle:GoUIntptr = 0;

	/**
		// process has been successfully waited on, non zero if true
	**/
	public var _isdone:GoUInt32 = 0;

	/**
		// avoid race between wait and signal
	**/
	public var _sigMu:stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);

	public function new(?pid:GoInt, ?_handle:GoUIntptr, ?_isdone:GoUInt32, ?_sigMu:stdgo.sync.Sync.RWMutex) {
		if (pid != null)
			this.pid = pid;
		if (_handle != null)
			this._handle = _handle;
		if (_isdone != null)
			this._isdone = _isdone;
		if (_sigMu != null)
			this._sigMu = _sigMu;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Process(pid, _handle, _isdone, _sigMu);
	}
}

/**
	// ProcAttr holds the attributes that will be applied to a new process
	// started by StartProcess.
**/
@:structInit class ProcAttr {
	/**
		// If Dir is non-empty, the child changes into the directory before
		// creating the process.
	**/
	public var dir:GoString = "";

	/**
		// If Env is non-nil, it gives the environment variables for the
		// new process in the form returned by Environ.
		// If it is nil, the result of Environ will be used.
	**/
	public var env:Slice<GoString> = (null : Slice<GoString>);

	/**
		// Files specifies the open files inherited by the new process. The
		// first three entries correspond to standard input, standard output, and
		// standard error. An implementation may support additional entries,
		// depending on the underlying operating system. A nil entry corresponds
		// to that file being closed when the process starts.
		// On Unix systems, StartProcess will change these File values
		// to blocking mode, which means that SetDeadline will stop working
		// and calling Close will not interrupt a Read or Write.
	**/
	public var files:Slice<Ref<File>> = (null : Slice<Ref<File>>);

	/**
		// Operating system-specific process creation attributes.
		// Note that setting this field means that your program
		// may not execute properly or even compile on some
		// operating systems.
	**/
	public var sys:Ref<stdgo.syscall.Syscall.SysProcAttr> = (null : Ref<stdgo.syscall.Syscall.SysProcAttr>);

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

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new ProcAttr(dir, env, files, sys);
	}
}

/**
	// ProcessState stores information about a process, as reported by Wait.
**/
@:structInit @:using(stdgo.os.Os.ProcessState_static_extension) class ProcessState {
	/**
		// The process's id.
	**/
	public var _pid:GoInt = 0;

	/**
		// System-dependent status info.
	**/
	public var _status:stdgo.syscall.Syscall.WaitStatus = ((0 : GoUInt32) : stdgo.syscall.Syscall.WaitStatus);

	public var _rusage:Ref<stdgo.syscall.Syscall.Rusage> = (null : Ref<stdgo.syscall.Syscall.Rusage>);

	public function new(?_pid:GoInt, ?_status:stdgo.syscall.Syscall.WaitStatus, ?_rusage:Ref<stdgo.syscall.Syscall.Rusage>) {
		if (_pid != null)
			this._pid = _pid;
		if (_status != null)
			this._status = _status;
		if (_rusage != null)
			this._rusage = _rusage;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new ProcessState(_pid, _status, _rusage);
	}
}

/**
	// LinkError records an error during a link or symlink or rename
	// system call and the paths that caused it.
**/
@:structInit @:using(stdgo.os.Os.LinkError_static_extension) class LinkError {
	public var op:GoString = "";
	public var old:GoString = "";
	public var new_:GoString = "";
	public var err:Error = (null : Error);

	public function new(?op:GoString, ?old:GoString, ?new_:GoString, ?err:Error) {
		if (op != null)
			this.op = op;
		if (old != null)
			this.old = old;
		if (new_ != null)
			this.new_ = new_;
		if (err != null)
			this.err = err;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new LinkError(op, old, new_, err);
	}
}

@:structInit @:using(stdgo.os.Os.T_onlyWriter_static_extension) private class T_onlyWriter {
	@:embedded
	public var writer:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);

	public function new(?writer:stdgo.io.Io.Writer) {
		if (writer != null)
			this.writer = writer;
	}

	public function __underlying__()
		return Go.toInterface(this);

	@:embedded
	public function write(_b:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return null;

	public function __copy__() {
		return new T_onlyWriter(writer);
	}
}

/**
	// file is the real representation of *File.
	// The extra level of indirection ensures that no clients of os
	// can overwrite this data, which could cause the finalizer
	// to close the wrong file descriptor.
**/
@:structInit @:using(stdgo.os.Os.T_file_static_extension) private class T_file {
	public var _pfd:stdgo.internal.poll.Poll.FD = ({} : stdgo.internal.poll.Poll.FD);
	public var _name:GoString = "";

	/**
		// nil unless directory being read
	**/
	public var _dirinfo:Ref<T_dirInfo> = (null : Ref<T_dirInfo>);

	/**
		// whether we set nonblocking mode
	**/
	public var _nonblock:Bool = false;

	/**
		// whether this is stdout or stderr
	**/
	public var _stdoutOrErr:Bool = false;

	/**
		// whether file is opened for appending
	**/
	public var _appendMode:Bool = false;

	public function new(?_pfd:stdgo.internal.poll.Poll.FD, ?_name:GoString, ?_dirinfo:Ref<T_dirInfo>, ?_nonblock:Bool, ?_stdoutOrErr:Bool, ?_appendMode:Bool) {
		if (_pfd != null)
			this._pfd = _pfd;
		if (_name != null)
			this._name = _name;
		if (_dirinfo != null)
			this._dirinfo = _dirinfo;
		if (_nonblock != null)
			this._nonblock = _nonblock;
		if (_stdoutOrErr != null)
			this._stdoutOrErr = _stdoutOrErr;
		if (_appendMode != null)
			this._appendMode = _appendMode;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_file(_pfd, _name, _dirinfo, _nonblock, _stdoutOrErr, _appendMode);
	}
}

@:structInit @:using(stdgo.os.Os.T_unixDirent_static_extension) private class T_unixDirent {
	public var _parent:GoString = "";
	public var _name:GoString = "";
	public var _typ:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);
	public var _info:stdgo.io.fs.Fs.FileInfo = (null : stdgo.io.fs.Fs.FileInfo);

	public function new(?_parent:GoString, ?_name:GoString, ?_typ:stdgo.io.fs.Fs.FileMode, ?_info:stdgo.io.fs.Fs.FileInfo) {
		if (_parent != null)
			this._parent = _parent;
		if (_name != null)
			this._name = _name;
		if (_typ != null)
			this._typ = _typ;
		if (_info != null)
			this._info = _info;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_unixDirent(_parent, _name, _typ, _info);
	}
}

/**
	// rawConn implements syscall.RawConn.
**/
@:structInit @:using(stdgo.os.Os.T_rawConn_static_extension) private class T_rawConn {
	public var _file:Ref<File> = (null : Ref<File>);

	public function new(?_file:Ref<File>) {
		if (_file != null)
			this._file = _file;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_rawConn(_file);
	}
}

/**
	// File represents an open file descriptor.
**/
@:structInit @:using(stdgo.os.Os.File_static_extension) class File {
	/**
		// os specific
	**/
	@:embedded
	public var _file:Ref<T_file> = (null : Ref<T_file>);

	@:local
	var _input:haxe.io.Input = null;
	@:local
	var _output:haxe.io.Output = null;

	public function new(?_file:Ref<T_file>, ?_input:haxe.io.Input, ?_output:haxe.io.Output) {
		if (_file != null)
			this._file = _file;
		if (_input != null)
			this._input = _input;
		if (_output != null)
			this._output = _output;
	}

	public function __underlying__()
		return Go.toInterface(this);

	@:embedded
	public function _close():Error
		return (null : Error);

	public function __copy__() {
		return new File(_file, _input, _output);
	}
}

/**
	// A fileStat is the implementation of FileInfo returned by Stat and Lstat.
**/
@:structInit @:using(stdgo.os.Os.T_fileStat_static_extension) private class T_fileStat {
	public var _name:GoString = "";
	public var _size:GoInt64 = 0;
	public var _mode:stdgo.io.fs.Fs.FileMode = ((0 : GoUInt32) : stdgo.io.fs.Fs.FileMode);
	public var _modTime:stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
	public var _sys:stdgo.syscall.Syscall.Stat_t = ({} : stdgo.syscall.Syscall.Stat_t);

	public function new(?_name:GoString, ?_size:GoInt64, ?_mode:stdgo.io.fs.Fs.FileMode, ?_modTime:stdgo.time.Time.Time, ?_sys:stdgo.syscall.Syscall.Stat_t) {
		if (_name != null)
			this._name = _name;
		if (_size != null)
			this._size = _size;
		if (_mode != null)
			this._mode = _mode;
		if (_modTime != null)
			this._modTime = _modTime;
		if (_sys != null)
			this._sys = _sys;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fileStat(_name, _size, _mode, _modTime, _sys);
	}
}

class T__struct_0_asInterface {
	@:embedded
	public function _unlockSlow(__0:GoInt32):Void
		__self__.value._unlockSlow(__0);

	@:embedded
	public function _lockSlow():Void
		__self__.value._lockSlow();

	@:embedded
	public function unlock():Void
		__self__.value.unlock();

	@:embedded
	public function tryLock():Bool
		return __self__.value.tryLock();

	@:embedded
	public function lock():Void
		__self__.value.lock();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.T__struct_0_asInterface) class T__struct_0_static_extension {
	@:embedded
	public static function _unlockSlow(__self__:T__struct_0, __0:GoInt32)
		null;

	@:embedded
	public static function _lockSlow(__self__:T__struct_0)
		null;

	@:embedded
	public static function unlock(__self__:T__struct_0)
		null;

	@:embedded
	public static function tryLock(__self__:T__struct_0):Bool
		return return false;

	@:embedded
	public static function lock(__self__:T__struct_0)
		null;
}

@:local @:using(stdgo.os.Os.T__struct_0_static_extension) private typedef T__struct_0 = {
	@:embedded
	public var mutex:stdgo.sync.Sync.Mutex;
	public var _dir:GoString;
};

@:named private typedef T_readdirMode = GoInt;

/**
	// A DirEntry is an entry read from a directory
	// (using the ReadDir function or a File's ReadDir method).
**/
@:follow typedef DirEntry = stdgo.io.fs.Fs.DirEntry;

/**
	// PathError records an error and the operation and file path that caused it.
**/
@:follow typedef PathError = stdgo.io.fs.Fs.PathError;

@:follow private typedef T_syscallErrorType = stdgo.syscall.Syscall.Errno;
@:named @:using(stdgo.os.Os.T_dirFS_static_extension) private typedef T_dirFS = GoString;

/**
	// newFileKind describes the kind of file to newFile.
**/
@:named private typedef T_newFileKind = GoInt;

/**
	// A FileInfo describes a file and is returned by Stat and Lstat.
**/
@:follow typedef FileInfo = stdgo.io.fs.Fs.FileInfo;

/**
	// A FileMode represents a file's mode and permission bits.
	// The bits have the same definition on all systems, so that
	// information about files can be moved from one system
	// to another portably. Not all bits apply to all systems.
	// The only required bit is ModeDir for directories.
**/
@:follow typedef FileMode = stdgo.io.fs.Fs.FileMode;

/**
	// ReadDir reads the named directory,
	// returning all its directory entries sorted by filename.
	// If an error occurs reading the directory,
	// ReadDir returns the entries it was able to read before the error,
	// along with the error.
**/
function readDir(_name:GoString):{var _0:Slice<DirEntry>; var _1:Error;}
	throw "os.readDir is not yet implemented";

/**
	// readInt returns the size-bytes unsigned integer in native byte order at offset off.
**/
function _readInt(_b:Slice<GoByte>, _off:GoUIntptr, _size:GoUIntptr):{var _0:GoUInt64; var _1:Bool;}
	throw "os._readInt is not yet implemented";

function _readIntBE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64
	throw "os._readIntBE is not yet implemented";

function _readIntLE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64
	throw "os._readIntLE is not yet implemented";

function _direntIno(_buf:Slice<GoByte>):{var _0:GoUInt64; var _1:Bool;}
	throw "os._direntIno is not yet implemented";

function _direntReclen(_buf:Slice<GoByte>):{var _0:GoUInt64; var _1:Bool;}
	throw "os._direntReclen is not yet implemented";

function _direntNamlen(_buf:Slice<GoByte>):{var _0:GoUInt64; var _1:Bool;}
	throw "os._direntNamlen is not yet implemented";

function _direntType(_buf:Slice<GoByte>):FileMode
	throw "os._direntType is not yet implemented";

/**
	// Expand replaces ${var} or $var in the string based on the mapping function.
	// For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
**/
function expand(_s:GoString, _mapping:GoString->GoString):GoString
	throw "os.expand is not yet implemented";

/**
	// ExpandEnv replaces ${var} or $var in the string according to the values
	// of the current environment variables. References to undefined
	// variables are replaced by the empty string.
**/
function expandEnv(_s:GoString):GoString
	throw "os.expandEnv is not yet implemented";

/**
	// isShellSpecialVar reports whether the character identifies a special
	// shell variable such as $*.
**/
function _isShellSpecialVar(_c:GoUInt8):Bool
	throw "os._isShellSpecialVar is not yet implemented";

/**
	// isAlphaNum reports whether the byte is an ASCII letter, number, or underscore
**/
function _isAlphaNum(_c:GoUInt8):Bool
	throw "os._isAlphaNum is not yet implemented";

/**
	// getShellName returns the name that begins the string and the number of bytes
	// consumed to extract it. If the name is enclosed in {}, it's part of a ${}
	// expansion and two more bytes are needed than the length of the name.
**/
function _getShellName(_s:GoString):{var _0:GoString; var _1:GoInt;}
	throw "os._getShellName is not yet implemented";

/**
	// Getenv retrieves the value of the environment variable named by the key.
	// It returns the value, which will be empty if the variable is not present.
	// To distinguish between an empty value and an unset value, use LookupEnv.
**/
function getenv(_key:GoString):GoString
	throw "os.getenv is not yet implemented";

/**
	// LookupEnv retrieves the value of the environment variable named
	// by the key. If the variable is present in the environment the
	// value (which may be empty) is returned and the boolean is true.
	// Otherwise the returned value will be empty and the boolean will
	// be false.
**/
function lookupEnv(_key:GoString):{var _0:GoString; var _1:Bool;}
	throw "os.lookupEnv is not yet implemented";

/**
	// Setenv sets the value of the environment variable named by the key.
	// It returns an error, if any.
**/
function setenv(_key:GoString, _value:GoString):Error
	throw "os.setenv is not yet implemented";

/**
	// Unsetenv unsets a single environment variable.
**/
function unsetenv(_key:GoString):Error
	throw "os.unsetenv is not yet implemented";

/**
	// Clearenv deletes all environment variables.
**/
function clearenv():Void
	throw "os.clearenv is not yet implemented";

/**
	// Environ returns a copy of strings representing the environment,
	// in the form "key=value".
**/
function environ():Slice<GoString>
	throw "os.environ is not yet implemented";

function _errClosed():Error
	throw "os._errClosed is not yet implemented";

function _errNoDeadline():Error
	throw "os._errNoDeadline is not yet implemented";

/**
	// errDeadlineExceeded returns the value for os.ErrDeadlineExceeded.
	// This error comes from the internal/poll package, which is also
	// used by package net. Doing this this way ensures that the net
	// package will return os.ErrDeadlineExceeded for an exceeded deadline,
	// as documented by net.Conn.SetDeadline, without requiring any extra
	// work in the net package and without requiring the internal/poll
	// package to import os (which it can't, because that would be circular).
**/
function _errDeadlineExceeded():Error
	throw "os._errDeadlineExceeded is not yet implemented";

/**
	// NewSyscallError returns, as an error, a new SyscallError
	// with the given system call name and error details.
	// As a convenience, if err is nil, NewSyscallError returns nil.
**/
function newSyscallError(_syscall:GoString, _err:Error):Error
	throw "os.newSyscallError is not yet implemented";

/**
	// IsExist returns a boolean indicating whether the error is known to report
	// that a file or directory already exists. It is satisfied by ErrExist as
	// well as some syscall errors.
	//
	// This function predates errors.Is. It only supports errors returned by
	// the os package. New code should use errors.Is(err, fs.ErrExist).
**/
function isExist(_err:Error):Bool
	throw "os.isExist is not yet implemented";

/**
	// IsNotExist returns a boolean indicating whether the error is known to
	// report that a file or directory does not exist. It is satisfied by
	// ErrNotExist as well as some syscall errors.
	//
	// This function predates errors.Is. It only supports errors returned by
	// the os package. New code should use errors.Is(err, fs.ErrNotExist).
**/
function isNotExist(_err:Error):Bool
	throw "os.isNotExist is not yet implemented";

/**
	// IsPermission returns a boolean indicating whether the error is known to
	// report that permission is denied. It is satisfied by ErrPermission as well
	// as some syscall errors.
	//
	// This function predates errors.Is. It only supports errors returned by
	// the os package. New code should use errors.Is(err, fs.ErrPermission).
**/
function isPermission(_err:Error):Bool
	throw "os.isPermission is not yet implemented";

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
	throw "os.isTimeout is not yet implemented";

function _underlyingErrorIs(_err:Error, _target:Error):Bool
	throw "os._underlyingErrorIs is not yet implemented";

/**
	// underlyingError returns the underlying error for known os error types.
**/
function _underlyingError(_err:Error):Error
	throw "os._underlyingError is not yet implemented";

/**
	// wrapSyscallError takes an error and a syscall name. If the error is
	// a syscall.Errno, it wraps it in a os.SyscallError using the syscall name.
**/
function _wrapSyscallError(_name:GoString, _err:Error):Error
	throw "os._wrapSyscallError is not yet implemented";

function _newProcess(_pid:GoInt, _handle:GoUIntptr):Ref<Process>
	throw "os._newProcess is not yet implemented";

/**
	// Getpid returns the process id of the caller.
**/
function getpid():GoInt
	throw "os.getpid is not yet implemented";

/**
	// Getppid returns the process id of the caller's parent.
**/
function getppid():GoInt
	throw "os.getppid is not yet implemented";

/**
	// FindProcess looks for a running process by its pid.
	//
	// The Process it returns can be used to obtain information
	// about the underlying operating system process.
	//
	// On Unix systems, FindProcess always succeeds and returns a Process
	// for the given pid, regardless of whether the process exists.
**/
function findProcess(_pid:GoInt):{var _0:Ref<Process>; var _1:Error;}
	throw "os.findProcess is not yet implemented";

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
function startProcess(_name:GoString, _argv:Slice<GoString>, _attr:Ref<ProcAttr>):{var _0:Ref<Process>; var _1:Error;}
	throw "os.startProcess is not yet implemented";

function _startProcess(_name:GoString, _argv:Slice<GoString>, _attr:Ref<ProcAttr>):{var _0:Ref<Process>; var _1:Error;}
	throw "os._startProcess is not yet implemented";

function _findProcess(_pid:GoInt):{var _0:Ref<Process>; var _1:Error;}
	throw "os._findProcess is not yet implemented";

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
	throw "os.executable is not yet implemented";

function _executable():{var _0:GoString; var _1:Error;}
	throw "os._executable is not yet implemented";

/**
	// stringsTrimSuffix is the same as strings.TrimSuffix.
**/
function _stringsTrimSuffix(_s:GoString, _suffix:GoString):GoString
	throw "os._stringsTrimSuffix is not yet implemented";

function _genericReadFrom(_f:Ref<File>, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
	throw "os._genericReadFrom is not yet implemented";

/**
	// Mkdir creates a new directory with the specified name and permission
	// bits (before umask).
	// If there is an error, it will be of type *PathError.
**/
function mkdir(_name:GoString, _perm:FileMode):Error
	throw "os.mkdir is not yet implemented";

/**
	// setStickyBit adds ModeSticky to the permission bits of path, non atomic.
**/
function _setStickyBit(_name:GoString):Error
	throw "os._setStickyBit is not yet implemented";

/**
	// Chdir changes the current working directory to the named directory.
	// If there is an error, it will be of type *PathError.
**/
function chdir(_dir:GoString):Error
	throw "os.chdir is not yet implemented";

/**
	// Open opens the named file for reading. If successful, methods on
	// the returned file can be used for reading; the associated file
	// descriptor has mode O_RDONLY.
	// If there is an error, it will be of type *PathError.
**/
function open(_name:GoString):{var _0:Ref<File>; var _1:Error;} {
	if (!sys.FileSystem.exists(_name))
		return {_0: null, _1: stdgo.errors.Errors.new_("open " + _name + ": no such file or directory")};
	throw "os.open is not yet implemented";
	return {_0: null, _1: null};
}

/**
	// Create creates or truncates the named file. If the file already exists,
	// it is truncated. If the file does not exist, it is created with mode 0666
	// (before umask). If successful, methods on the returned File can
	// be used for I/O; the associated file descriptor has mode O_RDWR.
	// If there is an error, it will be of type *PathError.
**/
function create(_name:GoString):{var _0:Ref<File>; var _1:Error;}
	throw "os.create is not yet implemented";

/**
	// OpenFile is the generalized open call; most users will use Open
	// or Create instead. It opens the named file with specified flag
	// (O_RDONLY etc.). If the file does not exist, and the O_CREATE flag
	// is passed, it is created with mode perm (before umask). If successful,
	// methods on the returned File can be used for I/O.
	// If there is an error, it will be of type *PathError.
**/
function openFile(_name:GoString, _flag:GoInt, _perm:FileMode):{var _0:Ref<File>; var _1:Error;}
	throw "os.openFile is not yet implemented";

/**
	// Rename renames (moves) oldpath to newpath.
	// If newpath already exists and is not a directory, Rename replaces it.
	// OS-specific restrictions may apply when oldpath and newpath are in different directories.
	// If there is an error, it will be of type *LinkError.
**/
function rename(_oldpath:GoString, _newpath:GoString):Error
	throw "os.rename is not yet implemented";

/**
	// Many functions in package syscall return a count of -1 instead of 0.
	// Using fixCount(call()) instead of call() corrects the count.
**/
function _fixCount(_n:GoInt, _err:Error):{var _0:GoInt; var _1:Error;}
	throw "os._fixCount is not yet implemented";

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
	throw "os.tempDir is not yet implemented";

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
	throw "os.userCacheDir is not yet implemented";

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
	throw "os.userConfigDir is not yet implemented";

/**
	// UserHomeDir returns the current user's home directory.
	//
	// On Unix, including macOS, it returns the $HOME environment variable.
	// On Windows, it returns %USERPROFILE%.
	// On Plan 9, it returns the $home environment variable.
**/
function userHomeDir():{var _0:GoString; var _1:Error;}
	throw "os.userHomeDir is not yet implemented";

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
	throw "os.chmod is not yet implemented";

/**
	// isWindowsNulName reports whether name is os.DevNull ('NUL') on Windows.
	// True is returned if name is 'NUL' whatever the case.
**/
function _isWindowsNulName(_name:GoString):Bool
	throw "os._isWindowsNulName is not yet implemented";

/**
	// DirFS returns a file system (an fs.FS) for the tree of files rooted at the directory dir.
	//
	// Note that DirFS("/prefix") only guarantees that the Open calls it makes to the
	// operating system will begin with "/prefix": DirFS("/prefix").Open("file") is the
	// same as os.Open("/prefix/file"). So if /prefix/file is a symbolic link pointing outside
	// the /prefix tree, then using DirFS does not stop the access any more than using
	// os.Open does. Additionally, the root of the fs.FS returned for a relative path,
	// DirFS("prefix"), will be affected by later calls to Chdir. DirFS is therefore not
	// a general substitute for a chroot-style security mechanism when the directory tree
	// contains arbitrary content.
	//
	// The result implements fs.StatFS.
**/
function dirFS(_dir:GoString):stdgo.io.fs.Fs.FS
	throw "os.dirFS is not yet implemented";

function _containsAny(_s:GoString, _chars:GoString):Bool
	throw "os._containsAny is not yet implemented";

/**
	// ReadFile reads the named file and returns the contents.
	// A successful call returns err == nil, not err == EOF.
	// Because ReadFile reads the whole file, it does not treat an EOF from Read
	// as an error to be reported.
**/
function readFile(_name:GoString):{var _0:Slice<GoByte>; var _1:Error;}
	throw "os.readFile is not yet implemented";

/**
	// WriteFile writes data to the named file, creating it if necessary.
	// If the file does not exist, WriteFile creates it with permissions perm (before umask);
	// otherwise WriteFile truncates it before writing, without changing permissions.
**/
function writeFile(_name:GoString, _data:Slice<GoByte>, _perm:FileMode):Error
	throw "os.writeFile is not yet implemented";

function _sigpipe():Void
	throw "os._sigpipe is not yet implemented";

/**
	// syscallMode returns the syscall-specific mode bits from Go's portable mode bits.
**/
function _syscallMode(_i:FileMode):GoUInt32
	throw "os._syscallMode is not yet implemented";

/**
	// See docs in file.go:Chmod.
**/
function _chmod(_name:GoString, _mode:FileMode):Error
	throw "os._chmod is not yet implemented";

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
	throw "os.chown is not yet implemented";

/**
	// Lchown changes the numeric uid and gid of the named file.
	// If the file is a symbolic link, it changes the uid and gid of the link itself.
	// If there is an error, it will be of type *PathError.
	//
	// On Windows, it always returns the syscall.EWINDOWS error, wrapped
	// in *PathError.
**/
function lchown(_name:GoString, _uid:GoInt, _gid:GoInt):Error
	throw "os.lchown is not yet implemented";

/**
	// Chtimes changes the access and modification times of the named
	// file, similar to the Unix utime() or utimes() functions.
	//
	// The underlying filesystem may truncate or round the values to a
	// less precise time unit.
	// If there is an error, it will be of type *PathError.
**/
function chtimes(_name:GoString, _atime:stdgo.time.Time.Time, _mtime:stdgo.time.Time.Time):Error
	throw "os.chtimes is not yet implemented";

/**
	// ignoringEINTR makes a function call and repeats it if it returns an
	// EINTR error. This appears to be required even though we install all
	// signal handlers with SA_RESTART: see #22838, #38033, #38836, #40846.
	// Also #20400 and #36644 are issues in which a signal handler is
	// installed without setting SA_RESTART. None of these are the common case,
	// but there are enough of them that it seems that we can't avoid
	// an EINTR loop.
**/
function _ignoringEINTR(_fn:() -> Error):Error
	throw "os._ignoringEINTR is not yet implemented";

/**
	// fixLongPath is a noop on non-Windows platforms.
**/
function _fixLongPath(_path:GoString):GoString
	throw "os._fixLongPath is not yet implemented";

function _rename(_oldname:GoString, _newname:GoString):Error
	throw "os._rename is not yet implemented";

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
function newFile(_fd:GoUIntptr, _name:GoString):Ref<File>
	throw "os.newFile is not yet implemented";

/**
	// newFile is like NewFile, but if called from OpenFile or Pipe
	// (as passed in the kind parameter) it tries to add the file to
	// the runtime poller.
**/
function _newFile(_fd:GoUIntptr, _name:GoString, _kind:T_newFileKind):Ref<File>
	throw "os._newFile is not yet implemented";

/**
	// epipecheck raises SIGPIPE if we get an EPIPE error on standard
	// output or standard error. See the SIGPIPE docs in os/signal, and
	// issue 11845.
**/
function _epipecheck(_file:Ref<File>, _e:Error):Void
	throw "os._epipecheck is not yet implemented";

/**
	// openFileNolog is the Unix implementation of OpenFile.
	// Changes here should be reflected in openFdAt, if relevant.
**/
function _openFileNolog(_name:GoString, _flag:GoInt, _perm:FileMode):{var _0:Ref<File>; var _1:Error;}
	throw "os._openFileNolog is not yet implemented";

/**
	// Truncate changes the size of the named file.
	// If the file is a symbolic link, it changes the size of the link's target.
	// If there is an error, it will be of type *PathError.
**/
function truncate(_name:GoString, _size:GoInt64):Error
	throw "os.truncate is not yet implemented";

/**
	// Remove removes the named file or (empty) directory.
	// If there is an error, it will be of type *PathError.
**/
function remove(_name:GoString):Error
	throw "os.remove is not yet implemented";

function _tempDir():GoString
	throw "os._tempDir is not yet implemented";

/**
	// Link creates newname as a hard link to the oldname file.
	// If there is an error, it will be of type *LinkError.
**/
function link(_oldname:GoString, _newname:GoString):Error
	throw "os.link is not yet implemented";

/**
	// Symlink creates newname as a symbolic link to oldname.
	// On Windows, a symlink to a non-existent oldname creates a file symlink;
	// if oldname is later created as a directory the symlink will not work.
	// If there is an error, it will be of type *LinkError.
**/
function symlink(_oldname:GoString, _newname:GoString):Error
	throw "os.symlink is not yet implemented";

/**
	// Readlink returns the destination of the named symbolic link.
	// If there is an error, it will be of type *PathError.
**/
function readlink(_name:GoString):{var _0:GoString; var _1:Error;}
	throw "os.readlink is not yet implemented";

function _newUnixDirent(_parent:GoString, _name:GoString, _typ:FileMode):{var _0:DirEntry; var _1:Error;}
	throw "os._newUnixDirent is not yet implemented";

/**
	// Getwd returns a rooted path name corresponding to the
	// current directory. If the current directory can be
	// reached via multiple paths (due to symbolic links),
	// Getwd may return any one of them.
**/
function getwd():{var _0:GoString; var _1:Error;}
	throw "os.getwd is not yet implemented";

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
	throw "os.mkdirAll is not yet implemented";

/**
	// RemoveAll removes path and any children it contains.
	// It removes everything it can but returns the first error
	// it encounters. If the path does not exist, RemoveAll
	// returns nil (no error).
	// If there is an error, it will be of type *PathError.
**/
function removeAll(_path:GoString):Error
	throw "os.removeAll is not yet implemented";

/**
	// endsWithDot reports whether the final component of path is ".".
**/
function _endsWithDot(_path:GoString):Bool
	throw "os._endsWithDot is not yet implemented";

/**
	// IsPathSeparator reports whether c is a directory separator character.
**/
function isPathSeparator(_c:GoUInt8):Bool
	throw "os.isPathSeparator is not yet implemented";

/**
	// basename removes trailing slashes and the leading directory name from path name.
**/
function _basename(_name:GoString):GoString
	throw "os._basename is not yet implemented";

/**
	// splitPath returns the base name and parent directory.
**/
function _splitPath(_path:GoString):{var _0:GoString; var _1:GoString;}
	throw "os._splitPath is not yet implemented";

function _fixRootDirectory(_p:GoString):GoString
	throw "os._fixRootDirectory is not yet implemented";

/**
	// Pipe returns a connected pair of Files; reads from r return bytes written to w.
	// It returns the files and an error, if any.
**/
function pipe():{var _0:Ref<File>; var _1:Ref<File>; var _2:Error;}
	throw "os.pipe is not yet implemented";

function _runtime_args():Slice<GoString> {
	#if js return new Slice<GoString>(0, 0) #else null #end;
	#if sys {
		final args:Array<GoString> = Sys.args().map(arg -> (arg : GoString));
		args.unshift(Sys.getCwd());
		return new Slice<GoString>(0, 0, ...args);
	} #else null #end;
}

/**
	// Getuid returns the numeric user id of the caller.
	//
	// On Windows, it returns -1.
**/
function getuid():GoInt
	throw "os.getuid is not yet implemented";

/**
	// Geteuid returns the numeric effective user id of the caller.
	//
	// On Windows, it returns -1.
**/
function geteuid():GoInt
	throw "os.geteuid is not yet implemented";

/**
	// Getgid returns the numeric group id of the caller.
	//
	// On Windows, it returns -1.
**/
function getgid():GoInt
	throw "os.getgid is not yet implemented";

/**
	// Getegid returns the numeric effective group id of the caller.
	//
	// On Windows, it returns -1.
**/
function getegid():GoInt
	throw "os.getegid is not yet implemented";

/**
	// Getgroups returns a list of the numeric ids of groups that the caller belongs to.
	//
	// On Windows, it returns syscall.EWINDOWS. See the os/user package
	// for a possible alternative.
**/
function getgroups():{var _0:Slice<GoInt>; var _1:Error;}
	throw "os.getgroups is not yet implemented";

/**
	// Exit causes the current program to exit with the given status code.
	// Conventionally, code zero indicates success, non-zero an error.
	// The program terminates immediately; deferred functions are not run.
	//
	// For portability, the status code should be in the range [0, 125].
**/
function exit(_code:GoInt):Void
	throw "os.exit is not yet implemented";

function _runtime_beforeExit():Void
	throw "os._runtime_beforeExit is not yet implemented";

function _newRawConn(_file:Ref<File>):{var _0:Ref<T_rawConn>; var _1:Error;}
	throw "os._newRawConn is not yet implemented";

function _removeAll(_path:GoString):Error
	throw "os._removeAll is not yet implemented";

/**
	// Stat returns a FileInfo describing the named file.
	// If there is an error, it will be of type *PathError.
**/
function stat(_name:GoString):{var _0:FileInfo; var _1:Error;}
	throw "os.stat is not yet implemented";

/**
	// Lstat returns a FileInfo describing the named file.
	// If the file is a symbolic link, the returned FileInfo
	// describes the symbolic link. Lstat makes no attempt to follow the link.
	// If there is an error, it will be of type *PathError.
**/
function lstat(_name:GoString):{var _0:FileInfo; var _1:Error;}
	throw "os.lstat is not yet implemented";

function _fillFileStatFromSys(_fs:Ref<T_fileStat>, _name:GoString):Void
	throw "os._fillFileStatFromSys is not yet implemented";

/**
	// For testing.
**/
function _atime(_fi:FileInfo):stdgo.time.Time.Time
	throw "os._atime is not yet implemented";

/**
	// statNolog stats a file with no test logging.
**/
function _statNolog(_name:GoString):{var _0:FileInfo; var _1:Error;}
	throw "os._statNolog is not yet implemented";

/**
	// lstatNolog lstats a file with no test logging.
**/
function _lstatNolog(_name:GoString):{var _0:FileInfo; var _1:Error;}
	throw "os._lstatNolog is not yet implemented";

/**
	// itox converts val (an int) to a hexdecimal string.
**/
function _itox(_val:GoInt):GoString
	throw "os._itox is not yet implemented";

/**
	// uitox converts val (a uint) to a hexdecimal string.
**/
function _uitox(_val:GoUInt):GoString
	throw "os._uitox is not yet implemented";

/**
	// Hostname returns the host name reported by the kernel.
**/
function hostname():{var _0:GoString; var _1:Error;}
	throw "os.hostname is not yet implemented";

function _hostname():{var _0:GoString; var _1:Error;}
	throw "os._hostname is not yet implemented";

/**
	// fastrand provided by runtime.
	// We generate random temporary file names so that there's a good
	// chance the file doesn't exist yet - keeps the number of tries in
	// TempFile to a minimum.
**/
function _fastrand():GoUInt32
	return Std.random(1) > 0 ? -Std.random(2147483647) - 1 : Std.random(2147483647);

function _nextRandom():GoString
	throw "os._nextRandom is not yet implemented";

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
function createTemp(_dir:GoString, _pattern:GoString):{var _0:Ref<File>; var _1:Error;}
	throw "os.createTemp is not yet implemented";

/**
	// prefixAndSuffix splits pattern by the last wildcard "*", if applicable,
	// returning prefix as the part before "*" and suffix as the part after "*".
**/
function _prefixAndSuffix(_pattern:GoString):{var _0:GoString; var _1:GoString; var _2:Error;}
	throw "os._prefixAndSuffix is not yet implemented";

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
	throw "os.mkdirTemp is not yet implemented";

function _joinPath(_dir:GoString, _name:GoString):GoString
	throw "os._joinPath is not yet implemented";

/**
	// LastIndexByte from the strings package.
**/
function _lastIndex(_s:GoString, _sep:GoByte):GoInt
	throw "os._lastIndex is not yet implemented";

/**
	// Getpagesize returns the underlying system's memory page size.
**/
function getpagesize():GoInt
	throw "os.getpagesize is not yet implemented";

/**
	// SameFile reports whether fi1 and fi2 describe the same file.
	// For example, on Unix this means that the device and inode fields
	// of the two underlying structures are identical; on other systems
	// the decision may be based on the path names.
	// SameFile only applies to results returned by this package's Stat.
	// It returns false in other cases.
**/
function sameFile(_fi1:FileInfo, _fi2:FileInfo):Bool
	throw "os.sameFile is not yet implemented";

function _sameFile(_fs1:Ref<T_fileStat>, _fs2:Ref<T_fileStat>):Bool
	throw "os._sameFile is not yet implemented";

@:keep var _ = {
	try {
		args = _runtime_args();
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

class T_dirInfo_asInterface {
	@:keep
	public function _close():Void
		__self__.value._close();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_dirInfo>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.T_dirInfo_asInterface) class T_dirInfo_static_extension {
	@:keep
	static public function _close(_d:Ref<T_dirInfo>):Void
		throw "os._close is not yet implemented";
}

class SyscallError_asInterface {
	/**
		// Timeout reports whether this error represents a timeout.
	**/
	@:keep
	public function timeout():Bool
		return __self__.value.timeout();

	@:keep
	public function unwrap():Error
		return __self__.value.unwrap();

	@:keep
	public function error():GoString
		return __self__.value.error();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<SyscallError>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.SyscallError_asInterface) class SyscallError_static_extension {
	/**
		// Timeout reports whether this error represents a timeout.
	**/
	@:keep
	static public function timeout(_e:Ref<SyscallError>):Bool
		throw "os.timeout is not yet implemented";

	@:keep
	static public function unwrap(_e:Ref<SyscallError>):Error
		throw "os.unwrap is not yet implemented";

	@:keep
	static public function error(_e:Ref<SyscallError>):GoString
		throw "os.error is not yet implemented";
}

class Process_asInterface {
	/**
		// blockUntilWaitable attempts to block until a call to p.Wait will
		// succeed immediately, and reports whether it has done so.
		// It does not actually call p.Wait.
		// This version is used on systems that do not implement waitid,
		// or where we have not implemented it yet. Note that this is racy:
		// a call to Process.Signal can in an extremely unlikely case send a
		// signal to the wrong process, see issue #13987.
	**/
	@:keep
	public function _blockUntilWaitable():{var _0:Bool; var _1:Error;}
		return __self__.value._blockUntilWaitable();

	@:keep
	public function _release():Error
		return __self__.value._release();

	@:keep
	public function _signal(_sig:Signal):Error
		return __self__.value._signal(_sig);

	@:keep
	public function _wait():{var _0:Ref<ProcessState>; var _1:Error;}
		return __self__.value._wait();

	@:keep
	public function _kill():Error
		return __self__.value._kill();

	/**
		// Signal sends a signal to the Process.
		// Sending Interrupt on Windows is not implemented.
	**/
	@:keep
	public function signal(_sig:Signal):Error
		return __self__.value.signal(_sig);

	/**
		// Wait waits for the Process to exit, and then returns a
		// ProcessState describing its status and an error, if any.
		// Wait releases any resources associated with the Process.
		// On most operating systems, the Process must be a child
		// of the current process or an error will be returned.
	**/
	@:keep
	public function wait_():{var _0:Ref<ProcessState>; var _1:Error;}
		return __self__.value.wait_();

	/**
		// Kill causes the Process to exit immediately. Kill does not wait until
		// the Process has actually exited. This only kills the Process itself,
		// not any other processes it may have started.
	**/
	@:keep
	public function kill():Error
		return __self__.value.kill();

	/**
		// Release releases any resources associated with the Process p,
		// rendering it unusable in the future.
		// Release only needs to be called if Wait is not.
	**/
	@:keep
	public function release():Error
		return __self__.value.release();

	@:keep
	public function _done():Bool
		return __self__.value._done();

	@:keep
	public function _setDone():Void
		__self__.value._setDone();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Process>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.Process_asInterface) class Process_static_extension {
	/**
		// blockUntilWaitable attempts to block until a call to p.Wait will
		// succeed immediately, and reports whether it has done so.
		// It does not actually call p.Wait.
		// This version is used on systems that do not implement waitid,
		// or where we have not implemented it yet. Note that this is racy:
		// a call to Process.Signal can in an extremely unlikely case send a
		// signal to the wrong process, see issue #13987.
	**/
	@:keep
	static public function _blockUntilWaitable(_p:Ref<Process>):{var _0:Bool; var _1:Error;}
		throw "os._blockUntilWaitable is not yet implemented";

	@:keep
	static public function _release(_p:Ref<Process>):Error
		throw "os._release is not yet implemented";

	@:keep
	static public function _signal(_p:Ref<Process>, _sig:Signal):Error
		throw "os._signal is not yet implemented";

	@:keep
	static public function _wait(_p:Ref<Process>):{var _0:Ref<ProcessState>; var _1:Error;}
		throw "os._wait is not yet implemented";

	@:keep
	static public function _kill(_p:Ref<Process>):Error
		throw "os._kill is not yet implemented";

	/**
		// Signal sends a signal to the Process.
		// Sending Interrupt on Windows is not implemented.
	**/
	@:keep
	static public function signal(_p:Ref<Process>, _sig:Signal):Error
		throw "os.signal is not yet implemented";

	/**
		// Wait waits for the Process to exit, and then returns a
		// ProcessState describing its status and an error, if any.
		// Wait releases any resources associated with the Process.
		// On most operating systems, the Process must be a child
		// of the current process or an error will be returned.
	**/
	@:keep
	static public function wait_(_p:Ref<Process>):{var _0:Ref<ProcessState>; var _1:Error;}
		throw "os.wait_ is not yet implemented";

	/**
		// Kill causes the Process to exit immediately. Kill does not wait until
		// the Process has actually exited. This only kills the Process itself,
		// not any other processes it may have started.
	**/
	@:keep
	static public function kill(_p:Ref<Process>):Error
		throw "os.kill is not yet implemented";

	/**
		// Release releases any resources associated with the Process p,
		// rendering it unusable in the future.
		// Release only needs to be called if Wait is not.
	**/
	@:keep
	static public function release(_p:Ref<Process>):Error
		throw "os.release is not yet implemented";

	@:keep
	static public function _done(_p:Ref<Process>):Bool
		throw "os._done is not yet implemented";

	@:keep
	static public function _setDone(_p:Ref<Process>):Void
		throw "os._setDone is not yet implemented";
}

class ProcessState_asInterface {
	@:keep
	public function _systemTime():stdgo.time.Time.Duration
		return __self__.value._systemTime();

	@:keep
	public function _userTime():stdgo.time.Time.Duration
		return __self__.value._userTime();

	/**
		// ExitCode returns the exit code of the exited process, or -1
		// if the process hasn't exited or was terminated by a signal.
	**/
	@:keep
	public function exitCode():GoInt
		return __self__.value.exitCode();

	@:keep
	public function string():GoString
		return __self__.value.string();

	@:keep
	public function _sysUsage():AnyInterface
		return __self__.value._sysUsage();

	@:keep
	public function _sys():AnyInterface
		return __self__.value._sys();

	@:keep
	public function _success():Bool
		return __self__.value._success();

	@:keep
	public function _exited():Bool
		return __self__.value._exited();

	/**
		// Pid returns the process id of the exited process.
	**/
	@:keep
	public function pid():GoInt
		return __self__.value.pid();

	/**
		// SysUsage returns system-dependent resource usage information about
		// the exited process. Convert it to the appropriate underlying
		// type, such as *syscall.Rusage on Unix, to access its contents.
		// (On Unix, *syscall.Rusage matches struct rusage as defined in the
		// getrusage(2) manual page.)
	**/
	@:keep
	public function sysUsage():AnyInterface
		return __self__.value.sysUsage();

	/**
		// Sys returns system-dependent exit information about
		// the process. Convert it to the appropriate underlying
		// type, such as syscall.WaitStatus on Unix, to access its contents.
	**/
	@:keep
	public function sys():AnyInterface
		return __self__.value.sys();

	/**
		// Success reports whether the program exited successfully,
		// such as with exit status 0 on Unix.
	**/
	@:keep
	public function success():Bool
		return __self__.value.success();

	/**
		// Exited reports whether the program has exited.
		// On Unix systems this reports true if the program exited due to calling exit,
		// but false if the program terminated due to a signal.
	**/
	@:keep
	public function exited():Bool
		return __self__.value.exited();

	/**
		// SystemTime returns the system CPU time of the exited process and its children.
	**/
	@:keep
	public function systemTime():stdgo.time.Time.Duration
		return __self__.value.systemTime();

	/**
		// UserTime returns the user CPU time of the exited process and its children.
	**/
	@:keep
	public function userTime():stdgo.time.Time.Duration
		return __self__.value.userTime();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<ProcessState>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.ProcessState_asInterface) class ProcessState_static_extension {
	@:keep
	static public function _systemTime(_p:Ref<ProcessState>):stdgo.time.Time.Duration
		throw "os._systemTime is not yet implemented";

	@:keep
	static public function _userTime(_p:Ref<ProcessState>):stdgo.time.Time.Duration
		throw "os._userTime is not yet implemented";

	/**
		// ExitCode returns the exit code of the exited process, or -1
		// if the process hasn't exited or was terminated by a signal.
	**/
	@:keep
	static public function exitCode(_p:Ref<ProcessState>):GoInt
		throw "os.exitCode is not yet implemented";

	@:keep
	static public function string(_p:Ref<ProcessState>):GoString
		throw "os.string is not yet implemented";

	@:keep
	static public function _sysUsage(_p:Ref<ProcessState>):AnyInterface
		throw "os._sysUsage is not yet implemented";

	@:keep
	static public function _sys(_p:Ref<ProcessState>):AnyInterface
		throw "os._sys is not yet implemented";

	@:keep
	static public function _success(_p:Ref<ProcessState>):Bool
		throw "os._success is not yet implemented";

	@:keep
	static public function _exited(_p:Ref<ProcessState>):Bool
		throw "os._exited is not yet implemented";

	/**
		// Pid returns the process id of the exited process.
	**/
	@:keep
	static public function pid(_p:Ref<ProcessState>):GoInt
		throw "os.pid is not yet implemented";

	/**
		// SysUsage returns system-dependent resource usage information about
		// the exited process. Convert it to the appropriate underlying
		// type, such as *syscall.Rusage on Unix, to access its contents.
		// (On Unix, *syscall.Rusage matches struct rusage as defined in the
		// getrusage(2) manual page.)
	**/
	@:keep
	static public function sysUsage(_p:Ref<ProcessState>):AnyInterface
		throw "os.sysUsage is not yet implemented";

	/**
		// Sys returns system-dependent exit information about
		// the process. Convert it to the appropriate underlying
		// type, such as syscall.WaitStatus on Unix, to access its contents.
	**/
	@:keep
	static public function sys(_p:Ref<ProcessState>):AnyInterface
		throw "os.sys is not yet implemented";

	/**
		// Success reports whether the program exited successfully,
		// such as with exit status 0 on Unix.
	**/
	@:keep
	static public function success(_p:Ref<ProcessState>):Bool
		throw "os.success is not yet implemented";

	/**
		// Exited reports whether the program has exited.
		// On Unix systems this reports true if the program exited due to calling exit,
		// but false if the program terminated due to a signal.
	**/
	@:keep
	static public function exited(_p:Ref<ProcessState>):Bool
		throw "os.exited is not yet implemented";

	/**
		// SystemTime returns the system CPU time of the exited process and its children.
	**/
	@:keep
	static public function systemTime(_p:Ref<ProcessState>):stdgo.time.Time.Duration
		throw "os.systemTime is not yet implemented";

	/**
		// UserTime returns the user CPU time of the exited process and its children.
	**/
	@:keep
	static public function userTime(_p:Ref<ProcessState>):stdgo.time.Time.Duration
		throw "os.userTime is not yet implemented";
}

class LinkError_asInterface {
	@:keep
	public function unwrap():Error
		return __self__.value.unwrap();

	@:keep
	public function error():GoString
		return __self__.value.error();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<LinkError>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.LinkError_asInterface) class LinkError_static_extension {
	@:keep
	static public function unwrap(_e:Ref<LinkError>):Error
		throw "os.unwrap is not yet implemented";

	@:keep
	static public function error(_e:Ref<LinkError>):GoString
		throw "os.error is not yet implemented";
}

class T_onlyWriter_asInterface {
	@:embedded
	public function write(_b:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_b);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_onlyWriter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.T_onlyWriter_asInterface) class T_onlyWriter_static_extension {
	@:embedded
	public static function write(__self__:T_onlyWriter, _b:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.write(_b);
}

class T_file_asInterface {
	@:keep
	public function _close():Error
		return __self__.value._close();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_file>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.T_file_asInterface) class T_file_static_extension {
	@:keep
	static public function _close(_file:Ref<T_file>):Error
		throw "os._close is not yet implemented";
}

class T_unixDirent_asInterface {
	@:keep
	public function info():{var _0:FileInfo; var _1:Error;}
		return __self__.value.info();

	@:keep
	public function type():FileMode
		return __self__.value.type();

	@:keep
	public function isDir():Bool
		return __self__.value.isDir();

	@:keep
	public function name():GoString
		return __self__.value.name();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_unixDirent>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.T_unixDirent_asInterface) class T_unixDirent_static_extension {
	@:keep
	static public function info(_d:Ref<T_unixDirent>):{var _0:FileInfo; var _1:Error;}
		throw "os.info is not yet implemented";

	@:keep
	static public function type(_d:Ref<T_unixDirent>):FileMode
		throw "os.type is not yet implemented";

	@:keep
	static public function isDir(_d:Ref<T_unixDirent>):Bool
		throw "os.isDir is not yet implemented";

	@:keep
	static public function name(_d:Ref<T_unixDirent>):GoString
		throw "os.name is not yet implemented";
}

class T_rawConn_asInterface {
	@:keep
	public function write(_f:GoUIntptr->Bool):Error
		return __self__.value.write(_f);

	@:keep
	public function read(_f:GoUIntptr->Bool):Error
		return __self__.value.read(_f);

	@:keep
	public function control(_f:GoUIntptr->Void):Error
		return __self__.value.control(_f);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_rawConn>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.T_rawConn_asInterface) class T_rawConn_static_extension {
	@:keep
	static public function write(_c:Ref<T_rawConn>, _f:GoUIntptr->Bool):Error
		throw "os.write is not yet implemented";

	@:keep
	static public function read(_c:Ref<T_rawConn>, _f:GoUIntptr->Bool):Error
		throw "os.read is not yet implemented";

	@:keep
	static public function control(_c:Ref<T_rawConn>, _f:GoUIntptr->Void):Error
		throw "os.control is not yet implemented";
}

class File_asInterface {
	/**
		// Stat returns the FileInfo structure describing file.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public function stat():{var _0:FileInfo; var _1:Error;}
		return __self__.value.stat();

	@:keep
	public function _readFrom(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Bool; var _2:Error;}
		return __self__.value._readFrom(_r);

	/**
		// seek sets the offset for the next Read or Write on file to offset, interpreted
		// according to whence: 0 means relative to the origin of the file, 1 means
		// relative to the current offset, and 2 means relative to the end.
		// It returns the new offset and an error, if any.
	**/
	@:keep
	public function _seek(_offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
		return __self__.value._seek(_offset, _whence);

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
	public function fd():GoUIntptr
		return __self__.value.fd();

	/**
		// checkValid checks whether f is valid for use.
		// If not, it returns an appropriate error, perhaps incorporating the operation name op.
	**/
	@:keep
	public function _checkValid(_op:GoString):Error
		return __self__.value._checkValid(_op);

	/**
		// setWriteDeadline sets the write deadline.
	**/
	@:keep
	public function _setWriteDeadline(_t:stdgo.time.Time.Time):Error
		return __self__.value._setWriteDeadline(_t);

	/**
		// setReadDeadline sets the read deadline.
	**/
	@:keep
	public function _setReadDeadline(_t:stdgo.time.Time.Time):Error
		return __self__.value._setReadDeadline(_t);

	/**
		// setDeadline sets the read and write deadline.
	**/
	@:keep
	public function _setDeadline(_t:stdgo.time.Time.Time):Error
		return __self__.value._setDeadline(_t);

	/**
		// Chdir changes the current working directory to the file,
		// which must be a directory.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public function chdir():Error
		return __self__.value.chdir();

	/**
		// Sync commits the current contents of the file to stable storage.
		// Typically, this means flushing the file system's in-memory copy
		// of recently written data to disk.
	**/
	@:keep
	public function sync():Error
		return __self__.value.sync();

	/**
		// Truncate changes the size of the file.
		// It does not change the I/O offset.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public function truncate(_size:GoInt64):Error
		return __self__.value.truncate(_size);

	/**
		// Chown changes the numeric uid and gid of the named file.
		// If there is an error, it will be of type *PathError.
		//
		// On Windows, it always returns the syscall.EWINDOWS error, wrapped
		// in *PathError.
	**/
	@:keep
	public function chown(_uid:GoInt, _gid:GoInt):Error
		return __self__.value.chown(_uid, _gid);

	/**
		// See docs in file.go:(*File).Chmod.
	**/
	@:keep
	public function _chmod(_mode:FileMode):Error
		return __self__.value._chmod(_mode);

	/**
		// pwrite writes len(b) bytes to the File starting at byte offset off.
		// It returns the number of bytes written and an error, if any.
	**/
	@:keep
	public function _pwrite(_b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		return __self__.value._pwrite(_b, _off);

	/**
		// write writes len(b) bytes to the File.
		// It returns the number of bytes written and an error, if any.
	**/
	@:keep
	public function _write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value._write(_b);

	/**
		// pread reads len(b) bytes from the File starting at byte offset off.
		// It returns the number of bytes read and the error, if any.
		// EOF is signaled by a zero count with err set to nil.
	**/
	@:keep
	public function _pread(_b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		return __self__.value._pread(_b, _off);

	/**
		// read reads up to len(b) bytes from the File.
		// It returns the number of bytes read and an error, if any.
	**/
	@:keep
	public function _read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value._read(_b);

	/**
		// Close closes the File, rendering it unusable for I/O.
		// On files that support SetDeadline, any pending I/O operations will
		// be canceled and return immediately with an ErrClosed error.
		// Close will return an error if it has already been called.
	**/
	@:keep
	public function close():Error
		return __self__.value.close();

	/**
		// SyscallConn returns a raw file.
		// This implements the syscall.Conn interface.
	**/
	@:keep
	public function syscallConn():{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;}
		return __self__.value.syscallConn();

	/**
		// SetWriteDeadline sets the deadline for any future Write calls and any
		// currently-blocked Write call.
		// Even if Write times out, it may return n > 0, indicating that
		// some of the data was successfully written.
		// A zero value for t means Write will not time out.
		// Not all files support setting deadlines; see SetDeadline.
	**/
	@:keep
	public function setWriteDeadline(_t:stdgo.time.Time.Time):Error
		return __self__.value.setWriteDeadline(_t);

	/**
		// SetReadDeadline sets the deadline for future Read calls and any
		// currently-blocked Read call.
		// A zero value for t means Read will not time out.
		// Not all files support setting deadlines; see SetDeadline.
	**/
	@:keep
	public function setReadDeadline(_t:stdgo.time.Time.Time):Error
		return __self__.value.setReadDeadline(_t);

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
	public function setDeadline(_t:stdgo.time.Time.Time):Error
		return __self__.value.setDeadline(_t);

	/**
		// Chmod changes the mode of the file to mode.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	public function chmod(_mode:FileMode):Error
		return __self__.value.chmod(_mode);

	/**
		// wrapErr wraps an error that occurred during an operation on an open file.
		// It passes io.EOF through unchanged, otherwise converts
		// poll.ErrFileClosing to ErrClosed and wraps the error in a PathError.
	**/
	@:keep
	public function _wrapErr(_op:GoString, _err:Error):Error
		return __self__.value._wrapErr(_op, _err);

	/**
		// WriteString is like Write, but writes the contents of string s rather than
		// a slice of bytes.
	**/
	@:keep
	public function writeString(_s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_s);

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
	public function seek(_offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
		return __self__.value.seek(_offset, _whence);

	/**
		// WriteAt writes len(b) bytes to the File starting at byte offset off.
		// It returns the number of bytes written and an error, if any.
		// WriteAt returns a non-nil error when n != len(b).
		//
		// If file was opened with the O_APPEND flag, WriteAt returns an error.
	**/
	@:keep
	public function writeAt(_b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeAt(_b, _off);

	/**
		// Write writes len(b) bytes from b to the File.
		// It returns the number of bytes written and an error, if any.
		// Write returns a non-nil error when n != len(b).
	**/
	@:keep
	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_b);

	/**
		// ReadFrom implements io.ReaderFrom.
	**/
	@:keep
	public function readFrom(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		return __self__.value.readFrom(_r);

	/**
		// ReadAt reads len(b) bytes from the File starting at byte offset off.
		// It returns the number of bytes read and the error, if any.
		// ReadAt always returns a non-nil error when n < len(b).
		// At end of file, that error is io.EOF.
	**/
	@:keep
	public function readAt(_b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		return __self__.value.readAt(_b, _off);

	/**
		// Read reads up to len(b) bytes from the File and stores them in b.
		// It returns the number of bytes read and any error encountered.
		// At end of file, Read returns 0, io.EOF.
	**/
	@:keep
	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_b);

	/**
		// Name returns the name of the file as presented to Open.
	**/
	@:keep
	public function name():GoString
		return __self__.value.name();

	@:keep
	public function _readdir(_n:GoInt, _mode:T_readdirMode):{
		var _0:Slice<GoString>;
		var _1:Slice<DirEntry>;
		var _2:Slice<FileInfo>;
		var _3:Error;
	}
		return __self__.value._readdir(_n, _mode);

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
	public function readDir(_n:GoInt):{var _0:Slice<DirEntry>; var _1:Error;}
		return __self__.value.readDir(_n);

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
	public function readdirnames(_n:GoInt):{var _0:Slice<GoString>; var _1:Error;}
		return __self__.value.readdirnames(_n);

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
	public function readdir(_n:GoInt):{var _0:Slice<FileInfo>; var _1:Error;}
		return __self__.value.readdir(_n);

	@:embedded
	public function _close():Error
		return __self__.value._close();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<File>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.File_asInterface) class File_static_extension {
	/**
		// Stat returns the FileInfo structure describing file.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	static public function stat(_f:Ref<File>):{var _0:FileInfo; var _1:Error;}
		throw "os.stat is not yet implemented";

	@:keep
	static public function _readFrom(_f:Ref<File>, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Bool; var _2:Error;}
		throw "os._readFrom is not yet implemented";

	/**
		// seek sets the offset for the next Read or Write on file to offset, interpreted
		// according to whence: 0 means relative to the origin of the file, 1 means
		// relative to the current offset, and 2 means relative to the end.
		// It returns the new offset and an error, if any.
	**/
	@:keep
	static public function _seek(_f:Ref<File>, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
		throw "os._seek is not yet implemented";

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
	static public function fd(_f:Ref<File>):GoUIntptr
		throw "os.fd is not yet implemented";

	/**
		// checkValid checks whether f is valid for use.
		// If not, it returns an appropriate error, perhaps incorporating the operation name op.
	**/
	@:keep
	static public function _checkValid(_f:Ref<File>, _op:GoString):Error
		throw "os._checkValid is not yet implemented";

	/**
		// setWriteDeadline sets the write deadline.
	**/
	@:keep
	static public function _setWriteDeadline(_f:Ref<File>, _t:stdgo.time.Time.Time):Error
		throw "os._setWriteDeadline is not yet implemented";

	/**
		// setReadDeadline sets the read deadline.
	**/
	@:keep
	static public function _setReadDeadline(_f:Ref<File>, _t:stdgo.time.Time.Time):Error
		throw "os._setReadDeadline is not yet implemented";

	/**
		// setDeadline sets the read and write deadline.
	**/
	@:keep
	static public function _setDeadline(_f:Ref<File>, _t:stdgo.time.Time.Time):Error
		throw "os._setDeadline is not yet implemented";

	/**
		// Chdir changes the current working directory to the file,
		// which must be a directory.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	static public function chdir(_f:Ref<File>):Error
		throw "os.chdir is not yet implemented";

	/**
		// Sync commits the current contents of the file to stable storage.
		// Typically, this means flushing the file system's in-memory copy
		// of recently written data to disk.
	**/
	@:keep
	static public function sync(_f:Ref<File>):Error
		throw "os.sync is not yet implemented";

	/**
		// Truncate changes the size of the file.
		// It does not change the I/O offset.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	static public function truncate(_f:Ref<File>, _size:GoInt64):Error
		throw "os.truncate is not yet implemented";

	/**
		// Chown changes the numeric uid and gid of the named file.
		// If there is an error, it will be of type *PathError.
		//
		// On Windows, it always returns the syscall.EWINDOWS error, wrapped
		// in *PathError.
	**/
	@:keep
	static public function chown(_f:Ref<File>, _uid:GoInt, _gid:GoInt):Error
		throw "os.chown is not yet implemented";

	/**
		// See docs in file.go:(*File).Chmod.
	**/
	@:keep
	static public function _chmod(_f:Ref<File>, _mode:FileMode):Error
		throw "os._chmod is not yet implemented";

	/**
		// pwrite writes len(b) bytes to the File starting at byte offset off.
		// It returns the number of bytes written and an error, if any.
	**/
	@:keep
	static public function _pwrite(_f:Ref<File>, _b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		throw "os._pwrite is not yet implemented";

	/**
		// write writes len(b) bytes to the File.
		// It returns the number of bytes written and an error, if any.
	**/
	@:keep
	static public function _write(_f:Ref<File>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "os._write is not yet implemented";

	/**
		// pread reads len(b) bytes from the File starting at byte offset off.
		// It returns the number of bytes read and the error, if any.
		// EOF is signaled by a zero count with err set to nil.
	**/
	@:keep
	static public function _pread(_f:Ref<File>, _b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		throw "os._pread is not yet implemented";

	/**
		// read reads up to len(b) bytes from the File.
		// It returns the number of bytes read and an error, if any.
	**/
	@:keep
	static public function _read(_f:Ref<File>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "os._read is not yet implemented";

	/**
		// Close closes the File, rendering it unusable for I/O.
		// On files that support SetDeadline, any pending I/O operations will
		// be canceled and return immediately with an ErrClosed error.
		// Close will return an error if it has already been called.
	**/
	@:keep
	static public function close(_f:Ref<File>):Error
		throw "os.close is not yet implemented";

	/**
		// SyscallConn returns a raw file.
		// This implements the syscall.Conn interface.
	**/
	@:keep
	static public function syscallConn(_f:Ref<File>):{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;}
		throw "os.syscallConn is not yet implemented";

	/**
		// SetWriteDeadline sets the deadline for any future Write calls and any
		// currently-blocked Write call.
		// Even if Write times out, it may return n > 0, indicating that
		// some of the data was successfully written.
		// A zero value for t means Write will not time out.
		// Not all files support setting deadlines; see SetDeadline.
	**/
	@:keep
	static public function setWriteDeadline(_f:Ref<File>, _t:stdgo.time.Time.Time):Error
		throw "os.setWriteDeadline is not yet implemented";

	/**
		// SetReadDeadline sets the deadline for future Read calls and any
		// currently-blocked Read call.
		// A zero value for t means Read will not time out.
		// Not all files support setting deadlines; see SetDeadline.
	**/
	@:keep
	static public function setReadDeadline(_f:Ref<File>, _t:stdgo.time.Time.Time):Error
		throw "os.setReadDeadline is not yet implemented";

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
	static public function setDeadline(_f:Ref<File>, _t:stdgo.time.Time.Time):Error
		throw "os.setDeadline is not yet implemented";

	/**
		// Chmod changes the mode of the file to mode.
		// If there is an error, it will be of type *PathError.
	**/
	@:keep
	static public function chmod(_f:Ref<File>, _mode:FileMode):Error
		throw "os.chmod is not yet implemented";

	/**
		// wrapErr wraps an error that occurred during an operation on an open file.
		// It passes io.EOF through unchanged, otherwise converts
		// poll.ErrFileClosing to ErrClosed and wraps the error in a PathError.
	**/
	@:keep
	static public function _wrapErr(_f:Ref<File>, _op:GoString, _err:Error):Error
		throw "os._wrapErr is not yet implemented";

	/**
		// WriteString is like Write, but writes the contents of string s rather than
		// a slice of bytes.
	**/
	@:keep
	static public function writeString(_f:Ref<File>, _s:GoString):{var _0:GoInt; var _1:Error;}
		return _f.write(_s);

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
	static public function seek(_f:Ref<File>, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
		throw "os.seek is not yet implemented";

	/**
		// WriteAt writes len(b) bytes to the File starting at byte offset off.
		// It returns the number of bytes written and an error, if any.
		// WriteAt returns a non-nil error when n != len(b).
		//
		// If file was opened with the O_APPEND flag, WriteAt returns an error.
	**/
	@:keep
	static public function writeAt(_f:Ref<File>, _b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		throw "os.writeAt is not yet implemented";

	/**
		// Write writes len(b) bytes from b to the File.
		// It returns the number of bytes written and an error, if any.
		// Write returns a non-nil error when n != len(b).
	**/
	@:keep
	static public function write(_f:Ref<File>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		final i = @:privateAccess _f._output.writeBytes(_b.toBytes(), 0, _b.length.toBasic());
		if (i != _b.length.toBasic())
			return {_0: i, _1: stdgo.errors.Errors.new_("invalid write")};
		return {_0: i, _1: null};
	}

	/**
		// ReadFrom implements io.ReaderFrom.
	**/
	@:keep
	static public function readFrom(_f:Ref<File>, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		throw "os.readFrom is not yet implemented";

	/**
		// ReadAt reads len(b) bytes from the File starting at byte offset off.
		// It returns the number of bytes read and the error, if any.
		// ReadAt always returns a non-nil error when n < len(b).
		// At end of file, that error is io.EOF.
	**/
	@:keep
	static public function readAt(_f:Ref<File>, _b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		throw "os.readAt is not yet implemented";

	/**
		// Read reads up to len(b) bytes from the File and stores them in b.
		// It returns the number of bytes read and any error encountered.
		// At end of file, Read returns 0, io.EOF.
	**/
	@:keep
	static public function read(_f:Ref<File>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "os.read is not yet implemented";

	/**
		// Name returns the name of the file as presented to Open.
	**/
	@:keep
	static public function name(_f:Ref<File>):GoString
		throw "os.name is not yet implemented";

	@:keep
	static public function _readdir(_f:Ref<File>, _n:GoInt, _mode:T_readdirMode):{
		var _0:Slice<GoString>;
		var _1:Slice<DirEntry>;
		var _2:Slice<FileInfo>;
		var _3:Error;
	}
		throw "os._readdir is not yet implemented";

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
	static public function readDir(_f:Ref<File>, _n:GoInt):{var _0:Slice<DirEntry>; var _1:Error;}
		throw "os.readDir is not yet implemented";

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
	static public function readdirnames(_f:Ref<File>, _n:GoInt):{var _0:Slice<GoString>; var _1:Error;}
		throw "os.readdirnames is not yet implemented";

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
	static public function readdir(_f:Ref<File>, _n:GoInt):{var _0:Slice<FileInfo>; var _1:Error;}
		throw "os.readdir is not yet implemented";

	@:embedded
	public static function _close(__self__:File):Error
		return __self__._close();
}

class T_fileStat_asInterface {
	@:keep
	public function sys():AnyInterface
		return __self__.value.sys();

	@:keep
	public function modTime():stdgo.time.Time.Time
		return __self__.value.modTime();

	@:keep
	public function mode():FileMode
		return __self__.value.mode();

	@:keep
	public function size():GoInt64
		return __self__.value.size();

	@:keep
	public function isDir():Bool
		return __self__.value.isDir();

	@:keep
	public function name():GoString
		return __self__.value.name();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_fileStat>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.T_fileStat_asInterface) class T_fileStat_static_extension {
	@:keep
	static public function sys(_fs:Ref<T_fileStat>):AnyInterface
		throw "os.sys is not yet implemented";

	@:keep
	static public function modTime(_fs:Ref<T_fileStat>):stdgo.time.Time.Time
		throw "os.modTime is not yet implemented";

	@:keep
	static public function mode(_fs:Ref<T_fileStat>):FileMode
		throw "os.mode is not yet implemented";

	@:keep
	static public function size(_fs:Ref<T_fileStat>):GoInt64
		throw "os.size is not yet implemented";

	@:keep
	static public function isDir(_fs:Ref<T_fileStat>):Bool
		throw "os.isDir is not yet implemented";

	@:keep
	static public function name(_fs:Ref<T_fileStat>):GoString
		throw "os.name is not yet implemented";
}

class T_dirFS_asInterface {
	@:keep
	public function stat(_name:GoString):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		return __self__.value.stat(_name);

	@:keep
	public function open(_name:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:Error;}
		return __self__.value.open(_name);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_dirFS>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os.Os.T_dirFS_asInterface) class T_dirFS_static_extension {
	@:keep
	static public function stat(_dir:T_dirFS, _name:GoString):{var _0:stdgo.io.fs.Fs.FileInfo; var _1:Error;}
		throw "os.stat is not yet implemented";

	@:keep
	static public function open(_dir:T_dirFS, _name:GoString):{var _0:stdgo.io.fs.Fs.File; var _1:Error;}
		throw "os.open is not yet implemented";
}
