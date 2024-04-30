package stdgo.os;
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
final o_RDONLY : Int = stdgo._internal.os.Os.o_RDONLY;
final o_WRONLY : Int = stdgo._internal.os.Os.o_WRONLY;
final o_RDWR : Int = stdgo._internal.os.Os.o_RDWR;
final o_APPEND : Int = stdgo._internal.os.Os.o_APPEND;
final o_CREATE : Int = stdgo._internal.os.Os.o_CREATE;
final o_EXCL : Int = stdgo._internal.os.Os.o_EXCL;
final o_SYNC : Int = stdgo._internal.os.Os.o_SYNC;
final o_TRUNC : Int = stdgo._internal.os.Os.o_TRUNC;
final seek_SET : Int = stdgo._internal.os.Os.seek_SET;
final seek_CUR : Int = stdgo._internal.os.Os.seek_CUR;
final seek_END : Int = stdgo._internal.os.Os.seek_END;
final devNull : String = stdgo._internal.os.Os.devNull;
final pathSeparator : Int = stdgo._internal.os.Os.pathSeparator;
final pathListSeparator : Int = stdgo._internal.os.Os.pathListSeparator;
var args(get, set) : Array<String>;
function get_args():Array<String> return stdgo._internal.os.Os.args;
function set_args(v:Array<String>):Array<String> return stdgo._internal.os.Os.args = v;
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
function get_errInvalid():stdgo.Error return stdgo._internal.os.Os.errInvalid;
function set_errInvalid(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errInvalid = v;
var errPermission(get, set) : stdgo.Error;
function get_errPermission():stdgo.Error return stdgo._internal.os.Os.errPermission;
function set_errPermission(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errPermission = v;
var errExist(get, set) : stdgo.Error;
function get_errExist():stdgo.Error return stdgo._internal.os.Os.errExist;
function set_errExist(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errExist = v;
var errNotExist(get, set) : stdgo.Error;
function get_errNotExist():stdgo.Error return stdgo._internal.os.Os.errNotExist;
function set_errNotExist(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errNotExist = v;
var errClosed(get, set) : stdgo.Error;
function get_errClosed():stdgo.Error return stdgo._internal.os.Os.errClosed;
function set_errClosed(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errClosed = v;
var errNoDeadline(get, set) : stdgo.Error;
function get_errNoDeadline():stdgo.Error return stdgo._internal.os.Os.errNoDeadline;
function set_errNoDeadline(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errNoDeadline = v;
var errDeadlineExceeded(get, set) : stdgo.Error;
function get_errDeadlineExceeded():stdgo.Error return stdgo._internal.os.Os.errDeadlineExceeded;
function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errDeadlineExceeded = v;
var errProcessDone(get, set) : stdgo.Error;
function get_errProcessDone():stdgo.Error return stdgo._internal.os.Os.errProcessDone;
function set_errProcessDone(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errProcessDone = v;
var interrupt(get, set) : stdgo._internal.os.Os.Signal;
function get_interrupt():stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.interrupt;
function set_interrupt(v:stdgo._internal.os.Os.Signal):stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.interrupt = v;
var kill(get, set) : stdgo._internal.os.Os.Signal;
function get_kill():stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.kill;
function set_kill(v:stdgo._internal.os.Os.Signal):stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.kill = v;
var stdin(get, set) : stdgo._internal.os.Os.File;
function get_stdin():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdin;
function set_stdin(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdin = v;
var stdout(get, set) : stdgo._internal.os.Os.File;
function get_stdout():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdout;
function set_stdout(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdout = v;
var stderr(get, set) : stdgo._internal.os.Os.File;
function get_stderr():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stderr;
function set_stderr(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File return stdgo._internal.os.Os.stderr = v;
var atime(get, set) : stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time;
function get_atime():stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time return stdgo._internal.os.Os.atime;
function set_atime(v:stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time):stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time return stdgo._internal.os.Os.atime = v;
var lstatP(get, set) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; };
function get_lstatP():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo._internal.os.Os.lstatP;
function set_lstatP(v:stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }):stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo._internal.os.Os.lstatP = v;
var errWriteAtInAppendMode(get, set) : stdgo.Error;
function get_errWriteAtInAppendMode():stdgo.Error return stdgo._internal.os.Os.errWriteAtInAppendMode;
function set_errWriteAtInAppendMode(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errWriteAtInAppendMode = v;
var testingForceReadDirLstat(get, set) : stdgo.Pointer<Bool>;
function get_testingForceReadDirLstat():stdgo.Pointer<Bool> return stdgo._internal.os.Os.testingForceReadDirLstat;
function set_testingForceReadDirLstat(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> return stdgo._internal.os.Os.testingForceReadDirLstat = v;
var errPatternHasSeparator(get, set) : stdgo.Error;
function get_errPatternHasSeparator():stdgo.Error return stdgo._internal.os.Os.errPatternHasSeparator;
function set_errPatternHasSeparator(v:stdgo.Error):stdgo.Error return stdgo._internal.os.Os.errPatternHasSeparator = v;
var splitPath(get, set) : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; };
function get_splitPath():stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return stdgo._internal.os.Os.splitPath;
function set_splitPath(v:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; }):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return stdgo._internal.os.Os.splitPath = v;
@:invalid typedef T_timeout_static_extension = Dynamic;
typedef T_timeout = stdgo._internal.os.Os.T_timeout;
@:invalid typedef Signal_static_extension = Dynamic;
typedef Signal = stdgo._internal.os.Os.Signal;
@:invalid typedef T_dirInfo = Dynamic;
@:invalid typedef SyscallError = Dynamic;
@:invalid typedef Process = Dynamic;
@:invalid typedef ProcAttr = Dynamic;
@:invalid typedef ProcessState = Dynamic;
@:invalid typedef LinkError = Dynamic;
@:invalid typedef T_fileWithoutReadFrom = Dynamic;
@:invalid typedef T_file = Dynamic;
@:invalid typedef T_unixDirent = Dynamic;
@:invalid typedef T_rawConn = Dynamic;
@:invalid typedef File = Dynamic;
@:invalid typedef T_fileStat = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
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
inline function readDir(name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> throw "not implemented";
/**
    Expand replaces ${var} or $var in the string based on the mapping function.
    For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
**/
inline function expand(s:String, mapping:stdgo.GoString -> stdgo.GoString):String throw "not implemented";
/**
    ExpandEnv replaces ${var} or $var in the string according to the values
    of the current environment variables. References to undefined
    variables are replaced by the empty string.
**/
inline function expandEnv(s:String):String throw "not implemented";
/**
    Getenv retrieves the value of the environment variable named by the key.
    It returns the value, which will be empty if the variable is not present.
    To distinguish between an empty value and an unset value, use LookupEnv.
**/
inline function getenv(key:String):String throw "not implemented";
/**
    LookupEnv retrieves the value of the environment variable named
    by the key. If the variable is present in the environment the
    value (which may be empty) is returned and the boolean is true.
    Otherwise the returned value will be empty and the boolean will
    be false.
**/
inline function lookupEnv(key:String):stdgo.Tuple<String, Bool> throw "not implemented";
/**
    Setenv sets the value of the environment variable named by the key.
    It returns an error, if any.
**/
inline function setenv(key:String, value:String):stdgo.Error throw "not implemented";
/**
    Unsetenv unsets a single environment variable.
**/
inline function unsetenv(key:String):stdgo.Error throw "not implemented";
/**
    Clearenv deletes all environment variables.
**/
inline function clearenv():Void throw "not implemented";
/**
    Environ returns a copy of strings representing the environment,
    in the form "key=value".
**/
inline function environ():Array<String> throw "not implemented";
/**
    NewSyscallError returns, as an error, a new SyscallError
    with the given system call name and error details.
    As a convenience, if err is nil, NewSyscallError returns nil.
**/
inline function newSyscallError(syscall:String, err:stdgo.Error):stdgo.Error throw "not implemented";
/**
    IsExist returns a boolean indicating whether the error is known to report
    that a file or directory already exists. It is satisfied by ErrExist as
    well as some syscall errors.
    
    This function predates errors.Is. It only supports errors returned by
    the os package. New code should use errors.Is(err, fs.ErrExist).
**/
inline function isExist(err:stdgo.Error):Bool throw "not implemented";
/**
    IsNotExist returns a boolean indicating whether the error is known to
    report that a file or directory does not exist. It is satisfied by
    ErrNotExist as well as some syscall errors.
    
    This function predates errors.Is. It only supports errors returned by
    the os package. New code should use errors.Is(err, fs.ErrNotExist).
**/
inline function isNotExist(err:stdgo.Error):Bool throw "not implemented";
/**
    IsPermission returns a boolean indicating whether the error is known to
    report that permission is denied. It is satisfied by ErrPermission as well
    as some syscall errors.
    
    This function predates errors.Is. It only supports errors returned by
    the os package. New code should use errors.Is(err, fs.ErrPermission).
**/
inline function isPermission(err:stdgo.Error):Bool throw "not implemented";
/**
    IsTimeout returns a boolean indicating whether the error is known
    to report that a timeout occurred.
    
    This function predates errors.Is, and the notion of whether an
    error indicates a timeout can be ambiguous. For example, the Unix
    error EWOULDBLOCK sometimes indicates a timeout and sometimes does not.
    New code should use errors.Is with a value appropriate to the call
    returning the error, such as os.ErrDeadlineExceeded.
**/
inline function isTimeout(err:stdgo.Error):Bool throw "not implemented";
/**
    Getpid returns the process id of the caller.
**/
inline function getpid():Int throw "not implemented";
/**
    Getppid returns the process id of the caller's parent.
**/
inline function getppid():Int throw "not implemented";
/**
    FindProcess looks for a running process by its pid.
    
    The Process it returns can be used to obtain information
    about the underlying operating system process.
    
    On Unix systems, FindProcess always succeeds and returns a Process
    for the given pid, regardless of whether the process exists. To test whether
    the process actually exists, see whether p.Signal(syscall.Signal(0)) reports
    an error.
**/
inline function findProcess(pid:Int):stdgo.Tuple<Process, stdgo.Error> throw "not implemented";
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
inline function startProcess(name:String, argv:Array<String>, attr:ProcAttr):stdgo.Tuple<Process, stdgo.Error> throw "not implemented";
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
inline function executable():stdgo.Tuple<String, stdgo.Error> throw "not implemented";
/**
    Mkdir creates a new directory with the specified name and permission
    bits (before umask).
    If there is an error, it will be of type *PathError.
**/
inline function mkdir(name:String, perm:FileMode):stdgo.Error throw "not implemented";
/**
    Chdir changes the current working directory to the named directory.
    If there is an error, it will be of type *PathError.
**/
inline function chdir(dir:String):stdgo.Error throw "not implemented";
/**
    Open opens the named file for reading. If successful, methods on
    the returned file can be used for reading; the associated file
    descriptor has mode O_RDONLY.
    If there is an error, it will be of type *PathError.
**/
inline function open(name:String):stdgo.Tuple<File, stdgo.Error> throw "not implemented";
/**
    Create creates or truncates the named file. If the file already exists,
    it is truncated. If the file does not exist, it is created with mode 0666
    (before umask). If successful, methods on the returned File can
    be used for I/O; the associated file descriptor has mode O_RDWR.
    If there is an error, it will be of type *PathError.
**/
inline function create(name:String):stdgo.Tuple<File, stdgo.Error> throw "not implemented";
/**
    OpenFile is the generalized open call; most users will use Open
    or Create instead. It opens the named file with specified flag
    (O_RDONLY etc.). If the file does not exist, and the O_CREATE flag
    is passed, it is created with mode perm (before umask). If successful,
    methods on the returned File can be used for I/O.
    If there is an error, it will be of type *PathError.
**/
inline function openFile(name:String, flag:Int, perm:FileMode):stdgo.Tuple<File, stdgo.Error> throw "not implemented";
/**
    Rename renames (moves) oldpath to newpath.
    If newpath already exists and is not a directory, Rename replaces it.
    OS-specific restrictions may apply when oldpath and newpath are in different directories.
    Even within the same directory, on non-Unix platforms Rename is not an atomic operation.
    If there is an error, it will be of type *LinkError.
**/
inline function rename(oldpath:String, newpath:String):stdgo.Error throw "not implemented";
/**
    TempDir returns the default directory to use for temporary files.
    
    On Unix systems, it returns $TMPDIR if non-empty, else /tmp.
    On Windows, it uses GetTempPath, returning the first non-empty
    value from %TMP%, %TEMP%, %USERPROFILE%, or the Windows directory.
    On Plan 9, it returns /tmp.
    
    The directory is neither guaranteed to exist nor have accessible
    permissions.
**/
inline function tempDir():String throw "not implemented";
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
inline function userCacheDir():stdgo.Tuple<String, stdgo.Error> throw "not implemented";
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
inline function userConfigDir():stdgo.Tuple<String, stdgo.Error> throw "not implemented";
/**
    UserHomeDir returns the current user's home directory.
    
    On Unix, including macOS, it returns the $HOME environment variable.
    On Windows, it returns %USERPROFILE%.
    On Plan 9, it returns the $home environment variable.
    
    If the expected variable is not set in the environment, UserHomeDir
    returns either a platform-specific default value or a non-nil error.
**/
inline function userHomeDir():stdgo.Tuple<String, stdgo.Error> throw "not implemented";
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
inline function chmod(name:String, mode:FileMode):stdgo.Error throw "not implemented";
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
inline function dirFS(dir:String):stdgo._internal.io.fs.Fs.FS throw "not implemented";
/**
    ReadFile reads the named file and returns the contents.
    A successful call returns err == nil, not err == EOF.
    Because ReadFile reads the whole file, it does not treat an EOF from Read
    as an error to be reported.
**/
inline function readFile(name:String):stdgo.Tuple<Array<Int>, stdgo.Error> throw "not implemented";
/**
    WriteFile writes data to the named file, creating it if necessary.
    If the file does not exist, WriteFile creates it with permissions perm (before umask);
    otherwise WriteFile truncates it before writing, without changing permissions.
    Since WriteFile requires multiple system calls to complete, a failure mid-operation
    can leave the file in a partially written state.
**/
inline function writeFile(name:String, data:Array<Int>, perm:FileMode):stdgo.Error throw "not implemented";
/**
    Chown changes the numeric uid and gid of the named file.
    If the file is a symbolic link, it changes the uid and gid of the link's target.
    A uid or gid of -1 means to not change that value.
    If there is an error, it will be of type *PathError.
    
    On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
    EPLAN9 error, wrapped in *PathError.
**/
inline function chown(name:String, uid:Int, gid:Int):stdgo.Error throw "not implemented";
/**
    Lchown changes the numeric uid and gid of the named file.
    If the file is a symbolic link, it changes the uid and gid of the link itself.
    If there is an error, it will be of type *PathError.
    
    On Windows, it always returns the syscall.EWINDOWS error, wrapped
    in *PathError.
**/
inline function lchown(name:String, uid:Int, gid:Int):stdgo.Error throw "not implemented";
/**
    Chtimes changes the access and modification times of the named
    file, similar to the Unix utime() or utimes() functions.
    A zero time.Time value will leave the corresponding file time unchanged.
    
    The underlying filesystem may truncate or round the values to a
    less precise time unit.
    If there is an error, it will be of type *PathError.
**/
inline function chtimes(name:String, atime:stdgo._internal.time.Time.Time, mtime:stdgo._internal.time.Time.Time):stdgo.Error throw "not implemented";
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
inline function newFile(fd:stdgo.GoUIntptr, name:String):File throw "not implemented";
/**
    Truncate changes the size of the named file.
    If the file is a symbolic link, it changes the size of the link's target.
    If there is an error, it will be of type *PathError.
**/
inline function truncate(name:String, size:haxe.Int64):stdgo.Error throw "not implemented";
/**
    Remove removes the named file or (empty) directory.
    If there is an error, it will be of type *PathError.
**/
inline function remove(name:String):stdgo.Error throw "not implemented";
/**
    Link creates newname as a hard link to the oldname file.
    If there is an error, it will be of type *LinkError.
**/
inline function link(oldname:String, newname:String):stdgo.Error throw "not implemented";
/**
    Symlink creates newname as a symbolic link to oldname.
    On Windows, a symlink to a non-existent oldname creates a file symlink;
    if oldname is later created as a directory the symlink will not work.
    If there is an error, it will be of type *LinkError.
**/
inline function symlink(oldname:String, newname:String):stdgo.Error throw "not implemented";
/**
    Readlink returns the destination of the named symbolic link.
    If there is an error, it will be of type *PathError.
**/
inline function readlink(name:String):stdgo.Tuple<String, stdgo.Error> throw "not implemented";
/**
    Getwd returns a rooted path name corresponding to the
    current directory. If the current directory can be
    reached via multiple paths (due to symbolic links),
    Getwd may return any one of them.
**/
inline function getwd():stdgo.Tuple<String, stdgo.Error> throw "not implemented";
/**
    MkdirAll creates a directory named path,
    along with any necessary parents, and returns nil,
    or else returns an error.
    The permission bits perm (before umask) are used for all
    directories that MkdirAll creates.
    If path is already a directory, MkdirAll does nothing
    and returns nil.
**/
inline function mkdirAll(path:String, perm:FileMode):stdgo.Error throw "not implemented";
/**
    RemoveAll removes path and any children it contains.
    It removes everything it can but returns the first error
    it encounters. If the path does not exist, RemoveAll
    returns nil (no error).
    If there is an error, it will be of type *PathError.
**/
inline function removeAll(path:String):stdgo.Error throw "not implemented";
/**
    IsPathSeparator reports whether c is a directory separator character.
**/
inline function isPathSeparator(c:UInt):Bool throw "not implemented";
/**
    Pipe returns a connected pair of Files; reads from r return bytes written to w.
    It returns the files and an error, if any.
**/
inline function pipe():stdgo.Tuple.Tuple3<File, File, stdgo.Error> throw "not implemented";
/**
    Getuid returns the numeric user id of the caller.
    
    On Windows, it returns -1.
**/
inline function getuid():Int throw "not implemented";
/**
    Geteuid returns the numeric effective user id of the caller.
    
    On Windows, it returns -1.
**/
inline function geteuid():Int throw "not implemented";
/**
    Getgid returns the numeric group id of the caller.
    
    On Windows, it returns -1.
**/
inline function getgid():Int throw "not implemented";
/**
    Getegid returns the numeric effective group id of the caller.
    
    On Windows, it returns -1.
**/
inline function getegid():Int throw "not implemented";
/**
    Getgroups returns a list of the numeric ids of groups that the caller belongs to.
    
    On Windows, it returns syscall.EWINDOWS. See the os/user package
    for a possible alternative.
**/
inline function getgroups():stdgo.Tuple<Array<Int>, stdgo.Error> throw "not implemented";
/**
    Exit causes the current program to exit with the given status code.
    Conventionally, code zero indicates success, non-zero an error.
    The program terminates immediately; deferred functions are not run.
    
    For portability, the status code should be in the range [0, 125].
**/
inline function exit(code:Int):Void throw "not implemented";
/**
    Stat returns a FileInfo describing the named file.
    If there is an error, it will be of type *PathError.
**/
inline function stat(name:String):stdgo.Tuple<FileInfo, stdgo.Error> throw "not implemented";
/**
    Lstat returns a FileInfo describing the named file.
    If the file is a symbolic link, the returned FileInfo
    describes the symbolic link. Lstat makes no attempt to follow the link.
    If there is an error, it will be of type *PathError.
**/
inline function lstat(name:String):stdgo.Tuple<FileInfo, stdgo.Error> throw "not implemented";
/**
    Hostname returns the host name reported by the kernel.
**/
inline function hostname():stdgo.Tuple<String, stdgo.Error> throw "not implemented";
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
inline function createTemp(dir:String, pattern:String):stdgo.Tuple<File, stdgo.Error> throw "not implemented";
/**
    MkdirTemp creates a new temporary directory in the directory dir
    and returns the pathname of the new directory.
    The new directory's name is generated by adding a random string to the end of pattern.
    If pattern includes a "*", the random string replaces the last "*" instead.
    If dir is the empty string, MkdirTemp uses the default directory for temporary files, as returned by TempDir.
    Multiple programs or goroutines calling MkdirTemp simultaneously will not choose the same directory.
    It is the caller's responsibility to remove the directory when it is no longer needed.
**/
inline function mkdirTemp(dir:String, pattern:String):stdgo.Tuple<String, stdgo.Error> throw "not implemented";
/**
    Getpagesize returns the underlying system's memory page size.
**/
inline function getpagesize():Int throw "not implemented";
/**
    SameFile reports whether fi1 and fi2 describe the same file.
    For example, on Unix this means that the device and inode fields
    of the two underlying structures are identical; on other systems
    the decision may be based on the path names.
    SameFile only applies to results returned by this package's Stat.
    It returns false in other cases.
**/
inline function sameFile(fi1:FileInfo, fi2:FileInfo):Bool throw "not implemented";
@:invalid typedef T_dirInfo_asInterface = Dynamic;
@:invalid typedef T_dirInfo_static_extension = Dynamic;
@:invalid typedef SyscallError_asInterface = Dynamic;
@:invalid typedef SyscallError_static_extension = Dynamic;
@:invalid typedef Process_asInterface = Dynamic;
@:invalid typedef Process_static_extension = Dynamic;
@:invalid typedef ProcessState_asInterface = Dynamic;
@:invalid typedef ProcessState_static_extension = Dynamic;
@:invalid typedef LinkError_asInterface = Dynamic;
@:invalid typedef LinkError_static_extension = Dynamic;
@:invalid typedef T_fileWithoutReadFrom_asInterface = Dynamic;
@:invalid typedef T_fileWithoutReadFrom_static_extension = Dynamic;
@:invalid typedef T_file_asInterface = Dynamic;
@:invalid typedef T_file_static_extension = Dynamic;
@:invalid typedef T_unixDirent_asInterface = Dynamic;
@:invalid typedef T_unixDirent_static_extension = Dynamic;
@:invalid typedef T_rawConn_asInterface = Dynamic;
@:invalid typedef T_rawConn_static_extension = Dynamic;
@:invalid typedef File_asInterface = Dynamic;
@:invalid typedef File_static_extension = Dynamic;
@:invalid typedef T_fileStat_asInterface = Dynamic;
@:invalid typedef T_fileStat_static_extension = Dynamic;
@:invalid typedef T_dirFS_asInterface = Dynamic;
@:invalid typedef T_dirFS_static_extension = Dynamic;
