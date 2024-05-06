package stdgo;
/**
    Package os provides a platform-independent interface to operating system
    functionality. The design is Unix-like, although the error handling is
    Go-like; failing calls return values of type error rather than error numbers.
    Often, more information is available within the error. For example,
    if a call that takes a file name fails, such as Open or Stat, the error
    will include the failing file name when printed and will be of type
    *PathError, which may be unpacked for more information.
    
    The os interface is intended to be uniform across all operating systems.
    Features not generally available appear in the system-specific package syscall.
    
    Here is a simple example, opening a file and reading some of it.
    
    	file, err := os.Open("file.go") // For read access.
    	if err != nil {
    		log.Fatal(err)
    	}
    
    If the open fails, the error string will be self-explanatory, like
    
    	open file.go: no such file or directory
    
    The file's data can then be read into a slice of bytes. Read and
    Write take their byte counts from the length of the argument slice.
    
    	data := make([]byte, 100)
    	count, err := file.Read(data)
    	if err != nil {
    		log.Fatal(err)
    	}
    	fmt.Printf("read %d bytes: %q\n", count, data[:count])
    
    Note: The maximum number of concurrent operations on a File may be limited by
    the OS or the system. The number should be high, but exceeding it may degrade
    performance or cause other issues.
**/
private var __go2hxdoc__package : Bool;
final o_RDONLY : StdTypes.Int = stdgo._internal.os.Os.o_RDONLY;
final o_WRONLY : StdTypes.Int = stdgo._internal.os.Os.o_WRONLY;
final o_RDWR : StdTypes.Int = stdgo._internal.os.Os.o_RDWR;
final o_APPEND : StdTypes.Int = stdgo._internal.os.Os.o_APPEND;
final o_CREATE : StdTypes.Int = stdgo._internal.os.Os.o_CREATE;
final o_EXCL : StdTypes.Int = stdgo._internal.os.Os.o_EXCL;
final o_SYNC : StdTypes.Int = stdgo._internal.os.Os.o_SYNC;
final o_TRUNC : StdTypes.Int = stdgo._internal.os.Os.o_TRUNC;
final seek_SET : StdTypes.Int = stdgo._internal.os.Os.seek_SET;
final seek_CUR : StdTypes.Int = stdgo._internal.os.Os.seek_CUR;
final seek_END : StdTypes.Int = stdgo._internal.os.Os.seek_END;
final devNull : String = stdgo._internal.os.Os.devNull;
final pathSeparator : StdTypes.Int = stdgo._internal.os.Os.pathSeparator;
final pathListSeparator : StdTypes.Int = stdgo._internal.os.Os.pathListSeparator;
var args(get, set) : Array<String>;
private function get_args():Array<String> return stdgo._internal.os.Os.args;
private function set_args(v:Array<String>):Array<String> return stdgo._internal.os.Os.args = v;
final modeDir : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeDir;
final modeAppend : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeAppend;
final modeExclusive : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeExclusive;
final modeTemporary : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeTemporary;
final modeSymlink : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSymlink;
final modeDevice : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeDevice;
final modeNamedPipe : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeNamedPipe;
final modeSocket : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSocket;
final modeSetuid : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSetuid;
final modeSetgid : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSetgid;
final modeCharDevice : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeCharDevice;
final modeSticky : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSticky;
final modeIrregular : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeIrregular;
final modeType : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeType;
final modePerm : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modePerm;
var errInvalid(get, set) : stdgo.Error;
private function get_errInvalid():stdgo.Error return stdgo._internal.os.Os.errInvalid;
private function set_errInvalid(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errInvalid = v;
var errPermission(get, set) : stdgo.Error;
private function get_errPermission():stdgo.Error return stdgo._internal.os.Os.errPermission;
private function set_errPermission(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errPermission = v;
var errExist(get, set) : stdgo.Error;
private function get_errExist():stdgo.Error return stdgo._internal.os.Os.errExist;
private function set_errExist(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errExist = v;
var errNotExist(get, set) : stdgo.Error;
private function get_errNotExist():stdgo.Error return stdgo._internal.os.Os.errNotExist;
private function set_errNotExist(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errNotExist = v;
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.os.Os.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errClosed = v;
var errNoDeadline(get, set) : stdgo.Error;
private function get_errNoDeadline():stdgo.Error return stdgo._internal.os.Os.errNoDeadline;
private function set_errNoDeadline(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errNoDeadline = v;
var errDeadlineExceeded(get, set) : stdgo.Error;
private function get_errDeadlineExceeded():stdgo.Error return stdgo._internal.os.Os.errDeadlineExceeded;
private function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errDeadlineExceeded = v;
var errProcessDone(get, set) : stdgo.Error;
private function get_errProcessDone():stdgo.Error return stdgo._internal.os.Os.errProcessDone;
private function set_errProcessDone(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errProcessDone = v;
var interrupt(get, set) : stdgo._internal.os.Os.Signal;
private function get_interrupt():stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.interrupt;
private function set_interrupt(v:stdgo._internal.os.Os.Signal):stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.interrupt = v;
var kill(get, set) : stdgo._internal.os.Os.Signal;
private function get_kill():stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.kill;
private function set_kill(v:stdgo._internal.os.Os.Signal):stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.kill = v;
var stdin(get, set) : stdgo._internal.os.Os.File;
private function get_stdin():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdin;
private function set_stdin(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdin = v;
var stdout(get, set) : stdgo._internal.os.Os.File;
private function get_stdout():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdout;
private function set_stdout(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdout = v;
var stderr(get, set) : stdgo._internal.os.Os.File;
private function get_stderr():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stderr;
private function set_stderr(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File return stdgo._internal.os.Os.stderr = v;
var atime(get, set) : stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time;
private function get_atime():stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time return stdgo._internal.os.Os.atime;
private function set_atime(v:stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time):stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time return stdgo._internal.os.Os.atime = v;
var lstatP(get, set) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; };
private function get_lstatP():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo._internal.os.Os.lstatP;
private function set_lstatP(v:stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }):stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo._internal.os.Os.lstatP = v;
var errWriteAtInAppendMode(get, set) : stdgo.Error;
private function get_errWriteAtInAppendMode():stdgo.Error return stdgo._internal.os.Os.errWriteAtInAppendMode;
private function set_errWriteAtInAppendMode(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errWriteAtInAppendMode = v;
var testingForceReadDirLstat(get, set) : stdgo.Pointer<Bool>;
private function get_testingForceReadDirLstat():stdgo.Pointer<Bool> return stdgo._internal.os.Os.testingForceReadDirLstat;
private function set_testingForceReadDirLstat(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> return stdgo._internal.os.Os.testingForceReadDirLstat = v;
var errPatternHasSeparator(get, set) : stdgo.Error;
private function get_errPatternHasSeparator():stdgo.Error return stdgo._internal.os.Os.errPatternHasSeparator;
private function set_errPatternHasSeparator(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errPatternHasSeparator = v;
var splitPath(get, set) : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; };
private function get_splitPath():stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return stdgo._internal.os.Os.splitPath;
private function set_splitPath(v:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; }):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return stdgo._internal.os.Os.splitPath = v;
@:forward @:forward.new abstract T_timeout_static_extension(stdgo._internal.os.Os.T_timeout_static_extension) from stdgo._internal.os.Os.T_timeout_static_extension to stdgo._internal.os.Os.T_timeout_static_extension {

}
typedef T_timeout = stdgo._internal.os.Os.T_timeout;
@:forward @:forward.new abstract Signal_static_extension(stdgo._internal.os.Os.Signal_static_extension) from stdgo._internal.os.Os.Signal_static_extension to stdgo._internal.os.Os.Signal_static_extension {

}
typedef Signal = stdgo._internal.os.Os.Signal;
@:forward @:forward.new abstract T_dirInfo(stdgo._internal.os.Os.T_dirInfo) from stdgo._internal.os.Os.T_dirInfo to stdgo._internal.os.Os.T_dirInfo {

}
@:forward @:forward.new abstract SyscallError(stdgo._internal.os.Os.SyscallError) from stdgo._internal.os.Os.SyscallError to stdgo._internal.os.Os.SyscallError {

}
@:forward @:forward.new abstract Process(stdgo._internal.os.Os.Process) from stdgo._internal.os.Os.Process to stdgo._internal.os.Os.Process {

}
@:forward @:forward.new abstract ProcAttr(stdgo._internal.os.Os.ProcAttr) from stdgo._internal.os.Os.ProcAttr to stdgo._internal.os.Os.ProcAttr {

}
@:forward @:forward.new abstract ProcessState(stdgo._internal.os.Os.ProcessState) from stdgo._internal.os.Os.ProcessState to stdgo._internal.os.Os.ProcessState {

}
@:forward @:forward.new abstract LinkError(stdgo._internal.os.Os.LinkError) from stdgo._internal.os.Os.LinkError to stdgo._internal.os.Os.LinkError {

}
@:forward @:forward.new abstract T_fileWithoutReadFrom(stdgo._internal.os.Os.T_fileWithoutReadFrom) from stdgo._internal.os.Os.T_fileWithoutReadFrom to stdgo._internal.os.Os.T_fileWithoutReadFrom {

}
@:forward @:forward.new abstract T_file(stdgo._internal.os.Os.T_file) from stdgo._internal.os.Os.T_file to stdgo._internal.os.Os.T_file {

}
@:forward @:forward.new abstract T_unixDirent(stdgo._internal.os.Os.T_unixDirent) from stdgo._internal.os.Os.T_unixDirent to stdgo._internal.os.Os.T_unixDirent {

}
@:forward @:forward.new abstract T_rawConn(stdgo._internal.os.Os.T_rawConn) from stdgo._internal.os.Os.T_rawConn to stdgo._internal.os.Os.T_rawConn {

}
@:forward @:forward.new abstract File(stdgo._internal.os.Os.File) from stdgo._internal.os.Os.File to stdgo._internal.os.Os.File {

}
@:forward @:forward.new abstract T_fileStat(stdgo._internal.os.Os.T_fileStat) from stdgo._internal.os.Os.T_fileStat to stdgo._internal.os.Os.T_fileStat {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.os.Os.T__struct_0_asInterface) from stdgo._internal.os.Os.T__struct_0_asInterface to stdgo._internal.os.Os.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.os.Os.T__struct_0_static_extension) from stdgo._internal.os.Os.T__struct_0_static_extension to stdgo._internal.os.Os.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.os.Os.T__struct_0;
typedef T_readdirMode = stdgo._internal.os.Os.T_readdirMode;
typedef DirEntry = stdgo._internal.os.Os.DirEntry;
typedef PathError = stdgo._internal.os.Os.PathError;
typedef T_syscallErrorType = stdgo._internal.os.Os.T_syscallErrorType;
typedef T_dirFS = stdgo._internal.os.Os.T_dirFS;
typedef T_newFileKind = stdgo._internal.os.Os.T_newFileKind;
typedef FileInfo = stdgo._internal.os.Os.FileInfo;
typedef FileMode = stdgo._internal.os.Os.FileMode;
/**
    ReadDir reads the named directory,
    returning all its directory entries sorted by filename.
    If an error occurs reading the directory,
    ReadDir returns the entries it was able to read before the error,
    along with the error.
**/
function readDir(name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.readDir(name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
/**
    Expand replaces ${var} or $var in the string based on the mapping function.
    For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
**/
function expand(s:String, mapping:stdgo.GoString -> stdgo.GoString):String {
        final mapping = mapping;
        return stdgo._internal.os.Os.expand(s, mapping);
    }
/**
    ExpandEnv replaces ${var} or $var in the string according to the values
    of the current environment variables. References to undefined
    variables are replaced by the empty string.
**/
function expandEnv(s:String):String {
        return stdgo._internal.os.Os.expandEnv(s);
    }
/**
    Getenv retrieves the value of the environment variable named by the key.
    It returns the value, which will be empty if the variable is not present.
    To distinguish between an empty value and an unset value, use LookupEnv.
**/
function getenv(key:String):String {
        return stdgo._internal.os.Os.getenv(key);
    }
/**
    LookupEnv retrieves the value of the environment variable named
    by the key. If the variable is present in the environment the
    value (which may be empty) is returned and the boolean is true.
    Otherwise the returned value will be empty and the boolean will
    be false.
**/
function lookupEnv(key:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.os.Os.lookupEnv(key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Setenv sets the value of the environment variable named by the key.
    It returns an error, if any.
**/
function setenv(key:String, value:String):stdgo.Error {
        return stdgo._internal.os.Os.setenv(key, value);
    }
/**
    Unsetenv unsets a single environment variable.
**/
function unsetenv(key:String):stdgo.Error {
        return stdgo._internal.os.Os.unsetenv(key);
    }
/**
    Clearenv deletes all environment variables.
**/
function clearenv():Void {
        stdgo._internal.os.Os.clearenv();
    }
/**
    Environ returns a copy of strings representing the environment,
    in the form "key=value".
**/
function environ():Array<String> {
        return [for (i in stdgo._internal.os.Os.environ()) i];
    }
/**
    NewSyscallError returns, as an error, a new SyscallError
    with the given system call name and error details.
    As a convenience, if err is nil, NewSyscallError returns nil.
**/
function newSyscallError(syscall:String, err:stdgo.Error):stdgo.Error {
        return stdgo._internal.os.Os.newSyscallError(syscall, err);
    }
/**
    IsExist returns a boolean indicating whether the error is known to report
    that a file or directory already exists. It is satisfied by ErrExist as
    well as some syscall errors.
    
    This function predates errors.Is. It only supports errors returned by
    the os package. New code should use errors.Is(err, fs.ErrExist).
**/
function isExist(err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isExist(err);
    }
/**
    IsNotExist returns a boolean indicating whether the error is known to
    report that a file or directory does not exist. It is satisfied by
    ErrNotExist as well as some syscall errors.
    
    This function predates errors.Is. It only supports errors returned by
    the os package. New code should use errors.Is(err, fs.ErrNotExist).
**/
function isNotExist(err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isNotExist(err);
    }
/**
    IsPermission returns a boolean indicating whether the error is known to
    report that permission is denied. It is satisfied by ErrPermission as well
    as some syscall errors.
    
    This function predates errors.Is. It only supports errors returned by
    the os package. New code should use errors.Is(err, fs.ErrPermission).
**/
function isPermission(err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isPermission(err);
    }
/**
    IsTimeout returns a boolean indicating whether the error is known
    to report that a timeout occurred.
    
    This function predates errors.Is, and the notion of whether an
    error indicates a timeout can be ambiguous. For example, the Unix
    error EWOULDBLOCK sometimes indicates a timeout and sometimes does not.
    New code should use errors.Is with a value appropriate to the call
    returning the error, such as os.ErrDeadlineExceeded.
**/
function isTimeout(err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isTimeout(err);
    }
/**
    Getpid returns the process id of the caller.
**/
function getpid():StdTypes.Int {
        return stdgo._internal.os.Os.getpid();
    }
/**
    Getppid returns the process id of the caller's parent.
**/
function getppid():StdTypes.Int {
        return stdgo._internal.os.Os.getppid();
    }
/**
    FindProcess looks for a running process by its pid.
    
    The Process it returns can be used to obtain information
    about the underlying operating system process.
    
    On Unix systems, FindProcess always succeeds and returns a Process
    for the given pid, regardless of whether the process exists. To test whether
    the process actually exists, see whether p.Signal(syscall.Signal(0)) reports
    an error.
**/
function findProcess(pid:StdTypes.Int):stdgo.Tuple<Process, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.findProcess(pid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    StartProcess starts a new process with the program, arguments and attributes
    specified by name, argv and attr. The argv slice will become os.Args in the
    new process, so it normally starts with the program name.
    
    If the calling goroutine has locked the operating system thread
    with runtime.LockOSThread and modified any inheritable OS-level
    thread state (for example, Linux or Plan 9 name spaces), the new
    process will inherit the caller's thread state.
    
    StartProcess is a low-level interface. The os/exec package provides
    higher-level interfaces.
    
    If there is an error, it will be of type *PathError.
**/
function startProcess(name:String, argv:Array<String>, attr:ProcAttr):stdgo.Tuple<Process, stdgo.Error> {
        final argv = ([for (i in argv) i] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.os.Os.startProcess(name, argv, attr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Executable returns the path name for the executable that started
    the current process. There is no guarantee that the path is still
    pointing to the correct executable. If a symlink was used to start
    the process, depending on the operating system, the result might
    be the symlink or the path it pointed to. If a stable result is
    needed, path/filepath.EvalSymlinks might help.
    
    Executable returns an absolute path unless an error occurred.
    
    The main use case is finding resources located relative to an
    executable.
**/
function executable():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.executable();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Mkdir creates a new directory with the specified name and permission
    bits (before umask).
    If there is an error, it will be of type *PathError.
**/
function mkdir(name:String, perm:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.mkdir(name, perm);
    }
/**
    Chdir changes the current working directory to the named directory.
    If there is an error, it will be of type *PathError.
**/
function chdir(dir:String):stdgo.Error {
        return stdgo._internal.os.Os.chdir(dir);
    }
/**
    Open opens the named file for reading. If successful, methods on
    the returned file can be used for reading; the associated file
    descriptor has mode O_RDONLY.
    If there is an error, it will be of type *PathError.
**/
function open(name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.open(name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Create creates or truncates the named file. If the file already exists,
    it is truncated. If the file does not exist, it is created with mode 0666
    (before umask). If successful, methods on the returned File can
    be used for I/O; the associated file descriptor has mode O_RDWR.
    If there is an error, it will be of type *PathError.
**/
function create(name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.create(name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    OpenFile is the generalized open call; most users will use Open
    or Create instead. It opens the named file with specified flag
    (O_RDONLY etc.). If the file does not exist, and the O_CREATE flag
    is passed, it is created with mode perm (before umask). If successful,
    methods on the returned File can be used for I/O.
    If there is an error, it will be of type *PathError.
**/
function openFile(name:String, flag:StdTypes.Int, perm:FileMode):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.openFile(name, flag, perm);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Rename renames (moves) oldpath to newpath.
    If newpath already exists and is not a directory, Rename replaces it.
    OS-specific restrictions may apply when oldpath and newpath are in different directories.
    Even within the same directory, on non-Unix platforms Rename is not an atomic operation.
    If there is an error, it will be of type *LinkError.
**/
function rename(oldpath:String, newpath:String):stdgo.Error {
        return stdgo._internal.os.Os.rename(oldpath, newpath);
    }
/**
    TempDir returns the default directory to use for temporary files.
    
    On Unix systems, it returns $TMPDIR if non-empty, else /tmp.
    On Windows, it uses GetTempPath, returning the first non-empty
    value from %TMP%, %TEMP%, %USERPROFILE%, or the Windows directory.
    On Plan 9, it returns /tmp.
    
    The directory is neither guaranteed to exist nor have accessible
    permissions.
**/
function tempDir():String {
        return stdgo._internal.os.Os.tempDir();
    }
/**
    UserCacheDir returns the default root directory to use for user-specific
    cached data. Users should create their own application-specific subdirectory
    within this one and use that.
    
    On Unix systems, it returns $XDG_CACHE_HOME as specified by
    https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
    non-empty, else $HOME/.cache.
    On Darwin, it returns $HOME/Library/Caches.
    On Windows, it returns %LocalAppData%.
    On Plan 9, it returns $home/lib/cache.
    
    If the location cannot be determined (for example, $HOME is not defined),
    then it will return an error.
**/
function userCacheDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.userCacheDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    UserConfigDir returns the default root directory to use for user-specific
    configuration data. Users should create their own application-specific
    subdirectory within this one and use that.
    
    On Unix systems, it returns $XDG_CONFIG_HOME as specified by
    https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
    non-empty, else $HOME/.config.
    On Darwin, it returns $HOME/Library/Application Support.
    On Windows, it returns %AppData%.
    On Plan 9, it returns $home/lib.
    
    If the location cannot be determined (for example, $HOME is not defined),
    then it will return an error.
**/
function userConfigDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.userConfigDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    UserHomeDir returns the current user's home directory.
    
    On Unix, including macOS, it returns the $HOME environment variable.
    On Windows, it returns %USERPROFILE%.
    On Plan 9, it returns the $home environment variable.
    
    If the expected variable is not set in the environment, UserHomeDir
    returns either a platform-specific default value or a non-nil error.
**/
function userHomeDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.userHomeDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Chmod changes the mode of the named file to mode.
    If the file is a symbolic link, it changes the mode of the link's target.
    If there is an error, it will be of type *PathError.
    
    A different subset of the mode bits are used, depending on the
    operating system.
    
    On Unix, the mode's permission bits, ModeSetuid, ModeSetgid, and
    ModeSticky are used.
    
    On Windows, only the 0200 bit (owner writable) of mode is used; it
    controls whether the file's read-only attribute is set or cleared.
    The other bits are currently unused. For compatibility with Go 1.12
    and earlier, use a non-zero mode. Use mode 0400 for a read-only
    file and 0600 for a readable+writable file.
    
    On Plan 9, the mode's permission bits, ModeAppend, ModeExclusive,
    and ModeTemporary are used.
**/
function chmod(name:String, mode:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.chmod(name, mode);
    }
/**
    DirFS returns a file system (an fs.FS) for the tree of files rooted at the directory dir.
    
    Note that DirFS("/prefix") only guarantees that the Open calls it makes to the
    operating system will begin with "/prefix": DirFS("/prefix").Open("file") is the
    same as os.Open("/prefix/file"). So if /prefix/file is a symbolic link pointing outside
    the /prefix tree, then using DirFS does not stop the access any more than using
    os.Open does. Additionally, the root of the fs.FS returned for a relative path,
    DirFS("prefix"), will be affected by later calls to Chdir. DirFS is therefore not
    a general substitute for a chroot-style security mechanism when the directory tree
    contains arbitrary content.
    
    The directory dir must not be "".
    
    The result implements [io/fs.StatFS], [io/fs.ReadFileFS] and
    [io/fs.ReadDirFS].
**/
function dirFS(dir:String):stdgo._internal.io.fs.Fs.FS {
        return stdgo._internal.os.Os.dirFS(dir);
    }
/**
    ReadFile reads the named file and returns the contents.
    A successful call returns err == nil, not err == EOF.
    Because ReadFile reads the whole file, it does not treat an EOF from Read
    as an error to be reported.
**/
function readFile(name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.readFile(name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
/**
    WriteFile writes data to the named file, creating it if necessary.
    If the file does not exist, WriteFile creates it with permissions perm (before umask);
    otherwise WriteFile truncates it before writing, without changing permissions.
    Since WriteFile requires multiple system calls to complete, a failure mid-operation
    can leave the file in a partially written state.
**/
function writeFile(name:String, data:Array<StdTypes.Int>, perm:FileMode):stdgo.Error {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.os.Os.writeFile(name, data, perm);
    }
/**
    Chown changes the numeric uid and gid of the named file.
    If the file is a symbolic link, it changes the uid and gid of the link's target.
    A uid or gid of -1 means to not change that value.
    If there is an error, it will be of type *PathError.
    
    On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
    EPLAN9 error, wrapped in *PathError.
**/
function chown(name:String, uid:StdTypes.Int, gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.os.Os.chown(name, uid, gid);
    }
/**
    Lchown changes the numeric uid and gid of the named file.
    If the file is a symbolic link, it changes the uid and gid of the link itself.
    If there is an error, it will be of type *PathError.
    
    On Windows, it always returns the syscall.EWINDOWS error, wrapped
    in *PathError.
**/
function lchown(name:String, uid:StdTypes.Int, gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.os.Os.lchown(name, uid, gid);
    }
/**
    Chtimes changes the access and modification times of the named
    file, similar to the Unix utime() or utimes() functions.
    A zero time.Time value will leave the corresponding file time unchanged.
    
    The underlying filesystem may truncate or round the values to a
    less precise time unit.
    If there is an error, it will be of type *PathError.
**/
function chtimes(name:String, atime:stdgo._internal.time.Time.Time, mtime:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.chtimes(name, atime, mtime);
    }
/**
    NewFile returns a new File with the given file descriptor and
    name. The returned value will be nil if fd is not a valid file
    descriptor. On Unix systems, if the file descriptor is in
    non-blocking mode, NewFile will attempt to return a pollable File
    (one for which the SetDeadline methods work).
    
    After passing it to NewFile, fd may become invalid under the same
    conditions described in the comments of the Fd method, and the same
    constraints apply.
**/
function newFile(fd:stdgo.GoUIntptr, name:String):File {
        return stdgo._internal.os.Os.newFile(fd, name);
    }
/**
    Truncate changes the size of the named file.
    If the file is a symbolic link, it changes the size of the link's target.
    If there is an error, it will be of type *PathError.
**/
function truncate(name:String, size:haxe.Int64):stdgo.Error {
        return stdgo._internal.os.Os.truncate(name, size);
    }
/**
    Remove removes the named file or (empty) directory.
    If there is an error, it will be of type *PathError.
**/
function remove(name:String):stdgo.Error {
        return stdgo._internal.os.Os.remove(name);
    }
/**
    Link creates newname as a hard link to the oldname file.
    If there is an error, it will be of type *LinkError.
**/
function link(oldname:String, newname:String):stdgo.Error {
        return stdgo._internal.os.Os.link(oldname, newname);
    }
/**
    Symlink creates newname as a symbolic link to oldname.
    On Windows, a symlink to a non-existent oldname creates a file symlink;
    if oldname is later created as a directory the symlink will not work.
    If there is an error, it will be of type *LinkError.
**/
function symlink(oldname:String, newname:String):stdgo.Error {
        return stdgo._internal.os.Os.symlink(oldname, newname);
    }
/**
    Readlink returns the destination of the named symbolic link.
    If there is an error, it will be of type *PathError.
**/
function readlink(name:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.readlink(name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Getwd returns a rooted path name corresponding to the
    current directory. If the current directory can be
    reached via multiple paths (due to symbolic links),
    Getwd may return any one of them.
**/
function getwd():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.getwd();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    MkdirAll creates a directory named path,
    along with any necessary parents, and returns nil,
    or else returns an error.
    The permission bits perm (before umask) are used for all
    directories that MkdirAll creates.
    If path is already a directory, MkdirAll does nothing
    and returns nil.
**/
function mkdirAll(path:String, perm:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.mkdirAll(path, perm);
    }
/**
    RemoveAll removes path and any children it contains.
    It removes everything it can but returns the first error
    it encounters. If the path does not exist, RemoveAll
    returns nil (no error).
    If there is an error, it will be of type *PathError.
**/
function removeAll(path:String):stdgo.Error {
        return stdgo._internal.os.Os.removeAll(path);
    }
/**
    IsPathSeparator reports whether c is a directory separator character.
**/
function isPathSeparator(c:std.UInt):Bool {
        return stdgo._internal.os.Os.isPathSeparator(c);
    }
/**
    Pipe returns a connected pair of Files; reads from r return bytes written to w.
    It returns the files and an error, if any.
**/
function pipe():stdgo.Tuple.Tuple3<File, File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.pipe();
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
/**
    Getuid returns the numeric user id of the caller.
    
    On Windows, it returns -1.
**/
function getuid():StdTypes.Int {
        return stdgo._internal.os.Os.getuid();
    }
/**
    Geteuid returns the numeric effective user id of the caller.
    
    On Windows, it returns -1.
**/
function geteuid():StdTypes.Int {
        return stdgo._internal.os.Os.geteuid();
    }
/**
    Getgid returns the numeric group id of the caller.
    
    On Windows, it returns -1.
**/
function getgid():StdTypes.Int {
        return stdgo._internal.os.Os.getgid();
    }
/**
    Getegid returns the numeric effective group id of the caller.
    
    On Windows, it returns -1.
**/
function getegid():StdTypes.Int {
        return stdgo._internal.os.Os.getegid();
    }
/**
    Getgroups returns a list of the numeric ids of groups that the caller belongs to.
    
    On Windows, it returns syscall.EWINDOWS. See the os/user package
    for a possible alternative.
**/
function getgroups():stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.getgroups();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
/**
    Exit causes the current program to exit with the given status code.
    Conventionally, code zero indicates success, non-zero an error.
    The program terminates immediately; deferred functions are not run.
    
    For portability, the status code should be in the range [0, 125].
**/
function exit(code:StdTypes.Int):Void {
        stdgo._internal.os.Os.exit(code);
    }
/**
    Stat returns a FileInfo describing the named file.
    If there is an error, it will be of type *PathError.
**/
function stat(name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.stat(name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Lstat returns a FileInfo describing the named file.
    If the file is a symbolic link, the returned FileInfo
    describes the symbolic link. Lstat makes no attempt to follow the link.
    If there is an error, it will be of type *PathError.
**/
function lstat(name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.lstat(name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Hostname returns the host name reported by the kernel.
**/
function hostname():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.hostname();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    CreateTemp creates a new temporary file in the directory dir,
    opens the file for reading and writing, and returns the resulting file.
    The filename is generated by taking pattern and adding a random string to the end.
    If pattern includes a "*", the random string replaces the last "*".
    If dir is the empty string, CreateTemp uses the default directory for temporary files, as returned by TempDir.
    Multiple programs or goroutines calling CreateTemp simultaneously will not choose the same file.
    The caller can use the file's Name method to find the pathname of the file.
    It is the caller's responsibility to remove the file when it is no longer needed.
**/
function createTemp(dir:String, pattern:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.createTemp(dir, pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    MkdirTemp creates a new temporary directory in the directory dir
    and returns the pathname of the new directory.
    The new directory's name is generated by adding a random string to the end of pattern.
    If pattern includes a "*", the random string replaces the last "*" instead.
    If dir is the empty string, MkdirTemp uses the default directory for temporary files, as returned by TempDir.
    Multiple programs or goroutines calling MkdirTemp simultaneously will not choose the same directory.
    It is the caller's responsibility to remove the directory when it is no longer needed.
**/
function mkdirTemp(dir:String, pattern:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.mkdirTemp(dir, pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Getpagesize returns the underlying system's memory page size.
**/
function getpagesize():StdTypes.Int {
        return stdgo._internal.os.Os.getpagesize();
    }
/**
    SameFile reports whether fi1 and fi2 describe the same file.
    For example, on Unix this means that the device and inode fields
    of the two underlying structures are identical; on other systems
    the decision may be based on the path names.
    SameFile only applies to results returned by this package's Stat.
    It returns false in other cases.
**/
function sameFile(fi1:FileInfo, fi2:FileInfo):Bool {
        return stdgo._internal.os.Os.sameFile(fi1, fi2);
    }
@:forward @:forward.new abstract T_dirInfo_asInterface(stdgo._internal.os.Os.T_dirInfo_asInterface) from stdgo._internal.os.Os.T_dirInfo_asInterface to stdgo._internal.os.Os.T_dirInfo_asInterface {

}
@:forward @:forward.new abstract T_dirInfo_static_extension(stdgo._internal.os.Os.T_dirInfo_static_extension) from stdgo._internal.os.Os.T_dirInfo_static_extension to stdgo._internal.os.Os.T_dirInfo_static_extension {

}
@:forward @:forward.new abstract SyscallError_asInterface(stdgo._internal.os.Os.SyscallError_asInterface) from stdgo._internal.os.Os.SyscallError_asInterface to stdgo._internal.os.Os.SyscallError_asInterface {

}
@:forward @:forward.new abstract SyscallError_static_extension(stdgo._internal.os.Os.SyscallError_static_extension) from stdgo._internal.os.Os.SyscallError_static_extension to stdgo._internal.os.Os.SyscallError_static_extension {

}
@:forward @:forward.new abstract Process_asInterface(stdgo._internal.os.Os.Process_asInterface) from stdgo._internal.os.Os.Process_asInterface to stdgo._internal.os.Os.Process_asInterface {

}
@:forward @:forward.new abstract Process_static_extension(stdgo._internal.os.Os.Process_static_extension) from stdgo._internal.os.Os.Process_static_extension to stdgo._internal.os.Os.Process_static_extension {

}
@:forward @:forward.new abstract ProcessState_asInterface(stdgo._internal.os.Os.ProcessState_asInterface) from stdgo._internal.os.Os.ProcessState_asInterface to stdgo._internal.os.Os.ProcessState_asInterface {

}
@:forward @:forward.new abstract ProcessState_static_extension(stdgo._internal.os.Os.ProcessState_static_extension) from stdgo._internal.os.Os.ProcessState_static_extension to stdgo._internal.os.Os.ProcessState_static_extension {

}
@:forward @:forward.new abstract LinkError_asInterface(stdgo._internal.os.Os.LinkError_asInterface) from stdgo._internal.os.Os.LinkError_asInterface to stdgo._internal.os.Os.LinkError_asInterface {

}
@:forward @:forward.new abstract LinkError_static_extension(stdgo._internal.os.Os.LinkError_static_extension) from stdgo._internal.os.Os.LinkError_static_extension to stdgo._internal.os.Os.LinkError_static_extension {

}
@:forward @:forward.new abstract T_fileWithoutReadFrom_asInterface(stdgo._internal.os.Os.T_fileWithoutReadFrom_asInterface) from stdgo._internal.os.Os.T_fileWithoutReadFrom_asInterface to stdgo._internal.os.Os.T_fileWithoutReadFrom_asInterface {

}
@:forward @:forward.new abstract T_fileWithoutReadFrom_static_extension(stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension) from stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension to stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension {

}
@:forward @:forward.new abstract T_file_asInterface(stdgo._internal.os.Os.T_file_asInterface) from stdgo._internal.os.Os.T_file_asInterface to stdgo._internal.os.Os.T_file_asInterface {

}
@:forward @:forward.new abstract T_file_static_extension(stdgo._internal.os.Os.T_file_static_extension) from stdgo._internal.os.Os.T_file_static_extension to stdgo._internal.os.Os.T_file_static_extension {

}
@:forward @:forward.new abstract T_unixDirent_asInterface(stdgo._internal.os.Os.T_unixDirent_asInterface) from stdgo._internal.os.Os.T_unixDirent_asInterface to stdgo._internal.os.Os.T_unixDirent_asInterface {

}
@:forward @:forward.new abstract T_unixDirent_static_extension(stdgo._internal.os.Os.T_unixDirent_static_extension) from stdgo._internal.os.Os.T_unixDirent_static_extension to stdgo._internal.os.Os.T_unixDirent_static_extension {

}
@:forward @:forward.new abstract T_rawConn_asInterface(stdgo._internal.os.Os.T_rawConn_asInterface) from stdgo._internal.os.Os.T_rawConn_asInterface to stdgo._internal.os.Os.T_rawConn_asInterface {

}
@:forward @:forward.new abstract T_rawConn_static_extension(stdgo._internal.os.Os.T_rawConn_static_extension) from stdgo._internal.os.Os.T_rawConn_static_extension to stdgo._internal.os.Os.T_rawConn_static_extension {

}
@:forward @:forward.new abstract File_asInterface(stdgo._internal.os.Os.File_asInterface) from stdgo._internal.os.Os.File_asInterface to stdgo._internal.os.Os.File_asInterface {

}
@:forward @:forward.new abstract File_static_extension(stdgo._internal.os.Os.File_static_extension) from stdgo._internal.os.Os.File_static_extension to stdgo._internal.os.Os.File_static_extension {

}
@:forward @:forward.new abstract T_fileStat_asInterface(stdgo._internal.os.Os.T_fileStat_asInterface) from stdgo._internal.os.Os.T_fileStat_asInterface to stdgo._internal.os.Os.T_fileStat_asInterface {

}
@:forward @:forward.new abstract T_fileStat_static_extension(stdgo._internal.os.Os.T_fileStat_static_extension) from stdgo._internal.os.Os.T_fileStat_static_extension to stdgo._internal.os.Os.T_fileStat_static_extension {

}
@:forward @:forward.new abstract T_dirFS_asInterface(stdgo._internal.os.Os.T_dirFS_asInterface) from stdgo._internal.os.Os.T_dirFS_asInterface to stdgo._internal.os.Os.T_dirFS_asInterface {

}
@:forward @:forward.new abstract T_dirFS_static_extension(stdgo._internal.os.Os.T_dirFS_static_extension) from stdgo._internal.os.Os.T_dirFS_static_extension to stdgo._internal.os.Os.T_dirFS_static_extension {

}
