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
var _dirBufPool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var errInvalid : stdgo.Error = ((null : stdgo.Error));
var errPermission : stdgo.Error = ((null : stdgo.Error));
var errExist : stdgo.Error = ((null : stdgo.Error));
var errNotExist : stdgo.Error = ((null : stdgo.Error));
var errClosed : stdgo.Error = ((null : stdgo.Error));
var errNoDeadline : stdgo.Error = ((null : stdgo.Error));
var errDeadlineExceeded : stdgo.Error = ((null : stdgo.Error));
var errProcessDone : stdgo.Error = ((null : stdgo.Error));
var interrupt : Signal = new stdgo.syscall.Syscall.Signal();
var kill : Signal = new stdgo.syscall.Syscall.Signal();
var _errWriteAtInAppendMode : stdgo.Error = ((null : stdgo.Error));
var stdin : Ref<File> = ((null : File));
var stdout : Ref<File> = ((null : File));
var stderr : Ref<File> = ((null : File));
var _errPatternHasSeparator : stdgo.Error = ((null : stdgo.Error));
var _lstat : GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } = null;
var atime : stdgo.io.fs.Fs.FileInfo -> stdgo.time.Time.Time = null;
var lstatP : Ref<GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }> = ((null : GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }));
var errWriteAtInAppendMode : stdgo.Error = ((null : stdgo.Error));
var testingForceReadDirLstat : Pointer<Bool> = ((null : Pointer<Bool>));
var errPatternHasSeparator : stdgo.Error = ((null : stdgo.Error));
var splitPath : GoString -> { var _0 : GoString; var _1 : GoString; } = null;
var _testingForceReadDirLstat : Bool = false;
var _getwdCache : T__struct_0 = new T__struct_0();
var args : Slice<GoString> = ((null : Slice<GoString>));
typedef T_timeout = StructType & {
    public function timeout():Bool;
};
typedef Signal = StructType & {
    public function string():GoString;
    public function signal():Void;
};
@:structInit @:using(stdgo.os.Os.T_dirInfo_static_extension) class T_dirInfo {
    public var _buf : Ref<Slice<GoUInt8>> = null;
    public var _nbuf : GoInt = 0;
    public var _bufp : GoInt = 0;
    public function new(?_buf:Ref<Slice<GoUInt8>>, ?_nbuf:GoInt, ?_bufp:GoInt) {
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_bufp != null) this._bufp = _bufp;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dirInfo(_buf, _nbuf, _bufp);
    }
}
@:structInit @:using(stdgo.os.Os.SyscallError_static_extension) class SyscallError {
    public var syscall : GoString = "";
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?syscall:GoString, ?err:stdgo.Error) {
        if (syscall != null) this.syscall = syscall;
        if (err != null) this.err = err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SyscallError(syscall, err);
    }
}
@:structInit @:using(stdgo.os.Os.Process_static_extension) class Process {
    public var pid : GoInt = 0;
    public var _handle : GoUIntptr = 0;
    public var _isdone : GoUInt32 = 0;
    public var _sigMu : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
    public function new(?pid:GoInt, ?_handle:GoUIntptr, ?_isdone:GoUInt32, ?_sigMu:stdgo.sync.Sync.RWMutex) {
        if (pid != null) this.pid = pid;
        if (_handle != null) this._handle = _handle;
        if (_isdone != null) this._isdone = _isdone;
        if (_sigMu != null) this._sigMu = _sigMu;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Process(pid, _handle, _isdone, _sigMu);
    }
}
@:structInit class ProcAttr {
    public var dir : GoString = "";
    public var env : Slice<GoString> = ((null : Slice<GoString>));
    public var files : Slice<Ref<File>> = ((null : Slice<Ref<File>>));
    public var sys : Ref<stdgo.syscall.Syscall.SysProcAttr> = ((null : stdgo.syscall.Syscall.SysProcAttr));
    public function new(?dir:GoString, ?env:Slice<GoString>, ?files:Slice<Ref<File>>, ?sys:Ref<stdgo.syscall.Syscall.SysProcAttr>) {
        if (dir != null) this.dir = dir;
        if (env != null) this.env = env;
        if (files != null) this.files = files;
        if (sys != null) this.sys = sys;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ProcAttr(dir, env, files, sys);
    }
}
@:structInit @:using(stdgo.os.Os.ProcessState_static_extension) class ProcessState {
    public var _pid : GoInt = 0;
    public var _status : stdgo.syscall.Syscall.WaitStatus = new stdgo.syscall.Syscall.WaitStatus();
    public var _rusage : Ref<stdgo.syscall.Syscall.Rusage> = ((null : stdgo.syscall.Syscall.Rusage));
    public function new(?_pid:GoInt, ?_status:stdgo.syscall.Syscall.WaitStatus, ?_rusage:Ref<stdgo.syscall.Syscall.Rusage>) {
        if (_pid != null) this._pid = _pid;
        if (_status != null) this._status = _status;
        if (_rusage != null) this._rusage = _rusage;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ProcessState(_pid, _status, _rusage);
    }
}
@:structInit @:using(stdgo.os.Os.LinkError_static_extension) class LinkError {
    public var op : GoString = "";
    public var old : GoString = "";
    public var new_ : GoString = "";
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?op:GoString, ?old:GoString, ?new_:GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (old != null) this.old = old;
        if (new_ != null) this.new_ = new_;
        if (err != null) this.err = err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new LinkError(op, old, new_, err);
    }
}
@:structInit @:using(stdgo.os.Os.T_onlyWriter_static_extension) class T_onlyWriter {
    @:embedded
    public var writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?writer:stdgo.io.Io.Writer) {
        if (writer != null) this.writer = writer;
    }
    @:embedded
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return null;
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_onlyWriter(writer);
    }
}
@:structInit @:using(stdgo.os.Os.T_file_static_extension) class T_file {
    public var _pfd : stdgo.internal.poll.Poll.FD = new stdgo.internal.poll.Poll.FD();
    public var _name : GoString = "";
    public var _dirinfo : Ref<T_dirInfo> = ((null : T_dirInfo));
    public var _nonblock : Bool = false;
    public var _stdoutOrErr : Bool = false;
    public var _appendMode : Bool = false;
    public function new(?_pfd:stdgo.internal.poll.Poll.FD, ?_name:GoString, ?_dirinfo:Ref<T_dirInfo>, ?_nonblock:Bool, ?_stdoutOrErr:Bool, ?_appendMode:Bool) {
        if (_pfd != null) this._pfd = _pfd;
        if (_name != null) this._name = _name;
        if (_dirinfo != null) this._dirinfo = _dirinfo;
        if (_nonblock != null) this._nonblock = _nonblock;
        if (_stdoutOrErr != null) this._stdoutOrErr = _stdoutOrErr;
        if (_appendMode != null) this._appendMode = _appendMode;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_file(_pfd, _name, _dirinfo, _nonblock, _stdoutOrErr, _appendMode);
    }
}
@:structInit @:using(stdgo.os.Os.T_unixDirent_static_extension) class T_unixDirent {
    public var _parent : GoString = "";
    public var _name : GoString = "";
    public var _typ : stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
    public var _info : stdgo.io.fs.Fs.FileInfo = ((null : stdgo.io.fs.Fs.FileInfo));
    public function new(?_parent:GoString, ?_name:GoString, ?_typ:stdgo.io.fs.Fs.FileMode, ?_info:stdgo.io.fs.Fs.FileInfo) {
        if (_parent != null) this._parent = _parent;
        if (_name != null) this._name = _name;
        if (_typ != null) this._typ = _typ;
        if (_info != null) this._info = _info;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_unixDirent(_parent, _name, _typ, _info);
    }
}
@:structInit @:using(stdgo.os.Os.T_rawConn_static_extension) class T_rawConn {
    public var _file : Ref<File> = ((null : File));
    public function new(?_file:Ref<File>) {
        if (_file != null) this._file = _file;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_rawConn(_file);
    }
}
@:structInit @:using(stdgo.os.Os.File_static_extension) class File {
    @:embedded
    public var _file : Ref<T_file> = ((null : T_file));
    public function new(?_file:Ref<T_file>) {
        if (_file != null) this._file = _file;
    }
    @:embedded
    public function _close():stdgo.Error return ((null : stdgo.Error));
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new File(_file);
    }
}
@:structInit @:using(stdgo.os.Os.T_fileStat_static_extension) class T_fileStat {
    public var _name : GoString = "";
    public var _size : GoInt64 = 0;
    public var _mode : stdgo.io.fs.Fs.FileMode = new stdgo.io.fs.Fs.FileMode();
    public var _modTime : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var _sys : stdgo.syscall.Syscall.Stat_t = new stdgo.syscall.Syscall.Stat_t();
    public function new(?_name:GoString, ?_size:GoInt64, ?_mode:stdgo.io.fs.Fs.FileMode, ?_modTime:stdgo.time.Time.Time, ?_sys:stdgo.syscall.Syscall.Stat_t) {
        if (_name != null) this._name = _name;
        if (_size != null) this._size = _size;
        if (_mode != null) this._mode = _mode;
        if (_modTime != null) this._modTime = _modTime;
        if (_sys != null) this._sys = _sys;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fileStat(_name, _size, _mode, _modTime, _sys);
    }
}
@:structInit @:local @:using(stdgo.os.Os.T__struct_0_static_extension) class T__struct_0 {
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _dir : GoString = "";
    public function string():String return "{" + Go.string(mutex) + " " + Go.string(_dir) + "}";
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_dir:GoString, ?string) {
        if (mutex != null) this.mutex = mutex;
        if (_dir != null) this._dir = _dir;
    }
    @:embedded
    public function lock() null;
    @:embedded
    public function tryLock():Bool return false;
    @:embedded
    public function unlock() null;
    @:embedded
    public function _lockSlow() null;
    @:embedded
    public function _unlockSlow(__0:GoInt32) null;
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(mutex, _dir);
    }
}
@:named typedef T_readdirMode = GoInt;
@:named typedef DirEntry = stdgo.io.fs.Fs.DirEntry;
@:named typedef PathError = stdgo.io.fs.Fs.PathError;
@:named typedef T_syscallErrorType = stdgo.syscall.Syscall.Errno;
@:named @:using(stdgo.os.Os.T_dirFS_static_extension) typedef T_dirFS = GoString;
@:named typedef T_newFileKind = GoInt;
@:named typedef FileInfo = stdgo.io.fs.Fs.FileInfo;
@:named typedef FileMode = stdgo.io.fs.Fs.FileMode;
/**
    // ReadDir reads the named directory,
    // returning all its directory entries sorted by filename.
    // If an error occurs reading the directory,
    // ReadDir returns the entries it was able to read before the error,
    // along with the error.
**/
function readDir(_name:GoString):{ var _0 : Slice<DirEntry>; var _1 : Error; } return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : ((null : stdgo.Error)) };
/**
    // readInt returns the size-bytes unsigned integer in native byte order at offset off.
**/
function _readInt(_b:Slice<GoByte>, _off:GoUIntptr, _size:GoUIntptr):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function _readIntBE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 return ((0 : GoUInt64));
function _readIntLE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 return ((0 : GoUInt64));
function _direntIno(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function _direntReclen(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function _direntNamlen(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function _direntType(_buf:Slice<GoByte>):FileMode return new stdgo.io.fs.Fs.FileMode();
/**
    // Expand replaces ${var} or $var in the string based on the mapping function.
    // For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
**/
function expand(_s:GoString, _mapping:GoString -> GoString):GoString return (("" : GoString));
/**
    // ExpandEnv replaces ${var} or $var in the string according to the values
    // of the current environment variables. References to undefined
    // variables are replaced by the empty string.
**/
function expandEnv(_s:GoString):GoString return (("" : GoString));
/**
    // isShellSpecialVar reports whether the character identifies a special
    // shell variable such as $*.
**/
function _isShellSpecialVar(_c:GoUInt8):Bool return false;
/**
    // isAlphaNum reports whether the byte is an ASCII letter, number, or underscore
**/
function _isAlphaNum(_c:GoUInt8):Bool return false;
/**
    // getShellName returns the name that begins the string and the number of bytes
    // consumed to extract it. If the name is enclosed in {}, it's part of a ${}
    // expansion and two more bytes are needed than the length of the name.
**/
function _getShellName(_s:GoString):{ var _0 : GoString; var _1 : GoInt; } return { _0 : (("" : GoString)), _1 : ((0 : GoInt)) };
/**
    // Getenv retrieves the value of the environment variable named by the key.
    // It returns the value, which will be empty if the variable is not present.
    // To distinguish between an empty value and an unset value, use LookupEnv.
**/
function getenv(_key:GoString):GoString return (("" : GoString));
/**
    // LookupEnv retrieves the value of the environment variable named
    // by the key. If the variable is present in the environment the
    // value (which may be empty) is returned and the boolean is true.
    // Otherwise the returned value will be empty and the boolean will
    // be false.
**/
function lookupEnv(_key:GoString):{ var _0 : GoString; var _1 : Bool; } return { _0 : (("" : GoString)), _1 : false };
/**
    // Setenv sets the value of the environment variable named by the key.
    // It returns an error, if any.
**/
function setenv(_key:GoString, _value:GoString):Error return ((null : stdgo.Error));
/**
    // Unsetenv unsets a single environment variable.
**/
function unsetenv(_key:GoString):Error return ((null : stdgo.Error));
/**
    // Clearenv deletes all environment variables.
**/
function clearenv():Void return;
/**
    // Environ returns a copy of strings representing the environment,
    // in the form "key=value".
**/
function environ():Slice<GoString> return ((null : Slice<GoString>));
function _errClosed():Error return ((null : stdgo.Error));
function _errNoDeadline():Error return ((null : stdgo.Error));
/**
    // errDeadlineExceeded returns the value for os.ErrDeadlineExceeded.
    // This error comes from the internal/poll package, which is also
    // used by package net. Doing this this way ensures that the net
    // package will return os.ErrDeadlineExceeded for an exceeded deadline,
    // as documented by net.Conn.SetDeadline, without requiring any extra
    // work in the net package and without requiring the internal/poll
    // package to import os (which it can't, because that would be circular).
**/
function _errDeadlineExceeded():Error return ((null : stdgo.Error));
/**
    // NewSyscallError returns, as an error, a new SyscallError
    // with the given system call name and error details.
    // As a convenience, if err is nil, NewSyscallError returns nil.
**/
function newSyscallError(_syscall:GoString, _err:Error):Error return ((null : stdgo.Error));
/**
    // IsExist returns a boolean indicating whether the error is known to report
    // that a file or directory already exists. It is satisfied by ErrExist as
    // well as some syscall errors.
    //
    // This function predates errors.Is. It only supports errors returned by
    // the os package. New code should use errors.Is(err, fs.ErrExist).
**/
function isExist(_err:Error):Bool return false;
/**
    // IsNotExist returns a boolean indicating whether the error is known to
    // report that a file or directory does not exist. It is satisfied by
    // ErrNotExist as well as some syscall errors.
    //
    // This function predates errors.Is. It only supports errors returned by
    // the os package. New code should use errors.Is(err, fs.ErrNotExist).
**/
function isNotExist(_err:Error):Bool return false;
/**
    // IsPermission returns a boolean indicating whether the error is known to
    // report that permission is denied. It is satisfied by ErrPermission as well
    // as some syscall errors.
    //
    // This function predates errors.Is. It only supports errors returned by
    // the os package. New code should use errors.Is(err, fs.ErrPermission).
**/
function isPermission(_err:Error):Bool return false;
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
function isTimeout(_err:Error):Bool return false;
function _underlyingErrorIs(_err:Error, _target:Error):Bool return false;
/**
    // underlyingError returns the underlying error for known os error types.
**/
function _underlyingError(_err:Error):Error return ((null : stdgo.Error));
/**
    // wrapSyscallError takes an error and a syscall name. If the error is
    // a syscall.Errno, it wraps it in a os.SyscallError using the syscall name.
**/
function _wrapSyscallError(_name:GoString, _err:Error):Error return ((null : stdgo.Error));
function _newProcess(_pid:GoInt, _handle:GoUIntptr):Process return ((null : Process));
/**
    // Getpid returns the process id of the caller.
**/
function getpid():GoInt return ((0 : GoInt));
/**
    // Getppid returns the process id of the caller's parent.
**/
function getppid():GoInt return ((0 : GoInt));
/**
    // FindProcess looks for a running process by its pid.
    //
    // The Process it returns can be used to obtain information
    // about the underlying operating system process.
    //
    // On Unix systems, FindProcess always succeeds and returns a Process
    // for the given pid, regardless of whether the process exists.
**/
function findProcess(_pid:GoInt):{ var _0 : Process; var _1 : Error; } return { _0 : ((null : Process)), _1 : ((null : stdgo.Error)) };
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
function startProcess(_name:GoString, _argv:Slice<GoString>, _attr:ProcAttr):{ var _0 : Process; var _1 : Error; } return { _0 : ((null : Process)), _1 : ((null : stdgo.Error)) };
function _startProcess(_name:GoString, _argv:Slice<GoString>, _attr:ProcAttr):{ var _0 : Process; var _1 : Error; } return { _0 : ((null : Process)), _1 : ((null : stdgo.Error)) };
function _findProcess(_pid:GoInt):{ var _0 : Process; var _1 : Error; } return { _0 : ((null : Process)), _1 : ((null : stdgo.Error)) };
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
function executable():{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
function _executable():{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
/**
    // stringsTrimSuffix is the same as strings.TrimSuffix.
**/
function _stringsTrimSuffix(_s:GoString, _suffix:GoString):GoString return (("" : GoString));
function _genericReadFrom(_f:File, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
/**
    // Mkdir creates a new directory with the specified name and permission
    // bits (before umask).
    // If there is an error, it will be of type *PathError.
**/
function mkdir(_name:GoString, _perm:FileMode):Error return ((null : stdgo.Error));
/**
    // setStickyBit adds ModeSticky to the permission bits of path, non atomic.
**/
function _setStickyBit(_name:GoString):Error return ((null : stdgo.Error));
/**
    // Chdir changes the current working directory to the named directory.
    // If there is an error, it will be of type *PathError.
**/
function chdir(_dir:GoString):Error return ((null : stdgo.Error));
/**
    // Open opens the named file for reading. If successful, methods on
    // the returned file can be used for reading; the associated file
    // descriptor has mode O_RDONLY.
    // If there is an error, it will be of type *PathError.
**/
function open(_name:GoString):{ var _0 : File; var _1 : Error; } return { _0 : ((null : File)), _1 : ((null : stdgo.Error)) };
/**
    // Create creates or truncates the named file. If the file already exists,
    // it is truncated. If the file does not exist, it is created with mode 0666
    // (before umask). If successful, methods on the returned File can
    // be used for I/O; the associated file descriptor has mode O_RDWR.
    // If there is an error, it will be of type *PathError.
**/
function create(_name:GoString):{ var _0 : File; var _1 : Error; } return { _0 : ((null : File)), _1 : ((null : stdgo.Error)) };
/**
    // OpenFile is the generalized open call; most users will use Open
    // or Create instead. It opens the named file with specified flag
    // (O_RDONLY etc.). If the file does not exist, and the O_CREATE flag
    // is passed, it is created with mode perm (before umask). If successful,
    // methods on the returned File can be used for I/O.
    // If there is an error, it will be of type *PathError.
**/
function openFile(_name:GoString, _flag:GoInt, _perm:FileMode):{ var _0 : File; var _1 : Error; } return { _0 : ((null : File)), _1 : ((null : stdgo.Error)) };
/**
    // Rename renames (moves) oldpath to newpath.
    // If newpath already exists and is not a directory, Rename replaces it.
    // OS-specific restrictions may apply when oldpath and newpath are in different directories.
    // If there is an error, it will be of type *LinkError.
**/
function rename(_oldpath:GoString, _newpath:GoString):Error return ((null : stdgo.Error));
/**
    // Many functions in package syscall return a count of -1 instead of 0.
    // Using fixCount(call()) instead of call() corrects the count.
**/
function _fixCount(_n:GoInt, _err:Error):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
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
function tempDir():GoString return (("" : GoString));
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
function userCacheDir():{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
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
function userConfigDir():{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
/**
    // UserHomeDir returns the current user's home directory.
    //
    // On Unix, including macOS, it returns the $HOME environment variable.
    // On Windows, it returns %USERPROFILE%.
    // On Plan 9, it returns the $home environment variable.
**/
function userHomeDir():{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
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
function chmod(_name:GoString, _mode:FileMode):Error return ((null : stdgo.Error));
/**
    // isWindowsNulName reports whether name is os.DevNull ('NUL') on Windows.
    // True is returned if name is 'NUL' whatever the case.
**/
function _isWindowsNulName(_name:GoString):Bool return false;
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
function dirFS(_dir:GoString):stdgo.io.fs.Fs.FS return ((null : stdgo.io.fs.Fs.FS));
function _containsAny(_s:GoString, _chars:GoString):Bool return false;
/**
    // ReadFile reads the named file and returns the contents.
    // A successful call returns err == nil, not err == EOF.
    // Because ReadFile reads the whole file, it does not treat an EOF from Read
    // as an error to be reported.
**/
function readFile(_name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
/**
    // WriteFile writes data to the named file, creating it if necessary.
    // If the file does not exist, WriteFile creates it with permissions perm (before umask);
    // otherwise WriteFile truncates it before writing, without changing permissions.
**/
function writeFile(_name:GoString, _data:Slice<GoByte>, _perm:FileMode):Error return ((null : stdgo.Error));
function _sigpipe():Void return;
/**
    // syscallMode returns the syscall-specific mode bits from Go's portable mode bits.
**/
function _syscallMode(_i:FileMode):GoUInt32 return ((0 : GoUInt32));
/**
    // See docs in file.go:Chmod.
**/
function _chmod(_name:GoString, _mode:FileMode):Error return ((null : stdgo.Error));
/**
    // Chown changes the numeric uid and gid of the named file.
    // If the file is a symbolic link, it changes the uid and gid of the link's target.
    // A uid or gid of -1 means to not change that value.
    // If there is an error, it will be of type *PathError.
    //
    // On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
    // EPLAN9 error, wrapped in *PathError.
**/
function chown(_name:GoString, _uid:GoInt, _gid:GoInt):Error return ((null : stdgo.Error));
/**
    // Lchown changes the numeric uid and gid of the named file.
    // If the file is a symbolic link, it changes the uid and gid of the link itself.
    // If there is an error, it will be of type *PathError.
    //
    // On Windows, it always returns the syscall.EWINDOWS error, wrapped
    // in *PathError.
**/
function lchown(_name:GoString, _uid:GoInt, _gid:GoInt):Error return ((null : stdgo.Error));
/**
    // Chtimes changes the access and modification times of the named
    // file, similar to the Unix utime() or utimes() functions.
    //
    // The underlying filesystem may truncate or round the values to a
    // less precise time unit.
    // If there is an error, it will be of type *PathError.
**/
function chtimes(_name:GoString, _atime:stdgo.time.Time.Time, _mtime:stdgo.time.Time.Time):Error return ((null : stdgo.Error));
/**
    // ignoringEINTR makes a function call and repeats it if it returns an
    // EINTR error. This appears to be required even though we install all
    // signal handlers with SA_RESTART: see #22838, #38033, #38836, #40846.
    // Also #20400 and #36644 are issues in which a signal handler is
    // installed without setting SA_RESTART. None of these are the common case,
    // but there are enough of them that it seems that we can't avoid
    // an EINTR loop.
**/
function _ignoringEINTR(_fn:() -> Error):Error return ((null : stdgo.Error));
/**
    // fixLongPath is a noop on non-Windows platforms.
**/
function _fixLongPath(_path:GoString):GoString return (("" : GoString));
function _rename(_oldname:GoString, _newname:GoString):Error return ((null : stdgo.Error));
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
function newFile(_fd:GoUIntptr, _name:GoString):File return ((null : File));
/**
    // newFile is like NewFile, but if called from OpenFile or Pipe
    // (as passed in the kind parameter) it tries to add the file to
    // the runtime poller.
**/
function _newFile(_fd:GoUIntptr, _name:GoString, _kind:T_newFileKind):File return ((null : File));
/**
    // epipecheck raises SIGPIPE if we get an EPIPE error on standard
    // output or standard error. See the SIGPIPE docs in os/signal, and
    // issue 11845.
**/
function _epipecheck(_file:File, _e:Error):Void return;
/**
    // openFileNolog is the Unix implementation of OpenFile.
    // Changes here should be reflected in openFdAt, if relevant.
**/
function _openFileNolog(_name:GoString, _flag:GoInt, _perm:FileMode):{ var _0 : File; var _1 : Error; } return { _0 : ((null : File)), _1 : ((null : stdgo.Error)) };
/**
    // Truncate changes the size of the named file.
    // If the file is a symbolic link, it changes the size of the link's target.
    // If there is an error, it will be of type *PathError.
**/
function truncate(_name:GoString, _size:GoInt64):Error return ((null : stdgo.Error));
/**
    // Remove removes the named file or (empty) directory.
    // If there is an error, it will be of type *PathError.
**/
function remove(_name:GoString):Error return ((null : stdgo.Error));
function _tempDir():GoString return (("" : GoString));
/**
    // Link creates newname as a hard link to the oldname file.
    // If there is an error, it will be of type *LinkError.
**/
function link(_oldname:GoString, _newname:GoString):Error return ((null : stdgo.Error));
/**
    // Symlink creates newname as a symbolic link to oldname.
    // On Windows, a symlink to a non-existent oldname creates a file symlink;
    // if oldname is later created as a directory the symlink will not work.
    // If there is an error, it will be of type *LinkError.
**/
function symlink(_oldname:GoString, _newname:GoString):Error return ((null : stdgo.Error));
/**
    // Readlink returns the destination of the named symbolic link.
    // If there is an error, it will be of type *PathError.
**/
function readlink(_name:GoString):{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
function _newUnixDirent(_parent:GoString, _name:GoString, _typ:FileMode):{ var _0 : DirEntry; var _1 : Error; } return { _0 : ((null : stdgo.io.fs.Fs.DirEntry)), _1 : ((null : stdgo.Error)) };
/**
    // Getwd returns a rooted path name corresponding to the
    // current directory. If the current directory can be
    // reached via multiple paths (due to symbolic links),
    // Getwd may return any one of them.
**/
function getwd():{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
/**
    // MkdirAll creates a directory named path,
    // along with any necessary parents, and returns nil,
    // or else returns an error.
    // The permission bits perm (before umask) are used for all
    // directories that MkdirAll creates.
    // If path is already a directory, MkdirAll does nothing
    // and returns nil.
**/
function mkdirAll(_path:GoString, _perm:FileMode):Error return ((null : stdgo.Error));
/**
    // RemoveAll removes path and any children it contains.
    // It removes everything it can but returns the first error
    // it encounters. If the path does not exist, RemoveAll
    // returns nil (no error).
    // If there is an error, it will be of type *PathError.
**/
function removeAll(_path:GoString):Error return ((null : stdgo.Error));
/**
    // endsWithDot reports whether the final component of path is ".".
**/
function _endsWithDot(_path:GoString):Bool return false;
/**
    // IsPathSeparator reports whether c is a directory separator character.
**/
function isPathSeparator(_c:GoUInt8):Bool return false;
/**
    // basename removes trailing slashes and the leading directory name from path name.
**/
function _basename(_name:GoString):GoString return (("" : GoString));
/**
    // splitPath returns the base name and parent directory.
**/
function _splitPath(_path:GoString):{ var _0 : GoString; var _1 : GoString; } return { _0 : (("" : GoString)), _1 : (("" : GoString)) };
function _fixRootDirectory(_p:GoString):GoString return (("" : GoString));
/**
    // Pipe returns a connected pair of Files; reads from r return bytes written to w.
    // It returns the files and an error, if any.
**/
function pipe():{ var _0 : File; var _1 : File; var _2 : Error; } return { _0 : ((null : File)), _1 : ((null : File)), _2 : ((null : stdgo.Error)) };
function _runtime_args():Slice<GoString> return ((null : Slice<GoString>));
/**
    // Getuid returns the numeric user id of the caller.
    //
    // On Windows, it returns -1.
**/
function getuid():GoInt return ((0 : GoInt));
/**
    // Geteuid returns the numeric effective user id of the caller.
    //
    // On Windows, it returns -1.
**/
function geteuid():GoInt return ((0 : GoInt));
/**
    // Getgid returns the numeric group id of the caller.
    //
    // On Windows, it returns -1.
**/
function getgid():GoInt return ((0 : GoInt));
/**
    // Getegid returns the numeric effective group id of the caller.
    //
    // On Windows, it returns -1.
**/
function getegid():GoInt return ((0 : GoInt));
/**
    // Getgroups returns a list of the numeric ids of groups that the caller belongs to.
    //
    // On Windows, it returns syscall.EWINDOWS. See the os/user package
    // for a possible alternative.
**/
function getgroups():{ var _0 : Slice<GoInt>; var _1 : Error; } return { _0 : ((null : Slice<GoInt>)), _1 : ((null : stdgo.Error)) };
/**
    // Exit causes the current program to exit with the given status code.
    // Conventionally, code zero indicates success, non-zero an error.
    // The program terminates immediately; deferred functions are not run.
    //
    // For portability, the status code should be in the range [0, 125].
**/
function exit(_code:GoInt):Void return;
function _runtime_beforeExit():Void return;
function _newRawConn(_file:File):{ var _0 : T_rawConn; var _1 : Error; } return { _0 : ((null : T_rawConn)), _1 : ((null : stdgo.Error)) };
function _removeAll(_path:GoString):Error return ((null : stdgo.Error));
/**
    // Stat returns a FileInfo describing the named file.
    // If there is an error, it will be of type *PathError.
**/
function stat(_name:GoString):{ var _0 : FileInfo; var _1 : Error; } return { _0 : ((null : stdgo.io.fs.Fs.FileInfo)), _1 : ((null : stdgo.Error)) };
/**
    // Lstat returns a FileInfo describing the named file.
    // If the file is a symbolic link, the returned FileInfo
    // describes the symbolic link. Lstat makes no attempt to follow the link.
    // If there is an error, it will be of type *PathError.
**/
function lstat(_name:GoString):{ var _0 : FileInfo; var _1 : Error; } return { _0 : ((null : stdgo.io.fs.Fs.FileInfo)), _1 : ((null : stdgo.Error)) };
function _fillFileStatFromSys(_fs:T_fileStat, _name:GoString):Void return;
function _timespecToTime(_sec:GoInt64, _nsec:GoInt64):stdgo.time.Time.Time return new stdgo.time.Time.Time();
/**
    // For testing.
**/
function _atime(_fi:FileInfo):stdgo.time.Time.Time return new stdgo.time.Time.Time();
/**
    // statNolog stats a file with no test logging.
**/
function _statNolog(_name:GoString):{ var _0 : FileInfo; var _1 : Error; } return { _0 : ((null : stdgo.io.fs.Fs.FileInfo)), _1 : ((null : stdgo.Error)) };
/**
    // lstatNolog lstats a file with no test logging.
**/
function _lstatNolog(_name:GoString):{ var _0 : FileInfo; var _1 : Error; } return { _0 : ((null : stdgo.io.fs.Fs.FileInfo)), _1 : ((null : stdgo.Error)) };
/**
    // itox converts val (an int) to a hexdecimal string.
**/
function _itox(_val:GoInt):GoString return (("" : GoString));
/**
    // uitox converts val (a uint) to a hexdecimal string.
**/
function _uitox(_val:GoUInt):GoString return (("" : GoString));
/**
    // Hostname returns the host name reported by the kernel.
**/
function hostname():{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
function _hostname():{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
/**
    // fastrand provided by runtime.
    // We generate random temporary file names so that there's a good
    // chance the file doesn't exist yet - keeps the number of tries in
    // TempFile to a minimum.
**/
function _fastrand():GoUInt32 return ((0 : GoUInt32));
function _nextRandom():GoString return (("" : GoString));
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
function createTemp(_dir:GoString, _pattern:GoString):{ var _0 : File; var _1 : Error; } return { _0 : ((null : File)), _1 : ((null : stdgo.Error)) };
/**
    // prefixAndSuffix splits pattern by the last wildcard "*", if applicable,
    // returning prefix as the part before "*" and suffix as the part after "*".
**/
function _prefixAndSuffix(_pattern:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : Error; } return { _0 : (("" : GoString)), _1 : (("" : GoString)), _2 : ((null : stdgo.Error)) };
/**
    // MkdirTemp creates a new temporary directory in the directory dir
    // and returns the pathname of the new directory.
    // The new directory's name is generated by adding a random string to the end of pattern.
    // If pattern includes a "*", the random string replaces the last "*" instead.
    // If dir is the empty string, MkdirTemp uses the default directory for temporary files, as returned by TempDir.
    // Multiple programs or goroutines calling MkdirTemp simultaneously will not choose the same directory.
    // It is the caller's responsibility to remove the directory when it is no longer needed.
**/
function mkdirTemp(_dir:GoString, _pattern:GoString):{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
function _joinPath(_dir:GoString, _name:GoString):GoString return (("" : GoString));
/**
    // LastIndexByte from the strings package.
**/
function _lastIndex(_s:GoString, _sep:GoByte):GoInt return ((0 : GoInt));
/**
    // Getpagesize returns the underlying system's memory page size.
**/
function getpagesize():GoInt return ((0 : GoInt));
/**
    // SameFile reports whether fi1 and fi2 describe the same file.
    // For example, on Unix this means that the device and inode fields
    // of the two underlying structures are identical; on other systems
    // the decision may be based on the path names.
    // SameFile only applies to results returned by this package's Stat.
    // It returns false in other cases.
**/
function sameFile(_fi1:FileInfo, _fi2:FileInfo):Bool return false;
function _sameFile(_fs1:T_fileStat, _fs2:T_fileStat):Bool return false;
@:keep class T_dirInfo_static_extension {
    @:keep
    static public function _close( _d:T_dirInfo):Void return;
}
class T_dirInfo_wrapper {
    @:keep
    public var _close : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_dirInfo;
}
@:keep class SyscallError_static_extension {
    /**
        // Timeout reports whether this error represents a timeout.
    **/
    @:keep
    static public function timeout( _e:SyscallError):Bool return false;
    @:keep
    static public function unwrap( _e:SyscallError):Error return ((null : stdgo.Error));
    @:keep
    static public function error( _e:SyscallError):GoString return (("" : GoString));
}
class SyscallError_wrapper {
    /**
        // Timeout reports whether this error represents a timeout.
    **/
    @:keep
    public var timeout : () -> Bool = null;
    @:keep
    public var unwrap : () -> Error = null;
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : SyscallError;
}
@:keep class Process_static_extension {
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
    static public function _blockUntilWaitable( _p:Process):{ var _0 : Bool; var _1 : Error; } return { _0 : false, _1 : ((null : stdgo.Error)) };
    @:keep
    static public function _release( _p:Process):Error return ((null : stdgo.Error));
    @:keep
    static public function _signal( _p:Process, _sig:Signal):Error return ((null : stdgo.Error));
    @:keep
    static public function _wait( _p:Process):{ var _0 : ProcessState; var _1 : Error; } return { _0 : ((null : ProcessState)), _1 : ((null : stdgo.Error)) };
    @:keep
    static public function _kill( _p:Process):Error return ((null : stdgo.Error));
    /**
        // Signal sends a signal to the Process.
        // Sending Interrupt on Windows is not implemented.
    **/
    @:keep
    static public function signal( _p:Process, _sig:Signal):Error return ((null : stdgo.Error));
    /**
        // Wait waits for the Process to exit, and then returns a
        // ProcessState describing its status and an error, if any.
        // Wait releases any resources associated with the Process.
        // On most operating systems, the Process must be a child
        // of the current process or an error will be returned.
    **/
    @:keep
    static public function wait_( _p:Process):{ var _0 : ProcessState; var _1 : Error; } return { _0 : ((null : ProcessState)), _1 : ((null : stdgo.Error)) };
    /**
        // Kill causes the Process to exit immediately. Kill does not wait until
        // the Process has actually exited. This only kills the Process itself,
        // not any other processes it may have started.
    **/
    @:keep
    static public function kill( _p:Process):Error return ((null : stdgo.Error));
    /**
        // Release releases any resources associated with the Process p,
        // rendering it unusable in the future.
        // Release only needs to be called if Wait is not.
    **/
    @:keep
    static public function release( _p:Process):Error return ((null : stdgo.Error));
    @:keep
    static public function _done( _p:Process):Bool return false;
    @:keep
    static public function _setDone( _p:Process):Void return;
}
class Process_wrapper {
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
    public var _blockUntilWaitable : () -> { var _0 : Bool; var _1 : Error; } = null;
    @:keep
    public var _release : () -> Error = null;
    @:keep
    public var _signal : Signal -> Error = null;
    @:keep
    public var _wait : () -> { var _0 : ProcessState; var _1 : Error; } = null;
    @:keep
    public var _kill : () -> Error = null;
    /**
        // Signal sends a signal to the Process.
        // Sending Interrupt on Windows is not implemented.
    **/
    @:keep
    public var signal : Signal -> Error = null;
    /**
        // Wait waits for the Process to exit, and then returns a
        // ProcessState describing its status and an error, if any.
        // Wait releases any resources associated with the Process.
        // On most operating systems, the Process must be a child
        // of the current process or an error will be returned.
    **/
    @:keep
    public var wait_ : () -> { var _0 : ProcessState; var _1 : Error; } = null;
    /**
        // Kill causes the Process to exit immediately. Kill does not wait until
        // the Process has actually exited. This only kills the Process itself,
        // not any other processes it may have started.
    **/
    @:keep
    public var kill : () -> Error = null;
    /**
        // Release releases any resources associated with the Process p,
        // rendering it unusable in the future.
        // Release only needs to be called if Wait is not.
    **/
    @:keep
    public var release : () -> Error = null;
    @:keep
    public var _done : () -> Bool = null;
    @:keep
    public var _setDone : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Process;
}
@:keep class ProcessState_static_extension {
    @:keep
    static public function _systemTime( _p:ProcessState):stdgo.time.Time.Duration return new stdgo.time.Time.Duration();
    @:keep
    static public function _userTime( _p:ProcessState):stdgo.time.Time.Duration return new stdgo.time.Time.Duration();
    /**
        // ExitCode returns the exit code of the exited process, or -1
        // if the process hasn't exited or was terminated by a signal.
    **/
    @:keep
    static public function exitCode( _p:ProcessState):GoInt return ((0 : GoInt));
    @:keep
    static public function string( _p:ProcessState):GoString return (("" : GoString));
    @:keep
    static public function _sysUsage( _p:ProcessState):AnyInterface return ((null : AnyInterface));
    @:keep
    static public function _sys( _p:ProcessState):AnyInterface return ((null : AnyInterface));
    @:keep
    static public function _success( _p:ProcessState):Bool return false;
    @:keep
    static public function _exited( _p:ProcessState):Bool return false;
    /**
        // Pid returns the process id of the exited process.
    **/
    @:keep
    static public function pid( _p:ProcessState):GoInt return ((0 : GoInt));
    /**
        // SysUsage returns system-dependent resource usage information about
        // the exited process. Convert it to the appropriate underlying
        // type, such as *syscall.Rusage on Unix, to access its contents.
        // (On Unix, *syscall.Rusage matches struct rusage as defined in the
        // getrusage(2) manual page.)
    **/
    @:keep
    static public function sysUsage( _p:ProcessState):AnyInterface return ((null : AnyInterface));
    /**
        // Sys returns system-dependent exit information about
        // the process. Convert it to the appropriate underlying
        // type, such as syscall.WaitStatus on Unix, to access its contents.
    **/
    @:keep
    static public function sys( _p:ProcessState):AnyInterface return ((null : AnyInterface));
    /**
        // Success reports whether the program exited successfully,
        // such as with exit status 0 on Unix.
    **/
    @:keep
    static public function success( _p:ProcessState):Bool return false;
    /**
        // Exited reports whether the program has exited.
        // On Unix systems this reports true if the program exited due to calling exit,
        // but false if the program terminated due to a signal.
    **/
    @:keep
    static public function exited( _p:ProcessState):Bool return false;
    /**
        // SystemTime returns the system CPU time of the exited process and its children.
    **/
    @:keep
    static public function systemTime( _p:ProcessState):stdgo.time.Time.Duration return new stdgo.time.Time.Duration();
    /**
        // UserTime returns the user CPU time of the exited process and its children.
    **/
    @:keep
    static public function userTime( _p:ProcessState):stdgo.time.Time.Duration return new stdgo.time.Time.Duration();
}
class ProcessState_wrapper {
    @:keep
    public var _systemTime : () -> stdgo.time.Time.Duration = null;
    @:keep
    public var _userTime : () -> stdgo.time.Time.Duration = null;
    /**
        // ExitCode returns the exit code of the exited process, or -1
        // if the process hasn't exited or was terminated by a signal.
    **/
    @:keep
    public var exitCode : () -> GoInt = null;
    @:keep
    public var string : () -> GoString = null;
    @:keep
    public var _sysUsage : () -> AnyInterface = null;
    @:keep
    public var _sys : () -> AnyInterface = null;
    @:keep
    public var _success : () -> Bool = null;
    @:keep
    public var _exited : () -> Bool = null;
    /**
        // Pid returns the process id of the exited process.
    **/
    @:keep
    public var pid : () -> GoInt = null;
    /**
        // SysUsage returns system-dependent resource usage information about
        // the exited process. Convert it to the appropriate underlying
        // type, such as *syscall.Rusage on Unix, to access its contents.
        // (On Unix, *syscall.Rusage matches struct rusage as defined in the
        // getrusage(2) manual page.)
    **/
    @:keep
    public var sysUsage : () -> AnyInterface = null;
    /**
        // Sys returns system-dependent exit information about
        // the process. Convert it to the appropriate underlying
        // type, such as syscall.WaitStatus on Unix, to access its contents.
    **/
    @:keep
    public var sys : () -> AnyInterface = null;
    /**
        // Success reports whether the program exited successfully,
        // such as with exit status 0 on Unix.
    **/
    @:keep
    public var success : () -> Bool = null;
    /**
        // Exited reports whether the program has exited.
        // On Unix systems this reports true if the program exited due to calling exit,
        // but false if the program terminated due to a signal.
    **/
    @:keep
    public var exited : () -> Bool = null;
    /**
        // SystemTime returns the system CPU time of the exited process and its children.
    **/
    @:keep
    public var systemTime : () -> stdgo.time.Time.Duration = null;
    /**
        // UserTime returns the user CPU time of the exited process and its children.
    **/
    @:keep
    public var userTime : () -> stdgo.time.Time.Duration = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : ProcessState;
}
@:keep class LinkError_static_extension {
    @:keep
    static public function unwrap( _e:LinkError):Error return ((null : stdgo.Error));
    @:keep
    static public function error( _e:LinkError):GoString return (("" : GoString));
}
class LinkError_wrapper {
    @:keep
    public var unwrap : () -> Error = null;
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : LinkError;
}
@:keep class T_onlyWriter_static_extension {
    @:embedded
    public static function write( __self__:T_onlyWriter, _p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
}
class T_onlyWriter_wrapper {
    @:embedded
    public var write : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_onlyWriter;
}
@:keep class T_file_static_extension {
    @:keep
    static public function _close( _file:T_file):Error return ((null : stdgo.Error));
}
class T_file_wrapper {
    @:keep
    public var _close : () -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_file;
}
@:keep class T_unixDirent_static_extension {
    @:keep
    static public function info( _d:T_unixDirent):{ var _0 : FileInfo; var _1 : Error; } return { _0 : ((null : stdgo.io.fs.Fs.FileInfo)), _1 : ((null : stdgo.Error)) };
    @:keep
    static public function type( _d:T_unixDirent):FileMode return new stdgo.io.fs.Fs.FileMode();
    @:keep
    static public function isDir( _d:T_unixDirent):Bool return false;
    @:keep
    static public function name( _d:T_unixDirent):GoString return (("" : GoString));
}
class T_unixDirent_wrapper {
    @:keep
    public var info : () -> { var _0 : FileInfo; var _1 : Error; } = null;
    @:keep
    public var type : () -> FileMode = null;
    @:keep
    public var isDir : () -> Bool = null;
    @:keep
    public var name : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_unixDirent;
}
@:keep class T_rawConn_static_extension {
    @:keep
    static public function write( _c:T_rawConn, _f:GoUIntptr -> Bool):Error return ((null : stdgo.Error));
    @:keep
    static public function read( _c:T_rawConn, _f:GoUIntptr -> Bool):Error return ((null : stdgo.Error));
    @:keep
    static public function control( _c:T_rawConn, _f:GoUIntptr -> Void):Error return ((null : stdgo.Error));
}
class T_rawConn_wrapper {
    @:keep
    public var write : (GoUIntptr -> Bool) -> Error = null;
    @:keep
    public var read : (GoUIntptr -> Bool) -> Error = null;
    @:keep
    public var control : (GoUIntptr -> Void) -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_rawConn;
}
@:keep class File_static_extension {
    /**
        // Stat returns the FileInfo structure describing file.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    static public function stat( _f:File):{ var _0 : FileInfo; var _1 : Error; } return { _0 : ((null : stdgo.io.fs.Fs.FileInfo)), _1 : ((null : stdgo.Error)) };
    @:keep
    static public function _readFrom( _f:File, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : Error; } return { _0 : ((0 : GoInt64)), _1 : false, _2 : ((null : stdgo.Error)) };
    /**
        // seek sets the offset for the next Read or Write on file to offset, interpreted
        // according to whence: 0 means relative to the origin of the file, 1 means
        // relative to the current offset, and 2 means relative to the end.
        // It returns the new offset and an error, if any.
    **/
    @:keep
    static public function _seek( _f:File, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
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
    static public function fd( _f:File):GoUIntptr return ((0 : GoUIntptr));
    /**
        // checkValid checks whether f is valid for use.
        // If not, it returns an appropriate error, perhaps incorporating the operation name op.
    **/
    @:keep
    static public function _checkValid( _f:File, _op:GoString):Error return ((null : stdgo.Error));
    /**
        // setWriteDeadline sets the write deadline.
    **/
    @:keep
    static public function _setWriteDeadline( _f:File, _t:stdgo.time.Time.Time):Error return ((null : stdgo.Error));
    /**
        // setReadDeadline sets the read deadline.
    **/
    @:keep
    static public function _setReadDeadline( _f:File, _t:stdgo.time.Time.Time):Error return ((null : stdgo.Error));
    /**
        // setDeadline sets the read and write deadline.
    **/
    @:keep
    static public function _setDeadline( _f:File, _t:stdgo.time.Time.Time):Error return ((null : stdgo.Error));
    /**
        // Chdir changes the current working directory to the file,
        // which must be a directory.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    static public function chdir( _f:File):Error return ((null : stdgo.Error));
    /**
        // Sync commits the current contents of the file to stable storage.
        // Typically, this means flushing the file system's in-memory copy
        // of recently written data to disk.
    **/
    @:keep
    static public function sync( _f:File):Error return ((null : stdgo.Error));
    /**
        // Truncate changes the size of the file.
        // It does not change the I/O offset.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    static public function truncate( _f:File, _size:GoInt64):Error return ((null : stdgo.Error));
    /**
        // Chown changes the numeric uid and gid of the named file.
        // If there is an error, it will be of type *PathError.
        //
        // On Windows, it always returns the syscall.EWINDOWS error, wrapped
        // in *PathError.
    **/
    @:keep
    static public function chown( _f:File, _uid:GoInt, _gid:GoInt):Error return ((null : stdgo.Error));
    /**
        // See docs in file.go:(*File).Chmod.
    **/
    @:keep
    static public function _chmod( _f:File, _mode:FileMode):Error return ((null : stdgo.Error));
    /**
        // pwrite writes len(b) bytes to the File starting at byte offset off.
        // It returns the number of bytes written and an error, if any.
    **/
    @:keep
    static public function _pwrite( _f:File, _b:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
    /**
        // write writes len(b) bytes to the File.
        // It returns the number of bytes written and an error, if any.
    **/
    @:keep
    static public function _write( _f:File, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
    /**
        // pread reads len(b) bytes from the File starting at byte offset off.
        // It returns the number of bytes read and the error, if any.
        // EOF is signaled by a zero count with err set to nil.
    **/
    @:keep
    static public function _pread( _f:File, _b:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
    /**
        // read reads up to len(b) bytes from the File.
        // It returns the number of bytes read and an error, if any.
    **/
    @:keep
    static public function _read( _f:File, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
    /**
        // Close closes the File, rendering it unusable for I/O.
        // On files that support SetDeadline, any pending I/O operations will
        // be canceled and return immediately with an ErrClosed error.
        // Close will return an error if it has already been called.
    **/
    @:keep
    static public function close( _f:File):Error return ((null : stdgo.Error));
    /**
        // SyscallConn returns a raw file.
        // This implements the syscall.Conn interface.
    **/
    @:keep
    static public function syscallConn( _f:File):{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : Error; } return { _0 : ((null : stdgo.syscall.Syscall.RawConn)), _1 : ((null : stdgo.Error)) };
    /**
        // SetWriteDeadline sets the deadline for any future Write calls and any
        // currently-blocked Write call.
        // Even if Write times out, it may return n > 0, indicating that
        // some of the data was successfully written.
        // A zero value for t means Write will not time out.
        // Not all files support setting deadlines; see SetDeadline.
    **/
    @:keep
    static public function setWriteDeadline( _f:File, _t:stdgo.time.Time.Time):Error return ((null : stdgo.Error));
    /**
        // SetReadDeadline sets the deadline for future Read calls and any
        // currently-blocked Read call.
        // A zero value for t means Read will not time out.
        // Not all files support setting deadlines; see SetDeadline.
    **/
    @:keep
    static public function setReadDeadline( _f:File, _t:stdgo.time.Time.Time):Error return ((null : stdgo.Error));
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
    static public function setDeadline( _f:File, _t:stdgo.time.Time.Time):Error return ((null : stdgo.Error));
    /**
        // Chmod changes the mode of the file to mode.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    static public function chmod( _f:File, _mode:FileMode):Error return ((null : stdgo.Error));
    /**
        // wrapErr wraps an error that occurred during an operation on an open file.
        // It passes io.EOF through unchanged, otherwise converts
        // poll.ErrFileClosing to ErrClosed and wraps the error in a PathError.
    **/
    @:keep
    static public function _wrapErr( _f:File, _op:GoString, _err:Error):Error return ((null : stdgo.Error));
    /**
        // WriteString is like Write, but writes the contents of string s rather than
        // a slice of bytes.
    **/
    @:keep
    static public function writeString( _f:File, _s:GoString):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
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
    static public function seek( _f:File, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
    /**
        // WriteAt writes len(b) bytes to the File starting at byte offset off.
        // It returns the number of bytes written and an error, if any.
        // WriteAt returns a non-nil error when n != len(b).
        //
        // If file was opened with the O_APPEND flag, WriteAt returns an error.
    **/
    @:keep
    static public function writeAt( _f:File, _b:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
    /**
        // Write writes len(b) bytes from b to the File.
        // It returns the number of bytes written and an error, if any.
        // Write returns a non-nil error when n != len(b).
    **/
    @:keep
    static public function write( _f:File, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
    /**
        // ReadFrom implements io.ReaderFrom.
    **/
    @:keep
    static public function readFrom( _f:File, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
    /**
        // ReadAt reads len(b) bytes from the File starting at byte offset off.
        // It returns the number of bytes read and the error, if any.
        // ReadAt always returns a non-nil error when n < len(b).
        // At end of file, that error is io.EOF.
    **/
    @:keep
    static public function readAt( _f:File, _b:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
    /**
        // Read reads up to len(b) bytes from the File and stores them in b.
        // It returns the number of bytes read and any error encountered.
        // At end of file, Read returns 0, io.EOF.
    **/
    @:keep
    static public function read( _f:File, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
    /**
        // Name returns the name of the file as presented to Open.
    **/
    @:keep
    static public function name( _f:File):GoString return (("" : GoString));
    @:keep
    static public function _readdir( _f:File, _n:GoInt, _mode:T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<DirEntry>; var _2 : Slice<FileInfo>; var _3 : Error; } return { _0 : ((null : Slice<GoString>)), _1 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _2 : ((null : Slice<stdgo.io.fs.Fs.FileInfo>)), _3 : ((null : stdgo.Error)) };
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
    static public function readDir( _f:File, _n:GoInt):{ var _0 : Slice<DirEntry>; var _1 : Error; } return { _0 : ((null : Slice<stdgo.io.fs.Fs.DirEntry>)), _1 : ((null : stdgo.Error)) };
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
    static public function readdirnames( _f:File, _n:GoInt):{ var _0 : Slice<GoString>; var _1 : Error; } return { _0 : ((null : Slice<GoString>)), _1 : ((null : stdgo.Error)) };
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
    static public function readdir( _f:File, _n:GoInt):{ var _0 : Slice<FileInfo>; var _1 : Error; } return { _0 : ((null : Slice<stdgo.io.fs.Fs.FileInfo>)), _1 : ((null : stdgo.Error)) };
    @:embedded
    public static function _close( __self__:File):stdgo.Error return __self__._close();
}
class File_wrapper {
    /**
        // Stat returns the FileInfo structure describing file.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    public var stat : () -> { var _0 : FileInfo; var _1 : Error; } = null;
    @:keep
    public var _readFrom : stdgo.io.Io.Reader -> { var _0 : GoInt64; var _1 : Bool; var _2 : Error; } = null;
    /**
        // seek sets the offset for the next Read or Write on file to offset, interpreted
        // according to whence: 0 means relative to the origin of the file, 1 means
        // relative to the current offset, and 2 means relative to the end.
        // It returns the new offset and an error, if any.
    **/
    @:keep
    public var _seek : (GoInt64, GoInt) -> { var _0 : GoInt64; var _1 : Error; } = null;
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
    public var fd : () -> GoUIntptr = null;
    /**
        // checkValid checks whether f is valid for use.
        // If not, it returns an appropriate error, perhaps incorporating the operation name op.
    **/
    @:keep
    public var _checkValid : GoString -> Error = null;
    /**
        // setWriteDeadline sets the write deadline.
    **/
    @:keep
    public var _setWriteDeadline : stdgo.time.Time.Time -> Error = null;
    /**
        // setReadDeadline sets the read deadline.
    **/
    @:keep
    public var _setReadDeadline : stdgo.time.Time.Time -> Error = null;
    /**
        // setDeadline sets the read and write deadline.
    **/
    @:keep
    public var _setDeadline : stdgo.time.Time.Time -> Error = null;
    /**
        // Chdir changes the current working directory to the file,
        // which must be a directory.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    public var chdir : () -> Error = null;
    /**
        // Sync commits the current contents of the file to stable storage.
        // Typically, this means flushing the file system's in-memory copy
        // of recently written data to disk.
    **/
    @:keep
    public var sync : () -> Error = null;
    /**
        // Truncate changes the size of the file.
        // It does not change the I/O offset.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    public var truncate : GoInt64 -> Error = null;
    /**
        // Chown changes the numeric uid and gid of the named file.
        // If there is an error, it will be of type *PathError.
        //
        // On Windows, it always returns the syscall.EWINDOWS error, wrapped
        // in *PathError.
    **/
    @:keep
    public var chown : (GoInt, GoInt) -> Error = null;
    /**
        // See docs in file.go:(*File).Chmod.
    **/
    @:keep
    public var _chmod : FileMode -> Error = null;
    /**
        // pwrite writes len(b) bytes to the File starting at byte offset off.
        // It returns the number of bytes written and an error, if any.
    **/
    @:keep
    public var _pwrite : (Slice<GoByte>, GoInt64) -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // write writes len(b) bytes to the File.
        // It returns the number of bytes written and an error, if any.
    **/
    @:keep
    public var _write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // pread reads len(b) bytes from the File starting at byte offset off.
        // It returns the number of bytes read and the error, if any.
        // EOF is signaled by a zero count with err set to nil.
    **/
    @:keep
    public var _pread : (Slice<GoByte>, GoInt64) -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // read reads up to len(b) bytes from the File.
        // It returns the number of bytes read and an error, if any.
    **/
    @:keep
    public var _read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // Close closes the File, rendering it unusable for I/O.
        // On files that support SetDeadline, any pending I/O operations will
        // be canceled and return immediately with an ErrClosed error.
        // Close will return an error if it has already been called.
    **/
    @:keep
    public var close : () -> Error = null;
    /**
        // SyscallConn returns a raw file.
        // This implements the syscall.Conn interface.
    **/
    @:keep
    public var syscallConn : () -> { var _0 : stdgo.syscall.Syscall.RawConn; var _1 : Error; } = null;
    /**
        // SetWriteDeadline sets the deadline for any future Write calls and any
        // currently-blocked Write call.
        // Even if Write times out, it may return n > 0, indicating that
        // some of the data was successfully written.
        // A zero value for t means Write will not time out.
        // Not all files support setting deadlines; see SetDeadline.
    **/
    @:keep
    public var setWriteDeadline : stdgo.time.Time.Time -> Error = null;
    /**
        // SetReadDeadline sets the deadline for future Read calls and any
        // currently-blocked Read call.
        // A zero value for t means Read will not time out.
        // Not all files support setting deadlines; see SetDeadline.
    **/
    @:keep
    public var setReadDeadline : stdgo.time.Time.Time -> Error = null;
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
    public var setDeadline : stdgo.time.Time.Time -> Error = null;
    /**
        // Chmod changes the mode of the file to mode.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    public var chmod : FileMode -> Error = null;
    /**
        // wrapErr wraps an error that occurred during an operation on an open file.
        // It passes io.EOF through unchanged, otherwise converts
        // poll.ErrFileClosing to ErrClosed and wraps the error in a PathError.
    **/
    @:keep
    public var _wrapErr : (GoString, Error) -> Error = null;
    /**
        // WriteString is like Write, but writes the contents of string s rather than
        // a slice of bytes.
    **/
    @:keep
    public var writeString : GoString -> { var _0 : GoInt; var _1 : Error; } = null;
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
    public var seek : (GoInt64, GoInt) -> { var _0 : GoInt64; var _1 : Error; } = null;
    /**
        // WriteAt writes len(b) bytes to the File starting at byte offset off.
        // It returns the number of bytes written and an error, if any.
        // WriteAt returns a non-nil error when n != len(b).
        //
        // If file was opened with the O_APPEND flag, WriteAt returns an error.
    **/
    @:keep
    public var writeAt : (Slice<GoByte>, GoInt64) -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // Write writes len(b) bytes from b to the File.
        // It returns the number of bytes written and an error, if any.
        // Write returns a non-nil error when n != len(b).
    **/
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // ReadFrom implements io.ReaderFrom.
    **/
    @:keep
    public var readFrom : stdgo.io.Io.Reader -> { var _0 : GoInt64; var _1 : Error; } = null;
    /**
        // ReadAt reads len(b) bytes from the File starting at byte offset off.
        // It returns the number of bytes read and the error, if any.
        // ReadAt always returns a non-nil error when n < len(b).
        // At end of file, that error is io.EOF.
    **/
    @:keep
    public var readAt : (Slice<GoByte>, GoInt64) -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // Read reads up to len(b) bytes from the File and stores them in b.
        // It returns the number of bytes read and any error encountered.
        // At end of file, Read returns 0, io.EOF.
    **/
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // Name returns the name of the file as presented to Open.
    **/
    @:keep
    public var name : () -> GoString = null;
    @:keep
    public var _readdir : (GoInt, T_readdirMode) -> { var _0 : Slice<GoString>; var _1 : Slice<DirEntry>; var _2 : Slice<FileInfo>; var _3 : Error; } = null;
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
    public var readDir : GoInt -> { var _0 : Slice<DirEntry>; var _1 : Error; } = null;
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
    public var readdirnames : GoInt -> { var _0 : Slice<GoString>; var _1 : Error; } = null;
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
    public var readdir : GoInt -> { var _0 : Slice<FileInfo>; var _1 : Error; } = null;
    @:embedded
    public var _close : () -> stdgo.Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : File;
}
@:keep class T_fileStat_static_extension {
    @:keep
    static public function sys( _fs:T_fileStat):AnyInterface return ((null : AnyInterface));
    @:keep
    static public function modTime( _fs:T_fileStat):stdgo.time.Time.Time return new stdgo.time.Time.Time();
    @:keep
    static public function mode( _fs:T_fileStat):FileMode return new stdgo.io.fs.Fs.FileMode();
    @:keep
    static public function size( _fs:T_fileStat):GoInt64 return ((0 : GoInt64));
    @:keep
    static public function isDir( _fs:T_fileStat):Bool return false;
    @:keep
    static public function name( _fs:T_fileStat):GoString return (("" : GoString));
}
class T_fileStat_wrapper {
    @:keep
    public var sys : () -> AnyInterface = null;
    @:keep
    public var modTime : () -> stdgo.time.Time.Time = null;
    @:keep
    public var mode : () -> FileMode = null;
    @:keep
    public var size : () -> GoInt64 = null;
    @:keep
    public var isDir : () -> Bool = null;
    @:keep
    public var name : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_fileStat;
}
@:keep class T__struct_0_static_extension {
    @:embedded
    public static function _unlockSlow( __self__:T__struct_0, __0:GoInt32) __self__._unlockSlow(__0);
    @:embedded
    public static function _lockSlow( __self__:T__struct_0) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:T__struct_0) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:T__struct_0):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:T__struct_0) __self__.lock();
}
class T__struct_0_wrapper {
    @:embedded
    public var _unlockSlow : GoInt32 -> Void = null;
    @:embedded
    public var _lockSlow : () -> Void = null;
    @:embedded
    public var unlock : () -> Void = null;
    @:embedded
    public var tryLock : () -> Bool = null;
    @:embedded
    public var lock : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T__struct_0;
}
@:keep class T_dirFS_static_extension {
    @:keep
    static public function stat( _dir:T_dirFS, _name:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } return { _0 : ((null : stdgo.io.fs.Fs.FileInfo)), _1 : ((null : stdgo.Error)) };
    @:keep
    static public function open( _dir:T_dirFS, _name:GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } return { _0 : ((null : stdgo.io.fs.Fs.File)), _1 : ((null : stdgo.Error)) };
}
class T_dirFS_wrapper {
    @:keep
    public var stat : GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } = null;
    @:keep
    public var open : GoString -> { var _0 : stdgo.io.fs.Fs.File; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_dirFS;
}
