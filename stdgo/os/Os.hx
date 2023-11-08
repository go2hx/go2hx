package stdgo.os;
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
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _dirBufPool : stdgo.sync.Sync.Pool = ({} : stdgo.sync.Sync.Pool);
/**
    // ErrInvalid indicates an invalid argument.
    // Methods on File will return this error when the receiver is nil.
    
    // "invalid argument"
**/
var errInvalid : stdgo.Error = (null : stdgo.Error);
/**
    // Portable analogs of some common system call errors.
    //
    // Errors returned from this package may be tested against these errors
    // with errors.Is.
    
    // "permission denied"
**/
var errPermission : stdgo.Error = (null : stdgo.Error);
/**
    // Portable analogs of some common system call errors.
    //
    // Errors returned from this package may be tested against these errors
    // with errors.Is.
    
    // "file already exists"
**/
var errExist : stdgo.Error = (null : stdgo.Error);
/**
    // Portable analogs of some common system call errors.
    //
    // Errors returned from this package may be tested against these errors
    // with errors.Is.
    
    // "file does not exist"
**/
var errNotExist : stdgo.Error = (null : stdgo.Error);
/**
    // Portable analogs of some common system call errors.
    //
    // Errors returned from this package may be tested against these errors
    // with errors.Is.
    
    // "file already closed"
**/
var errClosed : stdgo.Error = (null : stdgo.Error);
/**
    // Portable analogs of some common system call errors.
    //
    // Errors returned from this package may be tested against these errors
    // with errors.Is.
    
    // "file type does not support deadline"
**/
var errNoDeadline : stdgo.Error = (null : stdgo.Error);
/**
    // Portable analogs of some common system call errors.
    //
    // Errors returned from this package may be tested against these errors
    // with errors.Is.
    
    // "i/o timeout"
**/
var errDeadlineExceeded : stdgo.Error = (null : stdgo.Error);
/**
    // ErrProcessDone indicates a Process has finished.
    
    
**/
var errProcessDone : stdgo.Error = (null : stdgo.Error);
/**
    // The only signal values guaranteed to be present in the os package on all
    // systems are os.Interrupt (send the process an interrupt) and os.Kill (force
    // the process to exit). On Windows, sending os.Interrupt to a process with
    // os.Process.Signal is not implemented; it will return an error instead of
    // sending a signal.
    
    
**/
var interrupt : stdgo.os.Os.Signal = (null : stdgo.os.Os.Signal);
/**
    // The only signal values guaranteed to be present in the os package on all
    // systems are os.Interrupt (send the process an interrupt) and os.Kill (force
    // the process to exit). On Windows, sending os.Interrupt to a process with
    // os.Process.Signal is not implemented; it will return an error instead of
    // sending a signal.
    
    
**/
var kill : stdgo.os.Os.Signal = (null : stdgo.os.Os.Signal);
/**
    
    
    
**/
var _errWriteAtInAppendMode : stdgo.Error = (null : stdgo.Error);
/**
    // checkWrapErr is the test hook to enable checking unexpected wrapped errors of poll.ErrFileClosing.
    // It is set to true in the export_test.go for tests (including fuzz tests).
    
    
**/
var _checkWrapErr : Bool = false;
/**
    // Stdin, Stdout, and Stderr are open Files pointing to the standard input,
    // standard output, and standard error file descriptors.
    //
    // Note that the Go runtime writes to standard error for panics and crashes;
    // closing Stderr may cause those messages to go elsewhere, perhaps
    // to a file opened later.
    
    
**/
var stdin : stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = new File(Sys.stdin(), null);
/**
    // Stdin, Stdout, and Stderr are open Files pointing to the standard input,
    // standard output, and standard error file descriptors.
    //
    // Note that the Go runtime writes to standard error for panics and crashes;
    // closing Stderr may cause those messages to go elsewhere, perhaps
    // to a file opened later.
    
    
**/
var stdout : stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = new File(null, Sys.stdout());
/**
    // Stdin, Stdout, and Stderr are open Files pointing to the standard input,
    // standard output, and standard error file descriptors.
    //
    // Note that the Go runtime writes to standard error for panics and crashes;
    // closing Stderr may cause those messages to go elsewhere, perhaps
    // to a file opened later.
    
    
**/
var stderr : stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = new File(null, Sys.stderr());
/**
    
    
    
**/
var _errPatternHasSeparator : stdgo.Error = (null : stdgo.Error);
/**
    // lstat is overridden in tests.
    
    
**/
var _lstat : stdgo.GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } = null;
/**
    
    
    
**/
var atime : stdgo.io.fs.Fs.FileInfo -> stdgo.time.Time.Time = null;
/**
    
    
    
**/
var lstatP : stdgo.StdGoTypes.Ref<stdgo.GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }> = (null : stdgo.StdGoTypes.Ref<stdgo.GoString -> { var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }>);
/**
    
    
    
**/
var errWriteAtInAppendMode : stdgo.Error = (null : stdgo.Error);
/**
    
    
    
**/
var testingForceReadDirLstat : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
/**
    
    
    
**/
var errPatternHasSeparator : stdgo.Error = (null : stdgo.Error);
/**
    
    
    
**/
var splitPath : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = null;
/**
    
    
    
**/
final _readdirName : stdgo.os.Os.T_readdirMode = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.os.Os.T_readdirMode);
/**
    
    
    
**/
final _readdirDirEntry = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.os.Os.T_readdirMode);
/**
    
    
    
**/
final _readdirFileInfo = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.os.Os.T_readdirMode);
/**
    // testingForceReadDirLstat forces ReadDir to call Lstat, for testing that code path.
    // This can be difficult to provoke on some Unix systems otherwise.
    
    
**/
var _testingForceReadDirLstat = false;
/**
    // More than 5760 to work around https://golang.org/issue/24015.
    
    
**/
final _blockSize : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _isBigEndian : Bool = false;
/**
    // Exactly one of O_RDONLY, O_WRONLY, or O_RDWR must be specified.
    
    // open the file read-only.
**/
final o_RDONLY : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    // Flags to OpenFile wrapping those of the underlying system. Not all
    // flags may be implemented on a given system.
    
    // open the file write-only.
**/
final o_WRONLY : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    // Flags to OpenFile wrapping those of the underlying system. Not all
    // flags may be implemented on a given system.
    
    // open the file read-write.
**/
final o_RDWR : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    // The remaining values may be or'ed in to control behavior.
    
    // append data to the file when writing.
**/
final o_APPEND : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    // Flags to OpenFile wrapping those of the underlying system. Not all
    // flags may be implemented on a given system.
    
    // create a new file if none exists.
**/
final o_CREATE : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    // Flags to OpenFile wrapping those of the underlying system. Not all
    // flags may be implemented on a given system.
    
    // used with O_CREATE, file must not exist.
**/
final o_EXCL : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    // Flags to OpenFile wrapping those of the underlying system. Not all
    // flags may be implemented on a given system.
    
    // open for synchronous I/O.
**/
final o_SYNC : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    // Flags to OpenFile wrapping those of the underlying system. Not all
    // flags may be implemented on a given system.
    
    // truncate regular writable file when opened.
**/
final o_TRUNC : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    // Seek whence values.
    //
    // Deprecated: Use io.SeekStart, io.SeekCurrent, and io.SeekEnd.
    
    // seek relative to the origin of the file
**/
final seek_SET : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    // Seek whence values.
    //
    // Deprecated: Use io.SeekStart, io.SeekCurrent, and io.SeekEnd.
    
    // seek relative to the current offset
**/
final seek_CUR : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    // Seek whence values.
    //
    // Deprecated: Use io.SeekStart, io.SeekCurrent, and io.SeekEnd.
    
    // seek relative to the end
**/
final seek_END : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    
    
    
**/
final __UTIME_OMIT : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // kindNewFile means that the descriptor was passed to us via NewFile.
    
    
**/
final _kindNewFile : stdgo.os.Os.T_newFileKind = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.os.Os.T_newFileKind);
/**
    // kindOpenFile means that the descriptor was opened using
    // Open, Create, or OpenFile (without O_NONBLOCK).
    
    
**/
final _kindOpenFile = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.os.Os.T_newFileKind);
/**
    // kindPipe means that the descriptor was opened using Pipe.
    
    
**/
final _kindPipe = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.os.Os.T_newFileKind);
/**
    // kindNonBlock means that the descriptor is already in
    // non-blocking mode.
    
    
**/
final _kindNonBlock = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.os.Os.T_newFileKind);
/**
    // kindNoPoll means that we should not put the descriptor into
    // non-blocking mode, because we know it is not a pipe or FIFO.
    // Used by openFdAt for directories.
    
    
**/
final _kindNoPoll = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.os.Os.T_newFileKind);
/**
    // DevNull is the name of the operating system's “null device.”
    // On Unix-like systems, it is "/dev/null"; on Windows, "NUL".
    
    
**/
final devNull : stdgo.GoString = ("" : stdgo.GoString);
/**
    
    
    
**/
var _getwdCache = ({ mutex : ({} : stdgo.sync.Sync.Mutex), _dir : ("" : stdgo.GoString) } : T__struct_0);
/**
    
    
    // OS-specific path separator
**/
final pathSeparator : stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
/**
    
    
    // OS-specific path list separator
**/
final pathListSeparator : stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
/**
    // Args hold the command-line arguments, starting with the program name.
    
    
**/
var args = (null : stdgo.Slice<stdgo.GoString>);
/**
    // According to sticky(8), neither open(2) nor mkdir(2) will create
    // a file with the sticky bit set.
    
    
**/
final _supportsCreateWithStickyBit : Bool = false;
/**
    
    
    
**/
final _hex : stdgo.GoString = ("" : stdgo.GoString);
/**
    // supportsCloseOnExec reports whether the platform supports the
    // O_CLOEXEC flag.
    
    
**/
final _supportsCloseOnExec : Bool = false;
/**
    // The single letters are the abbreviations
    // used by the String method's formatting.
    
    // d: is a directory
**/
final modeDir : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // a: append-only
**/
final modeAppend : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // l: exclusive use
**/
final modeExclusive : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // T: temporary file; Plan 9 only
**/
final modeTemporary : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // L: symbolic link
**/
final modeSymlink : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // D: device file
**/
final modeDevice : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // p: named pipe (FIFO)
**/
final modeNamedPipe : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // S: Unix domain socket
**/
final modeSocket : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // u: setuid
**/
final modeSetuid : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // g: setgid
**/
final modeSetgid : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // c: Unix character device, when ModeDevice is set
**/
final modeCharDevice : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // t: sticky
**/
final modeSticky : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // ?: non-regular file; nothing else is known about this file
**/
final modeIrregular : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // Mask for the type bits. For regular files, none will be set.
    
    
**/
final modeType : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    // The defined file mode bits are the most significant bits of the FileMode.
    // The nine least-significant bits are the standard Unix rwxrwxrwx permissions.
    // The values of these bits should be considered part of the public API and
    // may be used in wire protocols or disk representations: they must not be
    // changed, although new bits might be added.
    
    // Unix permission bits, 0o777
**/
final modePerm : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
/**
    
    
    
**/
typedef T_timeout = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function timeout():Bool;
};
/**
    // A Signal represents an operating system signal.
    // The usual underlying implementation is operating system-dependent:
    // on Unix it is syscall.Signal.
    
    
**/
typedef Signal = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
    /**
        
        
        // to distinguish from other Stringers
    **/
    public dynamic function signal():Void;
};
/**
    // Auxiliary information if the File describes a directory
    
    
**/
@:structInit @:private @:using(stdgo.os.Os.T_dirInfo_static_extension) class T_dirInfo {
    public var _buf : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>> = (null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>);
    public var _nbuf : stdgo.StdGoTypes.GoInt = 0;
    public var _bufp : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_buf:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>, ?_nbuf:stdgo.StdGoTypes.GoInt, ?_bufp:stdgo.StdGoTypes.GoInt) {
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_bufp != null) this._bufp = _bufp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dirInfo(_buf, _nbuf, _bufp);
    }
}
/**
    // SyscallError records an error from a specific system call.
    
    
**/
@:structInit @:using(stdgo.os.Os.SyscallError_static_extension) class SyscallError {
    public var syscall : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?syscall:stdgo.GoString, ?err:stdgo.Error) {
        if (syscall != null) this.syscall = syscall;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SyscallError(syscall, err);
    }
}
/**
    // Process stores the information about a process created by StartProcess.
    
    
**/
@:structInit @:using(stdgo.os.Os.Process_static_extension) class Process {
    public var pid : stdgo.StdGoTypes.GoInt = 0;
    public var _handle : stdgo.StdGoTypes.GoUIntptr = 0;
    public var _isdone : stdgo.sync.atomic.Atomic.Bool_ = ({} : stdgo.sync.atomic.Atomic.Bool_);
    public var _sigMu : stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
    public function new(?pid:stdgo.StdGoTypes.GoInt, ?_handle:stdgo.StdGoTypes.GoUIntptr, ?_isdone:stdgo.sync.atomic.Atomic.Bool_, ?_sigMu:stdgo.sync.Sync.RWMutex) {
        if (pid != null) this.pid = pid;
        if (_handle != null) this._handle = _handle;
        if (_isdone != null) this._isdone = _isdone;
        if (_sigMu != null) this._sigMu = _sigMu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public var dir : stdgo.GoString = "";
    /**
        // If Env is non-nil, it gives the environment variables for the
        // new process in the form returned by Environ.
        // If it is nil, the result of Environ will be used.
    **/
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
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
    public var files : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.os.Os.File>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.os.Os.File>>);
    /**
        // Operating system-specific process creation attributes.
        // Note that setting this field means that your program
        // may not execute properly or even compile on some
        // operating systems.
    **/
    public var sys : stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SysProcAttr> = (null : stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SysProcAttr>);
    public function new(?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.os.Os.File>>, ?sys:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SysProcAttr>) {
        if (dir != null) this.dir = dir;
        if (env != null) this.env = env;
        if (files != null) this.files = files;
        if (sys != null) this.sys = sys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ProcAttr(dir, env, files, sys);
    }
}
/**
    // ProcessState stores information about a process, as reported by Wait.
    
    
**/
@:structInit @:using(stdgo.os.Os.ProcessState_static_extension) class ProcessState {
    public var _pid : stdgo.StdGoTypes.GoInt = 0;
    public var _status : stdgo.syscall.Syscall.WaitStatus = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.syscall.Syscall.WaitStatus);
    public var _rusage : stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.Rusage> = (null : stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.Rusage>);
    public function new(?_pid:stdgo.StdGoTypes.GoInt, ?_status:stdgo.syscall.Syscall.WaitStatus, ?_rusage:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.Rusage>) {
        if (_pid != null) this._pid = _pid;
        if (_status != null) this._status = _status;
        if (_rusage != null) this._rusage = _rusage;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ProcessState(_pid, _status, _rusage);
    }
}
/**
    // LinkError records an error during a link or symlink or rename
    // system call and the paths that caused it.
    
    
**/
@:structInit @:using(stdgo.os.Os.LinkError_static_extension) class LinkError {
    public var op : stdgo.GoString = "";
    public var old : stdgo.GoString = "";
    public var new_ : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?op:stdgo.GoString, ?old:stdgo.GoString, ?new_:stdgo.GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (old != null) this.old = old;
        if (new_ != null) this.new_ = new_;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LinkError(op, old, new_, err);
    }
}
/**
    // fileWithoutReadFrom implements all the methods of *File other
    // than ReadFrom. This is used to permit ReadFrom to call io.Copy
    // without leading to a recursive call to ReadFrom.
    
    
**/
@:structInit @:private @:using(stdgo.os.Os.T_fileWithoutReadFrom_static_extension) class T_fileWithoutReadFrom {
    @:embedded
    public var file : stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = (null : stdgo.StdGoTypes.Ref<stdgo.os.Os.File>);
    public function new(?file:stdgo.StdGoTypes.Ref<stdgo.os.Os.File>) {
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function chdir():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function chmod(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function chown(_uid:stdgo.StdGoTypes.GoInt, _gid:stdgo.StdGoTypes.GoInt):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function close():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function fd():stdgo.StdGoTypes.GoUIntptr return (0 : stdgo.StdGoTypes.GoUIntptr);
    @:embedded
    public function name():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function read(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readAt(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readDir(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readdir(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readdirnames(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function seek(_offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function setDeadline(__0:stdgo.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function setReadDeadline(__0:stdgo.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function setWriteDeadline(__0:stdgo.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function sync():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function syscallConn():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function truncate(__0:stdgo.StdGoTypes.GoInt64):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function writeAt(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function writeString(__0:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _checkValid(__0:stdgo.GoString):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _chmod(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _close():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _pread(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _pwrite(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _read(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _readFrom(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _readdir(_n:stdgo.StdGoTypes.GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : stdgo.Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _seek(_offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _setDeadline(__0:stdgo.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _setReadDeadline(__0:stdgo.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _setWriteDeadline(__0:stdgo.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _wrapErr(_op:stdgo.GoString, _err:stdgo.Error):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _write(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    public function __copy__() {
        return new T_fileWithoutReadFrom(file);
    }
}
/**
    // file is the real representation of *File.
    // The extra level of indirection ensures that no clients of os
    // can overwrite this data, which could cause the finalizer
    // to close the wrong file descriptor.
    
    
**/
@:structInit @:private @:using(stdgo.os.Os.T_file_static_extension) class T_file {
    public var _pfd : stdgo.internal.poll.Poll.FD = ({} : stdgo.internal.poll.Poll.FD);
    public var _name : stdgo.GoString = "";
    public var _dirinfo : stdgo.StdGoTypes.Ref<stdgo.os.Os.T_dirInfo> = (null : stdgo.StdGoTypes.Ref<stdgo.os.Os.T_dirInfo>);
    public var _nonblock : Bool = false;
    public var _stdoutOrErr : Bool = false;
    public var _appendMode : Bool = false;
    public function new(?_pfd:stdgo.internal.poll.Poll.FD, ?_name:stdgo.GoString, ?_dirinfo:stdgo.StdGoTypes.Ref<stdgo.os.Os.T_dirInfo>, ?_nonblock:Bool, ?_stdoutOrErr:Bool, ?_appendMode:Bool) {
        if (_pfd != null) this._pfd = _pfd;
        if (_name != null) this._name = _name;
        if (_dirinfo != null) this._dirinfo = _dirinfo;
        if (_nonblock != null) this._nonblock = _nonblock;
        if (_stdoutOrErr != null) this._stdoutOrErr = _stdoutOrErr;
        if (_appendMode != null) this._appendMode = _appendMode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_file(_pfd, _name, _dirinfo, _nonblock, _stdoutOrErr, _appendMode);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.os.Os.T_unixDirent_static_extension) class T_unixDirent {
    public var _parent : stdgo.GoString = "";
    public var _name : stdgo.GoString = "";
    public var _typ : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
    public var _info : stdgo.io.fs.Fs.FileInfo = (null : stdgo.io.fs.Fs.FileInfo);
    public function new(?_parent:stdgo.GoString, ?_name:stdgo.GoString, ?_typ:stdgo.io.fs.Fs.FileMode, ?_info:stdgo.io.fs.Fs.FileInfo) {
        if (_parent != null) this._parent = _parent;
        if (_name != null) this._name = _name;
        if (_typ != null) this._typ = _typ;
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unixDirent(_parent, _name, _typ, _info);
    }
}
/**
    // rawConn implements syscall.RawConn.
    
    
**/
@:structInit @:private @:using(stdgo.os.Os.T_rawConn_static_extension) class T_rawConn {
    public var _file : stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = (null : stdgo.StdGoTypes.Ref<stdgo.os.Os.File>);
    public function new(?_file:stdgo.StdGoTypes.Ref<stdgo.os.Os.File>) {
        if (_file != null) this._file = _file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rawConn(_file);
    }
}
/**
    // File represents an open file descriptor.
    
    
**/
@:structInit @:using(stdgo.os.Os.File_static_extension) class File {
    @:embedded
    public var _file : stdgo.StdGoTypes.Ref<stdgo.os.Os.T_file> = (null : stdgo.StdGoTypes.Ref<stdgo.os.Os.T_file>);
    @:local
    var _input : haxe.io.Input = null;
    @:local
    var _output : haxe.io.Output = null;
    public function new(?_file:stdgo.StdGoTypes.Ref<stdgo.os.Os.T_file>, ?_input:haxe.io.Input, ?_output:haxe.io.Output) {
        if (_file != null) this._file = _file;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _close():stdgo.Error return (null : stdgo.Error);
    public function __copy__() {
        return new File(_file, _input, _output);
    }
}
/**
    // A fileStat is the implementation of FileInfo returned by Stat and Lstat.
    
    
**/
@:structInit @:private @:using(stdgo.os.Os.T_fileStat_static_extension) class T_fileStat {
    public var _name : stdgo.GoString = "";
    public var _size : stdgo.StdGoTypes.GoInt64 = 0;
    public var _mode : stdgo.io.fs.Fs.FileMode = ((0 : stdgo.StdGoTypes.GoUInt32) : stdgo.io.fs.Fs.FileMode);
    public var _modTime : stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
    public var _sys : stdgo.syscall.Syscall.Stat_t = ({} : stdgo.syscall.Syscall.Stat_t);
    public function new(?_name:stdgo.GoString, ?_size:stdgo.StdGoTypes.GoInt64, ?_mode:stdgo.io.fs.Fs.FileMode, ?_modTime:stdgo.time.Time.Time, ?_sys:stdgo.syscall.Syscall.Stat_t) {
        if (_name != null) this._name = _name;
        if (_size != null) this._size = _size;
        if (_mode != null) this._mode = _mode;
        if (_modTime != null) this._modTime = _modTime;
        if (_sys != null) this._sys = _sys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileStat(_name, _size, _mode, _modTime, _sys);
    }
}
class T__struct_0_asInterface {
    @:embedded
    public dynamic function _unlockSlow(__0:stdgo.StdGoTypes.GoInt32):Void __self__.value._unlockSlow(__0);
    @:embedded
    public dynamic function _lockSlow():Void __self__.value._lockSlow();
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.T__struct_0_asInterface) class T__struct_0_static_extension {
    @:embedded
    public static function _unlockSlow( __self__:T__struct_0, __0:stdgo.StdGoTypes.GoInt32) @:typeType null;
    @:embedded
    public static function _lockSlow( __self__:T__struct_0) @:typeType null;
    @:embedded
    public static function unlock( __self__:T__struct_0) @:typeType null;
    @:embedded
    public static function tryLock( __self__:T__struct_0):Bool return return false;
    @:embedded
    public static function lock( __self__:T__struct_0) @:typeType null;
}
@:local @:using(stdgo.os.Os.T__struct_0_static_extension) typedef T__struct_0 = {
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex;
    public var _dir : stdgo.GoString;
};
@:named typedef T_readdirMode = stdgo.StdGoTypes.GoInt;
/**
    // A DirEntry is an entry read from a directory
    // (using the ReadDir function or a File's ReadDir method).
**/
@:follow typedef DirEntry = stdgo.io.fs.Fs.DirEntry;
/**
    // PathError records an error and the operation and file path that caused it.
**/
@:follow typedef PathError = stdgo.io.fs.Fs.PathError;
@:follow typedef T_syscallErrorType = stdgo.syscall.Syscall.Errno;
@:named @:using(stdgo.os.Os.T_dirFS_static_extension) typedef T_dirFS = stdgo.GoString;
/**
    // newFileKind describes the kind of file to newFile.
**/
@:named typedef T_newFileKind = stdgo.StdGoTypes.GoInt;
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
function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } throw ":os.readDir is not yet implemented";
/**
    // readInt returns the size-bytes unsigned integer in native byte order at offset off.
**/
function _readInt(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoUIntptr, _size:stdgo.StdGoTypes.GoUIntptr):{ var _0 : stdgo.StdGoTypes.GoUInt64; var _1 : Bool; } throw ":os._readInt is not yet implemented";
function _readIntBE(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _size:stdgo.StdGoTypes.GoUIntptr):stdgo.StdGoTypes.GoUInt64 throw ":os._readIntBE is not yet implemented";
function _readIntLE(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _size:stdgo.StdGoTypes.GoUIntptr):stdgo.StdGoTypes.GoUInt64 throw ":os._readIntLE is not yet implemented";
function _direntIno(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoUInt64; var _1 : Bool; } throw ":os._direntIno is not yet implemented";
function _direntReclen(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoUInt64; var _1 : Bool; } throw ":os._direntReclen is not yet implemented";
function _direntNamlen(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoUInt64; var _1 : Bool; } throw ":os._direntNamlen is not yet implemented";
function _direntType(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):FileMode throw ":os._direntType is not yet implemented";
/**
    // Expand replaces ${var} or $var in the string based on the mapping function.
    // For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
**/
function expand(_s:stdgo.GoString, _mapping:stdgo.GoString -> stdgo.GoString):stdgo.GoString throw ":os.expand is not yet implemented";
/**
    // ExpandEnv replaces ${var} or $var in the string according to the values
    // of the current environment variables. References to undefined
    // variables are replaced by the empty string.
**/
function expandEnv(_s:stdgo.GoString):stdgo.GoString throw ":os.expandEnv is not yet implemented";
/**
    // isShellSpecialVar reports whether the character identifies a special
    // shell variable such as $*.
**/
function _isShellSpecialVar(_c:stdgo.StdGoTypes.GoUInt8):Bool throw ":os._isShellSpecialVar is not yet implemented";
/**
    // isAlphaNum reports whether the byte is an ASCII letter, number, or underscore.
**/
function _isAlphaNum(_c:stdgo.StdGoTypes.GoUInt8):Bool throw ":os._isAlphaNum is not yet implemented";
/**
    // getShellName returns the name that begins the string and the number of bytes
    // consumed to extract it. If the name is enclosed in {}, it's part of a ${}
    // expansion and two more bytes are needed than the length of the name.
**/
function _getShellName(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.StdGoTypes.GoInt; } throw ":os._getShellName is not yet implemented";
/**
    // Getenv retrieves the value of the environment variable named by the key.
    // It returns the value, which will be empty if the variable is not present.
    // To distinguish between an empty value and an unset value, use LookupEnv.
**/
function getenv(_key:stdgo.GoString):stdgo.GoString throw ":os.getenv is not yet implemented";
/**
    // LookupEnv retrieves the value of the environment variable named
    // by the key. If the variable is present in the environment the
    // value (which may be empty) is returned and the boolean is true.
    // Otherwise the returned value will be empty and the boolean will
    // be false.
**/
function lookupEnv(_key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } throw ":os.lookupEnv is not yet implemented";
/**
    // Setenv sets the value of the environment variable named by the key.
    // It returns an error, if any.
**/
function setenv(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.Error throw ":os.setenv is not yet implemented";
/**
    // Unsetenv unsets a single environment variable.
**/
function unsetenv(_key:stdgo.GoString):stdgo.Error throw ":os.unsetenv is not yet implemented";
/**
    // Clearenv deletes all environment variables.
**/
function clearenv():Void throw ":os.clearenv is not yet implemented";
/**
    // Environ returns a copy of strings representing the environment,
    // in the form "key=value".
**/
function environ():stdgo.Slice<stdgo.GoString> {
        final slice = new stdgo.Slice<stdgo.GoString>(0, 0);
        return slice;
    }
function _errNoDeadline():stdgo.Error throw ":os._errNoDeadline is not yet implemented";
/**
    // errDeadlineExceeded returns the value for os.ErrDeadlineExceeded.
    // This error comes from the internal/poll package, which is also
    // used by package net. Doing it this way ensures that the net
    // package will return os.ErrDeadlineExceeded for an exceeded deadline,
    // as documented by net.Conn.SetDeadline, without requiring any extra
    // work in the net package and without requiring the internal/poll
    // package to import os (which it can't, because that would be circular).
**/
function _errDeadlineExceeded():stdgo.Error throw ":os._errDeadlineExceeded is not yet implemented";
/**
    // NewSyscallError returns, as an error, a new SyscallError
    // with the given system call name and error details.
    // As a convenience, if err is nil, NewSyscallError returns nil.
**/
function newSyscallError(_syscall:stdgo.GoString, _err:stdgo.Error):stdgo.Error throw ":os.newSyscallError is not yet implemented";
/**
    // IsExist returns a boolean indicating whether the error is known to report
    // that a file or directory already exists. It is satisfied by ErrExist as
    // well as some syscall errors.
    //
    // This function predates errors.Is. It only supports errors returned by
    // the os package. New code should use errors.Is(err, fs.ErrExist).
**/
function isExist(_err:stdgo.Error):Bool throw ":os.isExist is not yet implemented";
/**
    // IsNotExist returns a boolean indicating whether the error is known to
    // report that a file or directory does not exist. It is satisfied by
    // ErrNotExist as well as some syscall errors.
    //
    // This function predates errors.Is. It only supports errors returned by
    // the os package. New code should use errors.Is(err, fs.ErrNotExist).
**/
function isNotExist(_err:stdgo.Error):Bool throw ":os.isNotExist is not yet implemented";
/**
    // IsPermission returns a boolean indicating whether the error is known to
    // report that permission is denied. It is satisfied by ErrPermission as well
    // as some syscall errors.
    //
    // This function predates errors.Is. It only supports errors returned by
    // the os package. New code should use errors.Is(err, fs.ErrPermission).
**/
function isPermission(_err:stdgo.Error):Bool throw ":os.isPermission is not yet implemented";
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
function isTimeout(_err:stdgo.Error):Bool throw ":os.isTimeout is not yet implemented";
function _underlyingErrorIs(_err:stdgo.Error, _target:stdgo.Error):Bool throw ":os._underlyingErrorIs is not yet implemented";
/**
    // underlyingError returns the underlying error for known os error types.
**/
function _underlyingError(_err:stdgo.Error):stdgo.Error throw ":os._underlyingError is not yet implemented";
/**
    // wrapSyscallError takes an error and a syscall name. If the error is
    // a syscall.Errno, it wraps it in an os.SyscallError using the syscall name.
**/
function _wrapSyscallError(_name:stdgo.GoString, _err:stdgo.Error):stdgo.Error throw ":os._wrapSyscallError is not yet implemented";
function _newProcess(_pid:stdgo.StdGoTypes.GoInt, _handle:stdgo.StdGoTypes.GoUIntptr):stdgo.StdGoTypes.Ref<Process> throw ":os._newProcess is not yet implemented";
/**
    // Getpid returns the process id of the caller.
**/
function getpid():stdgo.StdGoTypes.GoInt throw ":os.getpid is not yet implemented";
/**
    // Getppid returns the process id of the caller's parent.
**/
function getppid():stdgo.StdGoTypes.GoInt throw ":os.getppid is not yet implemented";
/**
    // FindProcess looks for a running process by its pid.
    //
    // The Process it returns can be used to obtain information
    // about the underlying operating system process.
    //
    // On Unix systems, FindProcess always succeeds and returns a Process
    // for the given pid, regardless of whether the process exists. To test whether
    // the process actually exists, see whether p.Signal(syscall.Signal(0)) reports
    // an error.
**/
function findProcess(_pid:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.Ref<Process>; var _1 : stdgo.Error; } throw ":os.findProcess is not yet implemented";
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
function startProcess(_name:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.StdGoTypes.Ref<ProcAttr>):{ var _0 : stdgo.StdGoTypes.Ref<Process>; var _1 : stdgo.Error; } throw ":os.startProcess is not yet implemented";
function _startProcess(_name:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.StdGoTypes.Ref<ProcAttr>):{ var _0 : stdgo.StdGoTypes.Ref<Process>; var _1 : stdgo.Error; } throw ":os._startProcess is not yet implemented";
function _findProcess(_pid:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.Ref<Process>; var _1 : stdgo.Error; } throw ":os._findProcess is not yet implemented";
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
function executable():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.executable is not yet implemented";
function _executable():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os._executable is not yet implemented";
function _genericReadFrom(_f:stdgo.StdGoTypes.Ref<File>, _r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } throw ":os._genericReadFrom is not yet implemented";
/**
    // Mkdir creates a new directory with the specified name and permission
    // bits (before umask).
    // If there is an error, it will be of type *PathError.
**/
function mkdir(_name:stdgo.GoString, _perm:FileMode):stdgo.Error throw ":os.mkdir is not yet implemented";
/**
    // setStickyBit adds ModeSticky to the permission bits of path, non atomic.
**/
function _setStickyBit(_name:stdgo.GoString):stdgo.Error throw ":os._setStickyBit is not yet implemented";
/**
    // Chdir changes the current working directory to the named directory.
    // If there is an error, it will be of type *PathError.
**/
function chdir(_dir:stdgo.GoString):stdgo.Error throw ":os.chdir is not yet implemented";
/**
    // Open opens the named file for reading. If successful, methods on
    // the returned file can be used for reading; the associated file
    // descriptor has mode O_RDONLY.
    // If there is an error, it will be of type *PathError.
**/
function open(_name:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.Ref<File>; var _1 : stdgo.Error; } {
        if (!sys.FileSystem.exists(_name)) return { _0 : null, _1 : stdgo.errors.Errors.new_("open " + _name + ": no such file or directory") };
        throw "os.open is not yet implemented";
        return { _0 : null, _1 : null };
    }
/**
    // Create creates or truncates the named file. If the file already exists,
    // it is truncated. If the file does not exist, it is created with mode 0666
    // (before umask). If successful, methods on the returned File can
    // be used for I/O; the associated file descriptor has mode O_RDWR.
    // If there is an error, it will be of type *PathError.
**/
function create(_name:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.Ref<File>; var _1 : stdgo.Error; } throw ":os.create is not yet implemented";
/**
    // OpenFile is the generalized open call; most users will use Open
    // or Create instead. It opens the named file with specified flag
    // (O_RDONLY etc.). If the file does not exist, and the O_CREATE flag
    // is passed, it is created with mode perm (before umask). If successful,
    // methods on the returned File can be used for I/O.
    // If there is an error, it will be of type *PathError.
**/
function openFile(_name:stdgo.GoString, _flag:stdgo.StdGoTypes.GoInt, _perm:FileMode):{ var _0 : stdgo.StdGoTypes.Ref<File>; var _1 : stdgo.Error; } {
        if (!sys.FileSystem.exists(_name)) {
            sys.io.File.saveBytes(_name, haxe.io.Bytes.alloc(0));
        };
        try {
            return { _0 : { _file : { _name : _name }, _input : sys.io.File.read(_name), _output : sys.io.File.write(_name) }, _1 : null };
        } catch(e) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(e.details()) };
        };
    }
/**
    // Rename renames (moves) oldpath to newpath.
    // If newpath already exists and is not a directory, Rename replaces it.
    // OS-specific restrictions may apply when oldpath and newpath are in different directories.
    // Even within the same directory, on non-Unix platforms Rename is not an atomic operation.
    // If there is an error, it will be of type *LinkError.
**/
function rename(_oldpath:stdgo.GoString, _newpath:stdgo.GoString):stdgo.Error throw ":os.rename is not yet implemented";
/**
    // Many functions in package syscall return a count of -1 instead of 0.
    // Using fixCount(call()) instead of call() corrects the count.
**/
function _fixCount(_n:stdgo.StdGoTypes.GoInt, _err:stdgo.Error):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw ":os._fixCount is not yet implemented";
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
function tempDir():stdgo.GoString throw ":os.tempDir is not yet implemented";
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
function userCacheDir():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.userCacheDir is not yet implemented";
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
function userConfigDir():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.userConfigDir is not yet implemented";
/**
    // UserHomeDir returns the current user's home directory.
    //
    // On Unix, including macOS, it returns the $HOME environment variable.
    // On Windows, it returns %USERPROFILE%.
    // On Plan 9, it returns the $home environment variable.
    //
    // If the expected variable is not set in the environment, UserHomeDir
    // returns either a platform-specific default value or a non-nil error.
**/
function userHomeDir():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.userHomeDir is not yet implemented";
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
function chmod(_name:stdgo.GoString, _mode:FileMode):stdgo.Error throw ":os.chmod is not yet implemented";
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
    // The directory dir must not be "".
    //
    // The result implements [io/fs.StatFS], [io/fs.ReadFileFS] and
    // [io/fs.ReadDirFS].
**/
function dirFS(_dir:stdgo.GoString):stdgo.io.fs.Fs.FS throw ":os.dirFS is not yet implemented";
/**
    // containsAny reports whether any bytes in chars are within s.
**/
function _containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool throw ":os._containsAny is not yet implemented";
/**
    // ReadFile reads the named file and returns the contents.
    // A successful call returns err == nil, not err == EOF.
    // Because ReadFile reads the whole file, it does not treat an EOF from Read
    // as an error to be reported.
**/
function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        if (!sys.FileSystem.exists(_name)) return { _0 : null, _1 : stdgo.errors.Errors.new_("readFile " + _name + ": no such file or directory") };
        try {
            return { _0 : sys.io.File.getBytes(_name), _1 : null };
        } catch(e) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(e.details()) };
        };
    }
/**
    // WriteFile writes data to the named file, creating it if necessary.
    // If the file does not exist, WriteFile creates it with permissions perm (before umask);
    // otherwise WriteFile truncates it before writing, without changing permissions.
    // Since WriteFile requires multiple system calls to complete, a failure mid-operation
    // can leave the file in a partially written state.
**/
function writeFile(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _perm:FileMode):stdgo.Error throw ":os.writeFile is not yet implemented";
function _open(_path:stdgo.GoString, _flag:stdgo.StdGoTypes.GoInt, _perm:stdgo.StdGoTypes.GoUInt32):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.internal.poll.Poll.SysFile; var _2 : stdgo.Error; } throw ":os._open is not yet implemented";
/**
    // syscallMode returns the syscall-specific mode bits from Go's portable mode bits.
**/
function _syscallMode(_i:FileMode):stdgo.StdGoTypes.GoUInt32 throw ":os._syscallMode is not yet implemented";
/**
    // See docs in file.go:Chmod.
**/
function _chmod(_name:stdgo.GoString, _mode:FileMode):stdgo.Error throw ":os._chmod is not yet implemented";
/**
    // Chown changes the numeric uid and gid of the named file.
    // If the file is a symbolic link, it changes the uid and gid of the link's target.
    // A uid or gid of -1 means to not change that value.
    // If there is an error, it will be of type *PathError.
    //
    // On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
    // EPLAN9 error, wrapped in *PathError.
**/
function chown(_name:stdgo.GoString, _uid:stdgo.StdGoTypes.GoInt, _gid:stdgo.StdGoTypes.GoInt):stdgo.Error throw ":os.chown is not yet implemented";
/**
    // Lchown changes the numeric uid and gid of the named file.
    // If the file is a symbolic link, it changes the uid and gid of the link itself.
    // If there is an error, it will be of type *PathError.
    //
    // On Windows, it always returns the syscall.EWINDOWS error, wrapped
    // in *PathError.
**/
function lchown(_name:stdgo.GoString, _uid:stdgo.StdGoTypes.GoInt, _gid:stdgo.StdGoTypes.GoInt):stdgo.Error throw ":os.lchown is not yet implemented";
/**
    // Chtimes changes the access and modification times of the named
    // file, similar to the Unix utime() or utimes() functions.
    // A zero time.Time value will leave the corresponding file time unchanged.
    //
    // The underlying filesystem may truncate or round the values to a
    // less precise time unit.
    // If there is an error, it will be of type *PathError.
**/
function chtimes(_name:stdgo.GoString, _atime:stdgo.time.Time.Time, _mtime:stdgo.time.Time.Time):stdgo.Error throw ":os.chtimes is not yet implemented";
/**
    // ignoringEINTR makes a function call and repeats it if it returns an
    // EINTR error. This appears to be required even though we install all
    // signal handlers with SA_RESTART: see #22838, #38033, #38836, #40846.
    // Also #20400 and #36644 are issues in which a signal handler is
    // installed without setting SA_RESTART. None of these are the common case,
    // but there are enough of them that it seems that we can't avoid
    // an EINTR loop.
**/
function _ignoringEINTR(_fn:() -> stdgo.Error):stdgo.Error throw ":os._ignoringEINTR is not yet implemented";
/**
    // fixLongPath is a noop on non-Windows platforms.
**/
function _fixLongPath(_path:stdgo.GoString):stdgo.GoString throw ":os._fixLongPath is not yet implemented";
function _rename(_oldname:stdgo.GoString, _newname:stdgo.GoString):stdgo.Error throw ":os._rename is not yet implemented";
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
function newFile(_fd:stdgo.StdGoTypes.GoUIntptr, _name:stdgo.GoString):stdgo.StdGoTypes.Ref<File> throw ":os.newFile is not yet implemented";
/**
    // net_newUnixFile is a hidden entry point called by net.conn.File.
    // This is used so that a nonblocking network connection will become
    // blocking if code calls the Fd method. We don't want that for direct
    // calls to NewFile: passing a nonblocking descriptor to NewFile should
    // remain nonblocking if you get it back using Fd. But for net.conn.File
    // the call to NewFile is hidden from the user. Historically in that case
    // the Fd method has returned a blocking descriptor, and we want to
    // retain that behavior because existing code expects it and depends on it.
    //
    //go:linkname net_newUnixFile net.newUnixFile
**/
function _net_newUnixFile(_fd:stdgo.StdGoTypes.GoInt, _name:stdgo.GoString):stdgo.StdGoTypes.Ref<File> throw ":os._net_newUnixFile is not yet implemented";
/**
    // newFile is like NewFile, but if called from OpenFile or Pipe
    // (as passed in the kind parameter) it tries to add the file to
    // the runtime poller.
**/
function _newFile(_fd:stdgo.StdGoTypes.GoInt, _name:stdgo.GoString, _kind:T_newFileKind):stdgo.StdGoTypes.Ref<File> throw ":os._newFile is not yet implemented";
function _sigpipe():Void throw ":os._sigpipe is not yet implemented";
/**
    // epipecheck raises SIGPIPE if we get an EPIPE error on standard
    // output or standard error. See the SIGPIPE docs in os/signal, and
    // issue 11845.
**/
function _epipecheck(_file:stdgo.StdGoTypes.Ref<File>, _e:stdgo.Error):Void throw ":os._epipecheck is not yet implemented";
/**
    // openFileNolog is the Unix implementation of OpenFile.
    // Changes here should be reflected in openFdAt, if relevant.
**/
function _openFileNolog(_name:stdgo.GoString, _flag:stdgo.StdGoTypes.GoInt, _perm:FileMode):{ var _0 : stdgo.StdGoTypes.Ref<File>; var _1 : stdgo.Error; } throw ":os._openFileNolog is not yet implemented";
/**
    // Truncate changes the size of the named file.
    // If the file is a symbolic link, it changes the size of the link's target.
    // If there is an error, it will be of type *PathError.
**/
function truncate(_name:stdgo.GoString, _size:stdgo.StdGoTypes.GoInt64):stdgo.Error {
        trace("os.truncate not implemented");
        return null;
    }
/**
    // Remove removes the named file or (empty) directory.
    // If there is an error, it will be of type *PathError.
**/
function remove(_name:stdgo.GoString):stdgo.Error throw ":os.remove is not yet implemented";
function _tempDir():stdgo.GoString throw ":os._tempDir is not yet implemented";
/**
    // Link creates newname as a hard link to the oldname file.
    // If there is an error, it will be of type *LinkError.
**/
function link(_oldname:stdgo.GoString, _newname:stdgo.GoString):stdgo.Error throw ":os.link is not yet implemented";
/**
    // Symlink creates newname as a symbolic link to oldname.
    // On Windows, a symlink to a non-existent oldname creates a file symlink;
    // if oldname is later created as a directory the symlink will not work.
    // If there is an error, it will be of type *LinkError.
**/
function symlink(_oldname:stdgo.GoString, _newname:stdgo.GoString):stdgo.Error throw ":os.symlink is not yet implemented";
/**
    // Readlink returns the destination of the named symbolic link.
    // If there is an error, it will be of type *PathError.
**/
function readlink(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.readlink is not yet implemented";
function _newUnixDirent(_parent:stdgo.GoString, _name:stdgo.GoString, _typ:FileMode):{ var _0 : DirEntry; var _1 : stdgo.Error; } throw ":os._newUnixDirent is not yet implemented";
/**
    // Getwd returns a rooted path name corresponding to the
    // current directory. If the current directory can be
    // reached via multiple paths (due to symbolic links),
    // Getwd may return any one of them.
**/
function getwd():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        try {
            return { _0 : Sys.getCwd(), _1 : null };
        } catch(e) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(e.details()) };
        };
    }
/**
    // MkdirAll creates a directory named path,
    // along with any necessary parents, and returns nil,
    // or else returns an error.
    // The permission bits perm (before umask) are used for all
    // directories that MkdirAll creates.
    // If path is already a directory, MkdirAll does nothing
    // and returns nil.
**/
function mkdirAll(_path:stdgo.GoString, _perm:FileMode):stdgo.Error throw ":os.mkdirAll is not yet implemented";
/**
    // RemoveAll removes path and any children it contains.
    // It removes everything it can but returns the first error
    // it encounters. If the path does not exist, RemoveAll
    // returns nil (no error).
    // If there is an error, it will be of type *PathError.
**/
function removeAll(_path:stdgo.GoString):stdgo.Error throw ":os.removeAll is not yet implemented";
/**
    // endsWithDot reports whether the final component of path is ".".
**/
function _endsWithDot(_path:stdgo.GoString):Bool throw ":os._endsWithDot is not yet implemented";
/**
    // IsPathSeparator reports whether c is a directory separator character.
**/
function isPathSeparator(_c:stdgo.StdGoTypes.GoUInt8):Bool throw ":os.isPathSeparator is not yet implemented";
/**
    // basename removes trailing slashes and the leading directory name from path name.
**/
function _basename(_name:stdgo.GoString):stdgo.GoString throw ":os._basename is not yet implemented";
/**
    // splitPath returns the base name and parent directory.
**/
function _splitPath(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } throw ":os._splitPath is not yet implemented";
function _fixRootDirectory(_p:stdgo.GoString):stdgo.GoString throw ":os._fixRootDirectory is not yet implemented";
/**
    // Pipe returns a connected pair of Files; reads from r return bytes written to w.
    // It returns the files and an error, if any.
**/
function pipe():{ var _0 : stdgo.StdGoTypes.Ref<File>; var _1 : stdgo.StdGoTypes.Ref<File>; var _2 : stdgo.Error; } throw ":os.pipe is not yet implemented";
function _runtime_args():stdgo.Slice<stdgo.GoString> {
        #if js return new stdgo.Slice<stdgo.GoString>(0, 0).__setString__() #else null #end;
        #if sys {
            final args:Array<stdgo.GoString> = Sys.args().map(arg -> (arg : stdgo.GoString));
            args.unshift(Sys.getCwd());
            return new stdgo.Slice<stdgo.GoString>(args.length, args.length, ...args).__setString__();
        } #else null #end;
    }
/**
    // Getuid returns the numeric user id of the caller.
    //
    // On Windows, it returns -1.
**/
function getuid():stdgo.StdGoTypes.GoInt throw ":os.getuid is not yet implemented";
/**
    // Geteuid returns the numeric effective user id of the caller.
    //
    // On Windows, it returns -1.
**/
function geteuid():stdgo.StdGoTypes.GoInt throw ":os.geteuid is not yet implemented";
/**
    // Getgid returns the numeric group id of the caller.
    //
    // On Windows, it returns -1.
**/
function getgid():stdgo.StdGoTypes.GoInt throw ":os.getgid is not yet implemented";
/**
    // Getegid returns the numeric effective group id of the caller.
    //
    // On Windows, it returns -1.
**/
function getegid():stdgo.StdGoTypes.GoInt throw ":os.getegid is not yet implemented";
/**
    // Getgroups returns a list of the numeric ids of groups that the caller belongs to.
    //
    // On Windows, it returns syscall.EWINDOWS. See the os/user package
    // for a possible alternative.
**/
function getgroups():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoInt>; var _1 : stdgo.Error; } throw ":os.getgroups is not yet implemented";
/**
    // Exit causes the current program to exit with the given status code.
    // Conventionally, code zero indicates success, non-zero an error.
    // The program terminates immediately; deferred functions are not run.
    //
    // For portability, the status code should be in the range [0, 125].
**/
function exit(_code:stdgo.StdGoTypes.GoInt):Void throw ":os.exit is not yet implemented";
function _runtime_beforeExit(_exitCode:stdgo.StdGoTypes.GoInt):Void throw ":os._runtime_beforeExit is not yet implemented";
function _newRawConn(_file:stdgo.StdGoTypes.Ref<File>):{ var _0 : stdgo.StdGoTypes.Ref<T_rawConn>; var _1 : stdgo.Error; } throw ":os._newRawConn is not yet implemented";
function _removeAll(_path:stdgo.GoString):stdgo.Error throw ":os._removeAll is not yet implemented";
/**
    // Stat returns a FileInfo describing the named file.
    // If there is an error, it will be of type *PathError.
**/
function stat(_name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw ":os.stat is not yet implemented";
/**
    // Lstat returns a FileInfo describing the named file.
    // If the file is a symbolic link, the returned FileInfo
    // describes the symbolic link. Lstat makes no attempt to follow the link.
    // If there is an error, it will be of type *PathError.
**/
function lstat(_name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw ":os.lstat is not yet implemented";
function _fillFileStatFromSys(_fs:stdgo.StdGoTypes.Ref<T_fileStat>, _name:stdgo.GoString):Void throw ":os._fillFileStatFromSys is not yet implemented";
/**
    // For testing.
**/
function _atime(_fi:FileInfo):stdgo.time.Time.Time throw ":os._atime is not yet implemented";
/**
    // statNolog stats a file with no test logging.
**/
function _statNolog(_name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw ":os._statNolog is not yet implemented";
/**
    // lstatNolog lstats a file with no test logging.
**/
function _lstatNolog(_name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw ":os._lstatNolog is not yet implemented";
/**
    // itox converts val (an int) to a hexadecimal string.
**/
function _itox(_val:stdgo.StdGoTypes.GoInt):stdgo.GoString throw ":os._itox is not yet implemented";
/**
    // uitox converts val (a uint) to a hexadecimal string.
**/
function _uitox(_val:stdgo.StdGoTypes.GoUInt):stdgo.GoString throw ":os._uitox is not yet implemented";
/**
    // Hostname returns the host name reported by the kernel.
**/
function hostname():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.hostname is not yet implemented";
function _hostname():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os._hostname is not yet implemented";
/**
    // fastrand provided by runtime.
    // We generate random temporary file names so that there's a good
    // chance the file doesn't exist yet - keeps the number of tries in
    // TempFile to a minimum.
**/
function _fastrand():stdgo.StdGoTypes.GoUInt32 return Std.random(1) > 0 ? -Std.random(2147483647) - 1 : Std.random(2147483647);
function _nextRandom():stdgo.GoString throw ":os._nextRandom is not yet implemented";
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
function createTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.Ref<File>; var _1 : stdgo.Error; } throw ":os.createTemp is not yet implemented";
/**
    // prefixAndSuffix splits pattern by the last wildcard "*", if applicable,
    // returning prefix as the part before "*" and suffix as the part after "*".
**/
function _prefixAndSuffix(_pattern:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } throw ":os._prefixAndSuffix is not yet implemented";
/**
    // MkdirTemp creates a new temporary directory in the directory dir
    // and returns the pathname of the new directory.
    // The new directory's name is generated by adding a random string to the end of pattern.
    // If pattern includes a "*", the random string replaces the last "*" instead.
    // If dir is the empty string, MkdirTemp uses the default directory for temporary files, as returned by TempDir.
    // Multiple programs or goroutines calling MkdirTemp simultaneously will not choose the same directory.
    // It is the caller's responsibility to remove the directory when it is no longer needed.
**/
function mkdirTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.mkdirTemp is not yet implemented";
function _joinPath(_dir:stdgo.GoString, _name:stdgo.GoString):stdgo.GoString throw ":os._joinPath is not yet implemented";
/**
    // lastIndex from the strings package.
**/
function _lastIndex(_s:stdgo.GoString, _sep:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt throw ":os._lastIndex is not yet implemented";
/**
    // Getpagesize returns the underlying system's memory page size.
**/
function getpagesize():stdgo.StdGoTypes.GoInt throw ":os.getpagesize is not yet implemented";
/**
    // SameFile reports whether fi1 and fi2 describe the same file.
    // For example, on Unix this means that the device and inode fields
    // of the two underlying structures are identical; on other systems
    // the decision may be based on the path names.
    // SameFile only applies to results returned by this package's Stat.
    // It returns false in other cases.
**/
function sameFile(_fi1:FileInfo, _fi2:FileInfo):Bool throw ":os.sameFile is not yet implemented";
function _sameFile(_fs1:stdgo.StdGoTypes.Ref<T_fileStat>, _fs2:stdgo.StdGoTypes.Ref<T_fileStat>):Bool throw ":os._sameFile is not yet implemented";
@:keep var _ = {
        try {
            args = _runtime_args();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_dirInfo_asInterface {
    @:keep
    public dynamic function _close():Void __self__.value._close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dirInfo>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.T_dirInfo_asInterface) class T_dirInfo_static_extension {
    @:keep
    static public function _close( _d:stdgo.StdGoTypes.Ref<T_dirInfo>):Void throw "T_dirInfo:os._close is not yet implemented";
}
class SyscallError_asInterface {
    /**
        // Timeout reports whether this error represents a timeout.
    **/
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SyscallError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.SyscallError_asInterface) class SyscallError_static_extension {
    /**
        // Timeout reports whether this error represents a timeout.
    **/
    @:keep
    static public function timeout( _e:stdgo.StdGoTypes.Ref<SyscallError>):Bool throw "SyscallError:os.timeout is not yet implemented";
    @:keep
    static public function unwrap( _e:stdgo.StdGoTypes.Ref<SyscallError>):stdgo.Error throw "SyscallError:os.unwrap is not yet implemented";
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<SyscallError>):stdgo.GoString throw "SyscallError:os.error is not yet implemented";
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
    public dynamic function _blockUntilWaitable():{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value._blockUntilWaitable();
    @:keep
    public dynamic function _release():stdgo.Error return __self__.value._release();
    @:keep
    public dynamic function _signal(_sig:Signal):stdgo.Error return __self__.value._signal(_sig);
    @:keep
    public dynamic function _wait():{ var _0 : stdgo.StdGoTypes.Ref<ProcessState>; var _1 : stdgo.Error; } return __self__.value._wait();
    @:keep
    public dynamic function _kill():stdgo.Error return __self__.value._kill();
    /**
        // Signal sends a signal to the Process.
        // Sending Interrupt on Windows is not implemented.
    **/
    @:keep
    public dynamic function signal(_sig:Signal):stdgo.Error return __self__.value.signal(_sig);
    /**
        // Wait waits for the Process to exit, and then returns a
        // ProcessState describing its status and an error, if any.
        // Wait releases any resources associated with the Process.
        // On most operating systems, the Process must be a child
        // of the current process or an error will be returned.
    **/
    @:keep
    public dynamic function wait_():{ var _0 : stdgo.StdGoTypes.Ref<ProcessState>; var _1 : stdgo.Error; } return __self__.value.wait_();
    /**
        // Kill causes the Process to exit immediately. Kill does not wait until
        // the Process has actually exited. This only kills the Process itself,
        // not any other processes it may have started.
    **/
    @:keep
    public dynamic function kill():stdgo.Error return __self__.value.kill();
    /**
        // Release releases any resources associated with the Process p,
        // rendering it unusable in the future.
        // Release only needs to be called if Wait is not.
    **/
    @:keep
    public dynamic function release():stdgo.Error return __self__.value.release();
    @:keep
    public dynamic function _done():Bool return __self__.value._done();
    @:keep
    public dynamic function _setDone():Void __self__.value._setDone();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Process>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
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
    static public function _blockUntilWaitable( _p:stdgo.StdGoTypes.Ref<Process>):{ var _0 : Bool; var _1 : stdgo.Error; } throw "Process:os._blockUntilWaitable is not yet implemented";
    @:keep
    static public function _release( _p:stdgo.StdGoTypes.Ref<Process>):stdgo.Error throw "Process:os._release is not yet implemented";
    @:keep
    static public function _signal( _p:stdgo.StdGoTypes.Ref<Process>, _sig:Signal):stdgo.Error throw "Process:os._signal is not yet implemented";
    @:keep
    static public function _wait( _p:stdgo.StdGoTypes.Ref<Process>):{ var _0 : stdgo.StdGoTypes.Ref<ProcessState>; var _1 : stdgo.Error; } throw "Process:os._wait is not yet implemented";
    @:keep
    static public function _kill( _p:stdgo.StdGoTypes.Ref<Process>):stdgo.Error throw "Process:os._kill is not yet implemented";
    /**
        // Signal sends a signal to the Process.
        // Sending Interrupt on Windows is not implemented.
    **/
    @:keep
    static public function signal( _p:stdgo.StdGoTypes.Ref<Process>, _sig:Signal):stdgo.Error throw "Process:os.signal is not yet implemented";
    /**
        // Wait waits for the Process to exit, and then returns a
        // ProcessState describing its status and an error, if any.
        // Wait releases any resources associated with the Process.
        // On most operating systems, the Process must be a child
        // of the current process or an error will be returned.
    **/
    @:keep
    static public function wait_( _p:stdgo.StdGoTypes.Ref<Process>):{ var _0 : stdgo.StdGoTypes.Ref<ProcessState>; var _1 : stdgo.Error; } throw "Process:os.wait_ is not yet implemented";
    /**
        // Kill causes the Process to exit immediately. Kill does not wait until
        // the Process has actually exited. This only kills the Process itself,
        // not any other processes it may have started.
    **/
    @:keep
    static public function kill( _p:stdgo.StdGoTypes.Ref<Process>):stdgo.Error throw "Process:os.kill is not yet implemented";
    /**
        // Release releases any resources associated with the Process p,
        // rendering it unusable in the future.
        // Release only needs to be called if Wait is not.
    **/
    @:keep
    static public function release( _p:stdgo.StdGoTypes.Ref<Process>):stdgo.Error throw "Process:os.release is not yet implemented";
    @:keep
    static public function _done( _p:stdgo.StdGoTypes.Ref<Process>):Bool throw "Process:os._done is not yet implemented";
    @:keep
    static public function _setDone( _p:stdgo.StdGoTypes.Ref<Process>):Void throw "Process:os._setDone is not yet implemented";
}
class ProcessState_asInterface {
    @:keep
    public dynamic function _systemTime():stdgo.time.Time.Duration return __self__.value._systemTime();
    @:keep
    public dynamic function _userTime():stdgo.time.Time.Duration return __self__.value._userTime();
    /**
        // ExitCode returns the exit code of the exited process, or -1
        // if the process hasn't exited or was terminated by a signal.
    **/
    @:keep
    public dynamic function exitCode():stdgo.StdGoTypes.GoInt return __self__.value.exitCode();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _sysUsage():stdgo.StdGoTypes.AnyInterface return __self__.value._sysUsage();
    @:keep
    public dynamic function _sys():stdgo.StdGoTypes.AnyInterface return __self__.value._sys();
    @:keep
    public dynamic function _success():Bool return __self__.value._success();
    @:keep
    public dynamic function _exited():Bool return __self__.value._exited();
    /**
        // Pid returns the process id of the exited process.
    **/
    @:keep
    public dynamic function pid():stdgo.StdGoTypes.GoInt return __self__.value.pid();
    /**
        // SysUsage returns system-dependent resource usage information about
        // the exited process. Convert it to the appropriate underlying
        // type, such as *syscall.Rusage on Unix, to access its contents.
        // (On Unix, *syscall.Rusage matches struct rusage as defined in the
        // getrusage(2) manual page.)
    **/
    @:keep
    public dynamic function sysUsage():stdgo.StdGoTypes.AnyInterface return __self__.value.sysUsage();
    /**
        // Sys returns system-dependent exit information about
        // the process. Convert it to the appropriate underlying
        // type, such as syscall.WaitStatus on Unix, to access its contents.
    **/
    @:keep
    public dynamic function sys():stdgo.StdGoTypes.AnyInterface return __self__.value.sys();
    /**
        // Success reports whether the program exited successfully,
        // such as with exit status 0 on Unix.
    **/
    @:keep
    public dynamic function success():Bool return __self__.value.success();
    /**
        // Exited reports whether the program has exited.
        // On Unix systems this reports true if the program exited due to calling exit,
        // but false if the program terminated due to a signal.
    **/
    @:keep
    public dynamic function exited():Bool return __self__.value.exited();
    /**
        // SystemTime returns the system CPU time of the exited process and its children.
    **/
    @:keep
    public dynamic function systemTime():stdgo.time.Time.Duration return __self__.value.systemTime();
    /**
        // UserTime returns the user CPU time of the exited process and its children.
    **/
    @:keep
    public dynamic function userTime():stdgo.time.Time.Duration return __self__.value.userTime();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ProcessState>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.ProcessState_asInterface) class ProcessState_static_extension {
    @:keep
    static public function _systemTime( _p:stdgo.StdGoTypes.Ref<ProcessState>):stdgo.time.Time.Duration throw "ProcessState:os._systemTime is not yet implemented";
    @:keep
    static public function _userTime( _p:stdgo.StdGoTypes.Ref<ProcessState>):stdgo.time.Time.Duration throw "ProcessState:os._userTime is not yet implemented";
    /**
        // ExitCode returns the exit code of the exited process, or -1
        // if the process hasn't exited or was terminated by a signal.
    **/
    @:keep
    static public function exitCode( _p:stdgo.StdGoTypes.Ref<ProcessState>):stdgo.StdGoTypes.GoInt throw "ProcessState:os.exitCode is not yet implemented";
    @:keep
    static public function string( _p:stdgo.StdGoTypes.Ref<ProcessState>):stdgo.GoString throw "ProcessState:os.string is not yet implemented";
    @:keep
    static public function _sysUsage( _p:stdgo.StdGoTypes.Ref<ProcessState>):stdgo.StdGoTypes.AnyInterface throw "ProcessState:os._sysUsage is not yet implemented";
    @:keep
    static public function _sys( _p:stdgo.StdGoTypes.Ref<ProcessState>):stdgo.StdGoTypes.AnyInterface throw "ProcessState:os._sys is not yet implemented";
    @:keep
    static public function _success( _p:stdgo.StdGoTypes.Ref<ProcessState>):Bool throw "ProcessState:os._success is not yet implemented";
    @:keep
    static public function _exited( _p:stdgo.StdGoTypes.Ref<ProcessState>):Bool throw "ProcessState:os._exited is not yet implemented";
    /**
        // Pid returns the process id of the exited process.
    **/
    @:keep
    static public function pid( _p:stdgo.StdGoTypes.Ref<ProcessState>):stdgo.StdGoTypes.GoInt throw "ProcessState:os.pid is not yet implemented";
    /**
        // SysUsage returns system-dependent resource usage information about
        // the exited process. Convert it to the appropriate underlying
        // type, such as *syscall.Rusage on Unix, to access its contents.
        // (On Unix, *syscall.Rusage matches struct rusage as defined in the
        // getrusage(2) manual page.)
    **/
    @:keep
    static public function sysUsage( _p:stdgo.StdGoTypes.Ref<ProcessState>):stdgo.StdGoTypes.AnyInterface throw "ProcessState:os.sysUsage is not yet implemented";
    /**
        // Sys returns system-dependent exit information about
        // the process. Convert it to the appropriate underlying
        // type, such as syscall.WaitStatus on Unix, to access its contents.
    **/
    @:keep
    static public function sys( _p:stdgo.StdGoTypes.Ref<ProcessState>):stdgo.StdGoTypes.AnyInterface throw "ProcessState:os.sys is not yet implemented";
    /**
        // Success reports whether the program exited successfully,
        // such as with exit status 0 on Unix.
    **/
    @:keep
    static public function success( _p:stdgo.StdGoTypes.Ref<ProcessState>):Bool throw "ProcessState:os.success is not yet implemented";
    /**
        // Exited reports whether the program has exited.
        // On Unix systems this reports true if the program exited due to calling exit,
        // but false if the program terminated due to a signal.
    **/
    @:keep
    static public function exited( _p:stdgo.StdGoTypes.Ref<ProcessState>):Bool throw "ProcessState:os.exited is not yet implemented";
    /**
        // SystemTime returns the system CPU time of the exited process and its children.
    **/
    @:keep
    static public function systemTime( _p:stdgo.StdGoTypes.Ref<ProcessState>):stdgo.time.Time.Duration throw "ProcessState:os.systemTime is not yet implemented";
    /**
        // UserTime returns the user CPU time of the exited process and its children.
    **/
    @:keep
    static public function userTime( _p:stdgo.StdGoTypes.Ref<ProcessState>):stdgo.time.Time.Duration throw "ProcessState:os.userTime is not yet implemented";
}
class LinkError_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<LinkError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.LinkError_asInterface) class LinkError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.StdGoTypes.Ref<LinkError>):stdgo.Error throw "LinkError:os.unwrap is not yet implemented";
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<LinkError>):stdgo.GoString throw "LinkError:os.error is not yet implemented";
}
class T_fileWithoutReadFrom_asInterface {
    /**
        // This ReadFrom method hides the *File ReadFrom method.
    **/
    @:keep
    public dynamic function readFrom(_0:T_fileWithoutReadFrom):Void __self__.value.readFrom(_0);
    @:embedded
    public dynamic function _write(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_b);
    @:embedded
    public dynamic function _wrapErr(_op:stdgo.GoString, _err:stdgo.Error):stdgo.Error return __self__.value._wrapErr(_op, _err);
    @:embedded
    public dynamic function _setWriteDeadline(__0:stdgo.time.Time.Time):stdgo.Error return __self__.value._setWriteDeadline(__0);
    @:embedded
    public dynamic function _setReadDeadline(__0:stdgo.time.Time.Time):stdgo.Error return __self__.value._setReadDeadline(__0);
    @:embedded
    public dynamic function _setDeadline(__0:stdgo.time.Time.Time):stdgo.Error return __self__.value._setDeadline(__0);
    @:embedded
    public dynamic function _seek(_offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value._seek(_offset, _whence);
    @:embedded
    public dynamic function _readdir(_n:stdgo.StdGoTypes.GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : stdgo.Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return __self__.value._readdir(_n, _mode);
    @:embedded
    public dynamic function _readFrom(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return __self__.value._readFrom(_r);
    @:embedded
    public dynamic function _read(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_b);
    @:embedded
    public dynamic function _pwrite(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._pwrite(_b, _off);
    @:embedded
    public dynamic function _pread(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._pread(_b, _off);
    @:embedded
    public dynamic function _close():stdgo.Error return __self__.value._close();
    @:embedded
    public dynamic function _chmod(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return __self__.value._chmod(_mode);
    @:embedded
    public dynamic function _checkValid(__0:stdgo.GoString):stdgo.Error return __self__.value._checkValid(__0);
    @:embedded
    public dynamic function writeString(__0:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(__0);
    @:embedded
    public dynamic function writeAt(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeAt(_b, _off);
    @:embedded
    public dynamic function write(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:embedded
    public dynamic function truncate(__0:stdgo.StdGoTypes.GoInt64):stdgo.Error return __self__.value.truncate(__0);
    @:embedded
    public dynamic function syscallConn():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return __self__.value.syscallConn();
    @:embedded
    public dynamic function sync():stdgo.Error return __self__.value.sync();
    @:embedded
    public dynamic function stat():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:embedded
    public dynamic function setWriteDeadline(__0:stdgo.time.Time.Time):stdgo.Error return __self__.value.setWriteDeadline(__0);
    @:embedded
    public dynamic function setReadDeadline(__0:stdgo.time.Time.Time):stdgo.Error return __self__.value.setReadDeadline(__0);
    @:embedded
    public dynamic function setDeadline(__0:stdgo.time.Time.Time):stdgo.Error return __self__.value.setDeadline(__0);
    @:embedded
    public dynamic function seek(_offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:embedded
    public dynamic function readdirnames(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.readdirnames(_n);
    @:embedded
    public dynamic function readdir(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return __self__.value.readdir(_n);
    @:embedded
    public dynamic function readDir(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_n);
    @:embedded
    public dynamic function readAt(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_b, _off);
    @:embedded
    public dynamic function read(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:embedded
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:embedded
    public dynamic function fd():stdgo.StdGoTypes.GoUIntptr return __self__.value.fd();
    @:embedded
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:embedded
    public dynamic function chown(_uid:stdgo.StdGoTypes.GoInt, _gid:stdgo.StdGoTypes.GoInt):stdgo.Error return __self__.value.chown(_uid, _gid);
    @:embedded
    public dynamic function chmod(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return __self__.value.chmod(_mode);
    @:embedded
    public dynamic function chdir():stdgo.Error return __self__.value.chdir();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fileWithoutReadFrom>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.T_fileWithoutReadFrom_asInterface) class T_fileWithoutReadFrom_static_extension {
    /**
        // This ReadFrom method hides the *File ReadFrom method.
    **/
    @:keep
    static public function readFrom( _:T_fileWithoutReadFrom, _0:T_fileWithoutReadFrom):Void throw "T_fileWithoutReadFrom:os.readFrom is not yet implemented";
    @:embedded
    public static function _write( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__._write(_b);
    @:embedded
    public static function _wrapErr( __self__:T_fileWithoutReadFrom, _op:stdgo.GoString, _err:stdgo.Error):stdgo.Error return __self__._wrapErr(_op, _err);
    @:embedded
    public static function _setWriteDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo.time.Time.Time):stdgo.Error return __self__._setWriteDeadline(__0);
    @:embedded
    public static function _setReadDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo.time.Time.Time):stdgo.Error return __self__._setReadDeadline(__0);
    @:embedded
    public static function _setDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo.time.Time.Time):stdgo.Error return __self__._setDeadline(__0);
    @:embedded
    public static function _seek( __self__:T_fileWithoutReadFrom, _offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__._seek(_offset, _whence);
    @:embedded
    public static function _readdir( __self__:T_fileWithoutReadFrom, _n:stdgo.StdGoTypes.GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : stdgo.Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return __self__._readdir(_n, _mode);
    @:embedded
    public static function _readFrom( __self__:T_fileWithoutReadFrom, _r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return __self__._readFrom(_r);
    @:embedded
    public static function _read( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__._read(_b);
    @:embedded
    public static function _pwrite( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__._pwrite(_b, _off);
    @:embedded
    public static function _pread( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__._pread(_b, _off);
    @:embedded
    public static function _close( __self__:T_fileWithoutReadFrom):stdgo.Error return __self__._close();
    @:embedded
    public static function _chmod( __self__:T_fileWithoutReadFrom, _mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return __self__._chmod(_mode);
    @:embedded
    public static function _checkValid( __self__:T_fileWithoutReadFrom, __0:stdgo.GoString):stdgo.Error return __self__._checkValid(__0);
    @:embedded
    public static function writeString( __self__:T_fileWithoutReadFrom, __0:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeAt( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.writeAt(_b, _off);
    @:embedded
    public static function write( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.write(_b);
    @:embedded
    public static function truncate( __self__:T_fileWithoutReadFrom, __0:stdgo.StdGoTypes.GoInt64):stdgo.Error return __self__.truncate(__0);
    @:embedded
    public static function syscallConn( __self__:T_fileWithoutReadFrom):{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return __self__.syscallConn();
    @:embedded
    public static function sync( __self__:T_fileWithoutReadFrom):stdgo.Error return __self__.sync();
    @:embedded
    public static function stat( __self__:T_fileWithoutReadFrom):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.stat();
    @:embedded
    public static function setWriteDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo.time.Time.Time):stdgo.Error return __self__.setWriteDeadline(__0);
    @:embedded
    public static function setReadDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo.time.Time.Time):stdgo.Error return __self__.setReadDeadline(__0);
    @:embedded
    public static function setDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo.time.Time.Time):stdgo.Error return __self__.setDeadline(__0);
    @:embedded
    public static function seek( __self__:T_fileWithoutReadFrom, _offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.seek(_offset, _whence);
    @:embedded
    public static function readdirnames( __self__:T_fileWithoutReadFrom, _n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.readdirnames(_n);
    @:embedded
    public static function readdir( __self__:T_fileWithoutReadFrom, _n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return __self__.readdir(_n);
    @:embedded
    public static function readDir( __self__:T_fileWithoutReadFrom, _n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.readDir(_n);
    @:embedded
    public static function readAt( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.readAt(_b, _off);
    @:embedded
    public static function read( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.read(_b);
    @:embedded
    public static function name( __self__:T_fileWithoutReadFrom):stdgo.GoString return __self__.name();
    @:embedded
    public static function fd( __self__:T_fileWithoutReadFrom):stdgo.StdGoTypes.GoUIntptr return __self__.fd();
    @:embedded
    public static function close( __self__:T_fileWithoutReadFrom):stdgo.Error return __self__.close();
    @:embedded
    public static function chown( __self__:T_fileWithoutReadFrom, _uid:stdgo.StdGoTypes.GoInt, _gid:stdgo.StdGoTypes.GoInt):stdgo.Error return __self__.chown(_uid, _gid);
    @:embedded
    public static function chmod( __self__:T_fileWithoutReadFrom, _mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return __self__.chmod(_mode);
    @:embedded
    public static function chdir( __self__:T_fileWithoutReadFrom):stdgo.Error return __self__.chdir();
}
class T_file_asInterface {
    @:keep
    public dynamic function _close():stdgo.Error return __self__.value._close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_file>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.T_file_asInterface) class T_file_static_extension {
    @:keep
    static public function _close( _file:stdgo.StdGoTypes.Ref<T_file>):stdgo.Error throw "T_file:os._close is not yet implemented";
}
class T_unixDirent_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_unixDirent>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.T_unixDirent_asInterface) class T_unixDirent_static_extension {
    @:keep
    static public function string( _d:stdgo.StdGoTypes.Ref<T_unixDirent>):stdgo.GoString throw "T_unixDirent:os.string is not yet implemented";
    @:keep
    static public function info( _d:stdgo.StdGoTypes.Ref<T_unixDirent>):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw "T_unixDirent:os.info is not yet implemented";
    @:keep
    static public function type( _d:stdgo.StdGoTypes.Ref<T_unixDirent>):FileMode throw "T_unixDirent:os.type is not yet implemented";
    @:keep
    static public function isDir( _d:stdgo.StdGoTypes.Ref<T_unixDirent>):Bool throw "T_unixDirent:os.isDir is not yet implemented";
    @:keep
    static public function name( _d:stdgo.StdGoTypes.Ref<T_unixDirent>):stdgo.GoString throw "T_unixDirent:os.name is not yet implemented";
}
class T_rawConn_asInterface {
    @:keep
    public dynamic function write(_f:stdgo.StdGoTypes.GoUIntptr -> Bool):stdgo.Error return __self__.value.write(_f);
    @:keep
    public dynamic function read(_f:stdgo.StdGoTypes.GoUIntptr -> Bool):stdgo.Error return __self__.value.read(_f);
    @:keep
    public dynamic function control(_f:stdgo.StdGoTypes.GoUIntptr -> Void):stdgo.Error return __self__.value.control(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_rawConn>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.T_rawConn_asInterface) class T_rawConn_static_extension {
    @:keep
    static public function write( _c:stdgo.StdGoTypes.Ref<T_rawConn>, _f:stdgo.StdGoTypes.GoUIntptr -> Bool):stdgo.Error throw "T_rawConn:os.write is not yet implemented";
    @:keep
    static public function read( _c:stdgo.StdGoTypes.Ref<T_rawConn>, _f:stdgo.StdGoTypes.GoUIntptr -> Bool):stdgo.Error throw "T_rawConn:os.read is not yet implemented";
    @:keep
    static public function control( _c:stdgo.StdGoTypes.Ref<T_rawConn>, _f:stdgo.StdGoTypes.GoUIntptr -> Void):stdgo.Error throw "T_rawConn:os.control is not yet implemented";
}
class File_asInterface {
    /**
        // Stat returns the FileInfo structure describing file.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    public dynamic function stat():{ var _0 : FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:keep
    public dynamic function _readFrom(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return __self__.value._readFrom(_r);
    /**
        // seek sets the offset for the next Read or Write on file to offset, interpreted
        // according to whence: 0 means relative to the origin of the file, 1 means
        // relative to the current offset, and 2 means relative to the end.
        // It returns the new offset and an error, if any.
    **/
    @:keep
    public dynamic function _seek(_offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value._seek(_offset, _whence);
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
    public dynamic function fd():stdgo.StdGoTypes.GoUIntptr return __self__.value.fd();
    /**
        // checkValid checks whether f is valid for use.
        // If not, it returns an appropriate error, perhaps incorporating the operation name op.
    **/
    @:keep
    public dynamic function _checkValid(_op:stdgo.GoString):stdgo.Error return __self__.value._checkValid(_op);
    /**
        // setWriteDeadline sets the write deadline.
    **/
    @:keep
    public dynamic function _setWriteDeadline(_t:stdgo.time.Time.Time):stdgo.Error return __self__.value._setWriteDeadline(_t);
    /**
        // setReadDeadline sets the read deadline.
    **/
    @:keep
    public dynamic function _setReadDeadline(_t:stdgo.time.Time.Time):stdgo.Error return __self__.value._setReadDeadline(_t);
    /**
        // setDeadline sets the read and write deadline.
    **/
    @:keep
    public dynamic function _setDeadline(_t:stdgo.time.Time.Time):stdgo.Error return __self__.value._setDeadline(_t);
    /**
        // Chdir changes the current working directory to the file,
        // which must be a directory.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    public dynamic function chdir():stdgo.Error return __self__.value.chdir();
    /**
        // Sync commits the current contents of the file to stable storage.
        // Typically, this means flushing the file system's in-memory copy
        // of recently written data to disk.
    **/
    @:keep
    public dynamic function sync():stdgo.Error return __self__.value.sync();
    /**
        // Truncate changes the size of the file.
        // It does not change the I/O offset.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    public dynamic function truncate(_size:stdgo.StdGoTypes.GoInt64):stdgo.Error return __self__.value.truncate(_size);
    /**
        // Chown changes the numeric uid and gid of the named file.
        // If there is an error, it will be of type *PathError.
        //
        // On Windows, it always returns the syscall.EWINDOWS error, wrapped
        // in *PathError.
    **/
    @:keep
    public dynamic function chown(_uid:stdgo.StdGoTypes.GoInt, _gid:stdgo.StdGoTypes.GoInt):stdgo.Error return __self__.value.chown(_uid, _gid);
    /**
        // See docs in file.go:(*File).Chmod.
    **/
    @:keep
    public dynamic function _chmod(_mode:FileMode):stdgo.Error return __self__.value._chmod(_mode);
    /**
        // pwrite writes len(b) bytes to the File starting at byte offset off.
        // It returns the number of bytes written and an error, if any.
    **/
    @:keep
    public dynamic function _pwrite(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._pwrite(_b, _off);
    /**
        // write writes len(b) bytes to the File.
        // It returns the number of bytes written and an error, if any.
    **/
    @:keep
    public dynamic function _write(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_b);
    /**
        // pread reads len(b) bytes from the File starting at byte offset off.
        // It returns the number of bytes read and the error, if any.
        // EOF is signaled by a zero count with err set to nil.
    **/
    @:keep
    public dynamic function _pread(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._pread(_b, _off);
    /**
        // read reads up to len(b) bytes from the File.
        // It returns the number of bytes read and an error, if any.
    **/
    @:keep
    public dynamic function _read(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_b);
    /**
        // Close closes the File, rendering it unusable for I/O.
        // On files that support SetDeadline, any pending I/O operations will
        // be canceled and return immediately with an ErrClosed error.
        // Close will return an error if it has already been called.
    **/
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    /**
        // SyscallConn returns a raw file.
        // This implements the syscall.Conn interface.
    **/
    @:keep
    public dynamic function syscallConn():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return __self__.value.syscallConn();
    /**
        // SetWriteDeadline sets the deadline for any future Write calls and any
        // currently-blocked Write call.
        // Even if Write times out, it may return n > 0, indicating that
        // some of the data was successfully written.
        // A zero value for t means Write will not time out.
        // Not all files support setting deadlines; see SetDeadline.
    **/
    @:keep
    public dynamic function setWriteDeadline(_t:stdgo.time.Time.Time):stdgo.Error return __self__.value.setWriteDeadline(_t);
    /**
        // SetReadDeadline sets the deadline for future Read calls and any
        // currently-blocked Read call.
        // A zero value for t means Read will not time out.
        // Not all files support setting deadlines; see SetDeadline.
    **/
    @:keep
    public dynamic function setReadDeadline(_t:stdgo.time.Time.Time):stdgo.Error return __self__.value.setReadDeadline(_t);
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
    public dynamic function setDeadline(_t:stdgo.time.Time.Time):stdgo.Error return __self__.value.setDeadline(_t);
    /**
        // Chmod changes the mode of the file to mode.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    public dynamic function chmod(_mode:FileMode):stdgo.Error return __self__.value.chmod(_mode);
    /**
        // wrapErr wraps an error that occurred during an operation on an open file.
        // It passes io.EOF through unchanged, otherwise converts
        // poll.ErrFileClosing to ErrClosed and wraps the error in a PathError.
    **/
    @:keep
    public dynamic function _wrapErr(_op:stdgo.GoString, _err:stdgo.Error):stdgo.Error return __self__.value._wrapErr(_op, _err);
    /**
        // WriteString is like Write, but writes the contents of string s rather than
        // a slice of bytes.
    **/
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    /**
        // Seek sets the offset for the next Read or Write on file to offset, interpreted
        // according to whence: 0 means relative to the origin of the file, 1 means
        // relative to the current offset, and 2 means relative to the end.
        // It returns the new offset and an error, if any.
        // The behavior of Seek on a file opened with O_APPEND is not specified.
    **/
    @:keep
    public dynamic function seek(_offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    /**
        // WriteAt writes len(b) bytes to the File starting at byte offset off.
        // It returns the number of bytes written and an error, if any.
        // WriteAt returns a non-nil error when n != len(b).
        //
        // If file was opened with the O_APPEND flag, WriteAt returns an error.
    **/
    @:keep
    public dynamic function writeAt(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeAt(_b, _off);
    /**
        // Write writes len(b) bytes from b to the File.
        // It returns the number of bytes written and an error, if any.
        // Write returns a non-nil error when n != len(b).
    **/
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    /**
        // ReadFrom implements io.ReaderFrom.
    **/
    @:keep
    public dynamic function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    /**
        // ReadAt reads len(b) bytes from the File starting at byte offset off.
        // It returns the number of bytes read and the error, if any.
        // ReadAt always returns a non-nil error when n < len(b).
        // At end of file, that error is io.EOF.
    **/
    @:keep
    public dynamic function readAt(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_b, _off);
    /**
        // Read reads up to len(b) bytes from the File and stores them in b.
        // It returns the number of bytes read and any error encountered.
        // At end of file, Read returns 0, io.EOF.
    **/
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    /**
        // Name returns the name of the file as presented to Open.
    **/
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:keep
    public dynamic function _readdir(_n:stdgo.StdGoTypes.GoInt, _mode:T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<DirEntry>; var _2 : stdgo.Slice<FileInfo>; var _3 : stdgo.Error; } return __self__.value._readdir(_n, _mode);
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
    public dynamic function readDir(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_n);
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
    public dynamic function readdirnames(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.readdirnames(_n);
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
    public dynamic function readdir(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<FileInfo>; var _1 : stdgo.Error; } return __self__.value.readdir(_n);
    @:embedded
    public dynamic function _close():stdgo.Error return __self__.value._close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<File>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.File_asInterface) class File_static_extension {
    /**
        // Stat returns the FileInfo structure describing file.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    static public function stat( _f:stdgo.StdGoTypes.Ref<File>):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw "File:os.stat is not yet implemented";
    @:keep
    static public function _readFrom( _f:stdgo.StdGoTypes.Ref<File>, _r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } throw "File:os._readFrom is not yet implemented";
    /**
        // seek sets the offset for the next Read or Write on file to offset, interpreted
        // according to whence: 0 means relative to the origin of the file, 1 means
        // relative to the current offset, and 2 means relative to the end.
        // It returns the new offset and an error, if any.
    **/
    @:keep
    static public function _seek( _f:stdgo.StdGoTypes.Ref<File>, _offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } throw "File:os._seek is not yet implemented";
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
    static public function fd( _f:stdgo.StdGoTypes.Ref<File>):stdgo.StdGoTypes.GoUIntptr throw "File:os.fd is not yet implemented";
    /**
        // checkValid checks whether f is valid for use.
        // If not, it returns an appropriate error, perhaps incorporating the operation name op.
    **/
    @:keep
    static public function _checkValid( _f:stdgo.StdGoTypes.Ref<File>, _op:stdgo.GoString):stdgo.Error throw "File:os._checkValid is not yet implemented";
    /**
        // setWriteDeadline sets the write deadline.
    **/
    @:keep
    static public function _setWriteDeadline( _f:stdgo.StdGoTypes.Ref<File>, _t:stdgo.time.Time.Time):stdgo.Error throw "File:os._setWriteDeadline is not yet implemented";
    /**
        // setReadDeadline sets the read deadline.
    **/
    @:keep
    static public function _setReadDeadline( _f:stdgo.StdGoTypes.Ref<File>, _t:stdgo.time.Time.Time):stdgo.Error throw "File:os._setReadDeadline is not yet implemented";
    /**
        // setDeadline sets the read and write deadline.
    **/
    @:keep
    static public function _setDeadline( _f:stdgo.StdGoTypes.Ref<File>, _t:stdgo.time.Time.Time):stdgo.Error throw "File:os._setDeadline is not yet implemented";
    /**
        // Chdir changes the current working directory to the file,
        // which must be a directory.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    static public function chdir( _f:stdgo.StdGoTypes.Ref<File>):stdgo.Error throw "File:os.chdir is not yet implemented";
    /**
        // Sync commits the current contents of the file to stable storage.
        // Typically, this means flushing the file system's in-memory copy
        // of recently written data to disk.
    **/
    @:keep
    static public function sync( _f:stdgo.StdGoTypes.Ref<File>):stdgo.Error throw "File:os.sync is not yet implemented";
    /**
        // Truncate changes the size of the file.
        // It does not change the I/O offset.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    static public function truncate( _f:stdgo.StdGoTypes.Ref<File>, _size:stdgo.StdGoTypes.GoInt64):stdgo.Error {
        @:privateAccess _f._output.close();
        final bytes = _size == 0 ? haxe.io.Bytes.alloc(0) : sys.io.File.getBytes(@:privateAccess _f._file._name);
        sys.io.File.saveBytes(@:privateAccess _f._file._name, bytes.sub(0, (_size : stdgo.StdGoTypes.GoInt).toBasic()));
        @:privateAccess _f._output = sys.io.File.write(@:privateAccess _f._file._name);
        return null;
    }
    /**
        // Chown changes the numeric uid and gid of the named file.
        // If there is an error, it will be of type *PathError.
        //
        // On Windows, it always returns the syscall.EWINDOWS error, wrapped
        // in *PathError.
    **/
    @:keep
    static public function chown( _f:stdgo.StdGoTypes.Ref<File>, _uid:stdgo.StdGoTypes.GoInt, _gid:stdgo.StdGoTypes.GoInt):stdgo.Error throw "File:os.chown is not yet implemented";
    /**
        // See docs in file.go:(*File).Chmod.
    **/
    @:keep
    static public function _chmod( _f:stdgo.StdGoTypes.Ref<File>, _mode:FileMode):stdgo.Error throw "File:os._chmod is not yet implemented";
    /**
        // pwrite writes len(b) bytes to the File starting at byte offset off.
        // It returns the number of bytes written and an error, if any.
    **/
    @:keep
    static public function _pwrite( _f:stdgo.StdGoTypes.Ref<File>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "File:os._pwrite is not yet implemented";
    /**
        // write writes len(b) bytes to the File.
        // It returns the number of bytes written and an error, if any.
    **/
    @:keep
    static public function _write( _f:stdgo.StdGoTypes.Ref<File>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "File:os._write is not yet implemented";
    /**
        // pread reads len(b) bytes from the File starting at byte offset off.
        // It returns the number of bytes read and the error, if any.
        // EOF is signaled by a zero count with err set to nil.
    **/
    @:keep
    static public function _pread( _f:stdgo.StdGoTypes.Ref<File>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "File:os._pread is not yet implemented";
    /**
        // read reads up to len(b) bytes from the File.
        // It returns the number of bytes read and an error, if any.
    **/
    @:keep
    static public function _read( _f:stdgo.StdGoTypes.Ref<File>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "File:os._read is not yet implemented";
    /**
        // Close closes the File, rendering it unusable for I/O.
        // On files that support SetDeadline, any pending I/O operations will
        // be canceled and return immediately with an ErrClosed error.
        // Close will return an error if it has already been called.
    **/
    @:keep
    static public function close( _f:stdgo.StdGoTypes.Ref<File>):stdgo.Error {
        @:privateAccess _f._input.close();
        @:privateAccess _f._output.close();
        return null;
    }
    /**
        // SyscallConn returns a raw file.
        // This implements the syscall.Conn interface.
    **/
    @:keep
    static public function syscallConn( _f:stdgo.StdGoTypes.Ref<File>):{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } throw "File:os.syscallConn is not yet implemented";
    /**
        // SetWriteDeadline sets the deadline for any future Write calls and any
        // currently-blocked Write call.
        // Even if Write times out, it may return n > 0, indicating that
        // some of the data was successfully written.
        // A zero value for t means Write will not time out.
        // Not all files support setting deadlines; see SetDeadline.
    **/
    @:keep
    static public function setWriteDeadline( _f:stdgo.StdGoTypes.Ref<File>, _t:stdgo.time.Time.Time):stdgo.Error throw "File:os.setWriteDeadline is not yet implemented";
    /**
        // SetReadDeadline sets the deadline for future Read calls and any
        // currently-blocked Read call.
        // A zero value for t means Read will not time out.
        // Not all files support setting deadlines; see SetDeadline.
    **/
    @:keep
    static public function setReadDeadline( _f:stdgo.StdGoTypes.Ref<File>, _t:stdgo.time.Time.Time):stdgo.Error throw "File:os.setReadDeadline is not yet implemented";
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
    static public function setDeadline( _f:stdgo.StdGoTypes.Ref<File>, _t:stdgo.time.Time.Time):stdgo.Error throw "File:os.setDeadline is not yet implemented";
    /**
        // Chmod changes the mode of the file to mode.
        // If there is an error, it will be of type *PathError.
    **/
    @:keep
    static public function chmod( _f:stdgo.StdGoTypes.Ref<File>, _mode:FileMode):stdgo.Error throw "File:os.chmod is not yet implemented";
    /**
        // wrapErr wraps an error that occurred during an operation on an open file.
        // It passes io.EOF through unchanged, otherwise converts
        // poll.ErrFileClosing to ErrClosed and wraps the error in a PathError.
    **/
    @:keep
    static public function _wrapErr( _f:stdgo.StdGoTypes.Ref<File>, _op:stdgo.GoString, _err:stdgo.Error):stdgo.Error throw "File:os._wrapErr is not yet implemented";
    /**
        // WriteString is like Write, but writes the contents of string s rather than
        // a slice of bytes.
    **/
    @:keep
    static public function writeString( _f:stdgo.StdGoTypes.Ref<File>, _s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return _f.write(_s);
    /**
        // Seek sets the offset for the next Read or Write on file to offset, interpreted
        // according to whence: 0 means relative to the origin of the file, 1 means
        // relative to the current offset, and 2 means relative to the end.
        // It returns the new offset and an error, if any.
        // The behavior of Seek on a file opened with O_APPEND is not specified.
    **/
    @:keep
    static public function seek( _f:stdgo.StdGoTypes.Ref<File>, _offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } throw "File:os.seek is not yet implemented";
    /**
        // WriteAt writes len(b) bytes to the File starting at byte offset off.
        // It returns the number of bytes written and an error, if any.
        // WriteAt returns a non-nil error when n != len(b).
        //
        // If file was opened with the O_APPEND flag, WriteAt returns an error.
    **/
    @:keep
    static public function writeAt( _f:stdgo.StdGoTypes.Ref<File>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "File:os.writeAt is not yet implemented";
    /**
        // Write writes len(b) bytes from b to the File.
        // It returns the number of bytes written and an error, if any.
        // Write returns a non-nil error when n != len(b).
    **/
    @:keep
    static public function write( _f:stdgo.StdGoTypes.Ref<File>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        if (_b.length == 0) return { _0 : 0, _1 : null };
        final i = @:privateAccess _f._output.writeBytes(_b.toBytes(), 0, _b.length.toBasic());
        if (i != _b.length.toBasic()) return { _0 : i, _1 : stdgo.errors.Errors.new_("invalid write") };
        return { _0 : i, _1 : null };
    }
    /**
        // ReadFrom implements io.ReaderFrom.
    **/
    @:keep
    static public function readFrom( _f:stdgo.StdGoTypes.Ref<File>, _r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } throw "File:os.readFrom is not yet implemented";
    /**
        // ReadAt reads len(b) bytes from the File starting at byte offset off.
        // It returns the number of bytes read and the error, if any.
        // ReadAt always returns a non-nil error when n < len(b).
        // At end of file, that error is io.EOF.
    **/
    @:keep
    static public function readAt( _f:stdgo.StdGoTypes.Ref<File>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "File:os.readAt is not yet implemented";
    /**
        // Read reads up to len(b) bytes from the File and stores them in b.
        // It returns the number of bytes read and any error encountered.
        // At end of file, Read returns 0, io.EOF.
    **/
    @:keep
    static public function read( _f:stdgo.StdGoTypes.Ref<File>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "File:os.read is not yet implemented";
    /**
        // Name returns the name of the file as presented to Open.
    **/
    @:keep
    static public function name( _f:stdgo.StdGoTypes.Ref<File>):stdgo.GoString throw "File:os.name is not yet implemented";
    @:keep
    static public function _readdir( _f:stdgo.StdGoTypes.Ref<File>, _n:stdgo.StdGoTypes.GoInt, _mode:T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<DirEntry>; var _2 : stdgo.Slice<FileInfo>; var _3 : stdgo.Error; } throw "File:os._readdir is not yet implemented";
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
    static public function readDir( _f:stdgo.StdGoTypes.Ref<File>, _n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } throw "File:os.readDir is not yet implemented";
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
    static public function readdirnames( _f:stdgo.StdGoTypes.Ref<File>, _n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "File:os.readdirnames is not yet implemented";
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
    static public function readdir( _f:stdgo.StdGoTypes.Ref<File>, _n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<FileInfo>; var _1 : stdgo.Error; } throw "File:os.readdir is not yet implemented";
    @:embedded
    public static function _close( __self__:File):stdgo.Error return __self__._close();
}
class T_fileStat_asInterface {
    @:keep
    public dynamic function sys():stdgo.StdGoTypes.AnyInterface return __self__.value.sys();
    @:keep
    public dynamic function modTime():stdgo.time.Time.Time return __self__.value.modTime();
    @:keep
    public dynamic function mode():FileMode return __self__.value.mode();
    @:keep
    public dynamic function size():stdgo.StdGoTypes.GoInt64 return __self__.value.size();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fileStat>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.T_fileStat_asInterface) class T_fileStat_static_extension {
    @:keep
    static public function sys( _fs:stdgo.StdGoTypes.Ref<T_fileStat>):stdgo.StdGoTypes.AnyInterface throw "T_fileStat:os.sys is not yet implemented";
    @:keep
    static public function modTime( _fs:stdgo.StdGoTypes.Ref<T_fileStat>):stdgo.time.Time.Time throw "T_fileStat:os.modTime is not yet implemented";
    @:keep
    static public function mode( _fs:stdgo.StdGoTypes.Ref<T_fileStat>):FileMode throw "T_fileStat:os.mode is not yet implemented";
    @:keep
    static public function size( _fs:stdgo.StdGoTypes.Ref<T_fileStat>):stdgo.StdGoTypes.GoInt64 throw "T_fileStat:os.size is not yet implemented";
    @:keep
    static public function isDir( _fs:stdgo.StdGoTypes.Ref<T_fileStat>):Bool throw "T_fileStat:os.isDir is not yet implemented";
    @:keep
    static public function name( _fs:stdgo.StdGoTypes.Ref<T_fileStat>):stdgo.GoString throw "T_fileStat:os.name is not yet implemented";
}
class T_dirFS_asInterface {
    /**
        // join returns the path for name in dir.
    **/
    @:keep
    public dynamic function _join(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._join(_name);
    @:keep
    public dynamic function stat(_name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat(_name);
    /**
        // ReadDir reads the named directory, returning all its directory entries sorted
        // by filename. Through this method, dirFS implements [io/fs.ReadDirFS].
    **/
    @:keep
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_name);
    /**
        // The ReadFile method calls the [ReadFile] function for the file
        // with the given name in the directory. The function provides
        // robust handling for small files and special file systems.
        // Through this method, dirFS implements [io/fs.ReadFileFS].
    **/
    @:keep
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.readFile(_name);
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dirFS>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.os.Os.T_dirFS_asInterface) class T_dirFS_static_extension {
    /**
        // join returns the path for name in dir.
    **/
    @:keep
    static public function _join( _dir:T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw "T_dirFS:os._join is not yet implemented";
    @:keep
    static public function stat( _dir:T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } throw "T_dirFS:os.stat is not yet implemented";
    /**
        // ReadDir reads the named directory, returning all its directory entries sorted
        // by filename. Through this method, dirFS implements [io/fs.ReadDirFS].
    **/
    @:keep
    static public function readDir( _dir:T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } throw "T_dirFS:os.readDir is not yet implemented";
    /**
        // The ReadFile method calls the [ReadFile] function for the file
        // with the given name in the directory. The function provides
        // robust handling for small files and special file systems.
        // Through this method, dirFS implements [io/fs.ReadFileFS].
    **/
    @:keep
    static public function readFile( _dir:T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } throw "T_dirFS:os.readFile is not yet implemented";
    @:keep
    static public function open( _dir:T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.File; var _1 : stdgo.Error; } throw "T_dirFS:os.open is not yet implemented";
}
