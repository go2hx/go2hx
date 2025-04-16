package stdgo.os;
var o_RDONLY : stdgo.GoInt = (0 : stdgo.GoInt);
var o_WRONLY : stdgo.GoInt = (0 : stdgo.GoInt);
var o_RDWR : stdgo.GoInt = (0 : stdgo.GoInt);
var o_APPEND : stdgo.GoInt = (0 : stdgo.GoInt);
var o_CREATE : stdgo.GoInt = (0 : stdgo.GoInt);
var o_EXCL : stdgo.GoInt = (0 : stdgo.GoInt);
var o_SYNC : stdgo.GoInt = (0 : stdgo.GoInt);
var o_TRUNC : stdgo.GoInt = (0 : stdgo.GoInt);
var sEEK_SET : stdgo.GoInt = (0 : stdgo.GoInt);
var sEEK_CUR : stdgo.GoInt = (0 : stdgo.GoInt);
var sEEK_END : stdgo.GoInt = (0 : stdgo.GoInt);
var devNull : stdgo.GoString = ("" : stdgo.GoString);
var pathSeparator : stdgo.GoInt32 = (0 : stdgo.GoInt32);
var pathListSeparator : stdgo.GoInt32 = (0 : stdgo.GoInt32);
var args(get, set) : stdgo.Slice<stdgo.GoString>;
private function get_args():stdgo.Slice<stdgo.GoString> return stdgo._internal.os.Os_args.args;
private function set_args(v:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        stdgo._internal.os.Os_args.args = v;
        return v;
    }
var modeDir : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeAppend : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeExclusive : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeTemporary : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeSymlink : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeDevice : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeNamedPipe : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeSocket : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeSetuid : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeSetgid : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeCharDevice : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeSticky : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeIrregular : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modeType : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var modePerm : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
var errInvalid(get, set) : stdgo.Error;
private function get_errInvalid():stdgo.Error return stdgo._internal.os.Os_errinvalid.errInvalid;
private function set_errInvalid(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errinvalid.errInvalid = v;
        return v;
    }
var errPermission(get, set) : stdgo.Error;
private function get_errPermission():stdgo.Error return stdgo._internal.os.Os_errpermission.errPermission;
private function set_errPermission(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errpermission.errPermission = v;
        return v;
    }
var errExist(get, set) : stdgo.Error;
private function get_errExist():stdgo.Error return stdgo._internal.os.Os_errexist.errExist;
private function set_errExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errexist.errExist = v;
        return v;
    }
var errNotExist(get, set) : stdgo.Error;
private function get_errNotExist():stdgo.Error return stdgo._internal.os.Os_errnotexist.errNotExist;
private function set_errNotExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errnotexist.errNotExist = v;
        return v;
    }
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.os.Os_errclosed.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errclosed.errClosed = v;
        return v;
    }
var errNoDeadline(get, set) : stdgo.Error;
private function get_errNoDeadline():stdgo.Error return stdgo._internal.os.Os_errnodeadline.errNoDeadline;
private function set_errNoDeadline(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errnodeadline.errNoDeadline = v;
        return v;
    }
var errDeadlineExceeded(get, set) : stdgo.Error;
private function get_errDeadlineExceeded():stdgo.Error return stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded;
private function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded = v;
        return v;
    }
var errProcessDone(get, set) : stdgo.Error;
private function get_errProcessDone():stdgo.Error return stdgo._internal.os.Os_errprocessdone.errProcessDone;
private function set_errProcessDone(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errprocessdone.errProcessDone = v;
        return v;
    }
var interrupt(get, set) : Signal;
private function get_interrupt():Signal return stdgo._internal.os.Os_interrupt.interrupt;
private function set_interrupt(v:Signal):stdgo._internal.os.Os_signal.Signal {
        stdgo._internal.os.Os_interrupt.interrupt = v;
        return v;
    }
var kill(get, set) : Signal;
private function get_kill():Signal return stdgo._internal.os.Os_kill.kill;
private function set_kill(v:Signal):stdgo._internal.os.Os_signal.Signal {
        stdgo._internal.os.Os_kill.kill = v;
        return v;
    }
var stdin(get, set) : stdgo.Ref<stdgo._internal.os.Os_file.File>;
private function get_stdin():stdgo.Ref<stdgo._internal.os.Os_file.File> return stdgo._internal.os.Os_stdin.stdin;
private function set_stdin(v:stdgo.Ref<stdgo._internal.os.Os_file.File>):stdgo.Ref<stdgo._internal.os.Os_file.File> {
        stdgo._internal.os.Os_stdin.stdin = v;
        return v;
    }
var stdout(get, set) : stdgo.Ref<stdgo._internal.os.Os_file.File>;
private function get_stdout():stdgo.Ref<stdgo._internal.os.Os_file.File> return stdgo._internal.os.Os_stdout.stdout;
private function set_stdout(v:stdgo.Ref<stdgo._internal.os.Os_file.File>):stdgo.Ref<stdgo._internal.os.Os_file.File> {
        stdgo._internal.os.Os_stdout.stdout = v;
        return v;
    }
var stderr(get, set) : stdgo.Ref<stdgo._internal.os.Os_file.File>;
private function get_stderr():stdgo.Ref<stdgo._internal.os.Os_file.File> return stdgo._internal.os.Os_stderr.stderr;
private function set_stderr(v:stdgo.Ref<stdgo._internal.os.Os_file.File>):stdgo.Ref<stdgo._internal.os.Os_file.File> {
        stdgo._internal.os.Os_stderr.stderr = v;
        return v;
    }
var atime(get, set) : stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> stdgo._internal.time.Time_time.Time;
private function get_atime():stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> stdgo._internal.time.Time_time.Time return stdgo._internal.os.Os_atime.atime;
private function set_atime(v:stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> stdgo._internal.time.Time_time.Time):stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> stdgo._internal.time.Time_time.Time {
        stdgo._internal.os.Os_atime.atime = v;
        return v;
    }
var lstatP(get, set) : stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; }>;
private function get_lstatP():stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; }> return stdgo._internal.os.Os_lstatp.lstatP;
private function set_lstatP(v:stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; }>):stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; }> {
        stdgo._internal.os.Os_lstatp.lstatP = v;
        return v;
    }
var errWriteAtInAppendMode(get, set) : stdgo.Error;
private function get_errWriteAtInAppendMode():stdgo.Error return stdgo._internal.os.Os_errwriteatinappendmode.errWriteAtInAppendMode;
private function set_errWriteAtInAppendMode(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errwriteatinappendmode.errWriteAtInAppendMode = v;
        return v;
    }
var testingForceReadDirLstat(get, set) : stdgo.Pointer<Bool>;
private function get_testingForceReadDirLstat():stdgo.Pointer<Bool> return stdgo._internal.os.Os_testingforcereaddirlstat.testingForceReadDirLstat;
private function set_testingForceReadDirLstat(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.os.Os_testingforcereaddirlstat.testingForceReadDirLstat = v;
        return v;
    }
var errPatternHasSeparator(get, set) : stdgo.Error;
private function get_errPatternHasSeparator():stdgo.Error return stdgo._internal.os.Os_errpatternhasseparator.errPatternHasSeparator;
private function set_errPatternHasSeparator(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errpatternhasseparator.errPatternHasSeparator = v;
        return v;
    }
var splitPath(get, set) : stdgo.GoString -> stdgo.Tuple<stdgo.GoString, stdgo.GoString>;
private function get_splitPath():stdgo.GoString -> stdgo.Tuple<stdgo.GoString, stdgo.GoString> return stdgo._internal.os.Os_splitpath.splitPath;
private function set_splitPath(v:stdgo.GoString -> stdgo.Tuple<stdgo.GoString, stdgo.GoString>):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        stdgo._internal.os.Os_splitpath.splitPath = v;
        return v;
    }
typedef Signal = stdgo._internal.os.Os_signal.Signal;
typedef SyscallError = stdgo._internal.os.Os_syscallerror.SyscallError;
typedef Process = stdgo._internal.os.Os_process.Process;
typedef ProcAttr = stdgo._internal.os.Os_procattr.ProcAttr;
typedef ProcessState = stdgo._internal.os.Os_processstate.ProcessState;
typedef LinkError = stdgo._internal.os.Os_linkerror.LinkError;
typedef File = stdgo._internal.os.Os_file.File;
typedef DirEntry = stdgo._internal.os.Os_direntry.DirEntry;
typedef PathError = stdgo._internal.os.Os_patherror.PathError;
typedef FileInfo = stdgo._internal.os.Os_fileinfo.FileInfo;
typedef FileMode = stdgo._internal.os.Os_filemode.FileMode;
typedef JsOutput = stdgo._internal.os.Os_jsoutput.JsOutput;
typedef SyscallErrorPointer = stdgo._internal.os.Os_syscallerrorpointer.SyscallErrorPointer;
typedef ProcessPointer = stdgo._internal.os.Os_processpointer.ProcessPointer;
typedef ProcAttrPointer = stdgo._internal.os.Os_procattrpointer.ProcAttrPointer;
typedef ProcessStatePointer = stdgo._internal.os.Os_processstatepointer.ProcessStatePointer;
typedef LinkErrorPointer = stdgo._internal.os.Os_linkerrorpointer.LinkErrorPointer;
typedef FilePointer = stdgo._internal.os.Os_filepointer.FilePointer;
typedef DirEntryPointer = stdgo._internal.os.Os_direntrypointer.DirEntryPointer;
typedef PathErrorPointer = stdgo._internal.os.Os_patherrorpointer.PathErrorPointer;
typedef FileInfoPointer = stdgo._internal.os.Os_fileinfopointer.FileInfoPointer;
typedef FileModePointer = stdgo._internal.os.Os_filemodepointer.FileModePointer;
typedef JsOutputPointer = stdgo._internal.os.Os_jsoutputpointer.JsOutputPointer;
/**
    * Package os provides a platform-independent interface to operating system
    * functionality. The design is Unix-like, although the error handling is
    * Go-like; failing calls return values of type error rather than error numbers.
    * Often, more information is available within the error. For example,
    * if a call that takes a file name fails, such as Open or Stat, the error
    * will include the failing file name when printed and will be of type
    * *PathError, which may be unpacked for more information.
    * 
    * The os interface is intended to be uniform across all operating systems.
    * Features not generally available appear in the system-specific package syscall.
    * 
    * Here is a simple example, opening a file and reading some of it.
    * 
    * 	file, err := os.Open("file.go") // For read access.
    * 	if err != nil {
    * 		log.Fatal(err)
    * 	}
    * 
    * If the open fails, the error string will be self-explanatory, like
    * 
    * 	open file.go: no such file or directory
    * 
    * The file's data can then be read into a slice of bytes. Read and
    * Write take their byte counts from the length of the argument slice.
    * 
    * 	data := make([]byte, 100)
    * 	count, err := file.Read(data)
    * 	if err != nil {
    * 		log.Fatal(err)
    * 	}
    * 	fmt.Printf("read %d bytes: %q\n", count, data[:count])
    * 
    * Note: The maximum number of concurrent operations on a File may be limited by
    * the OS or the system. The number should be high, but exceeding it may degrade
    * performance or cause other issues.
**/
class Os {
    /**
        * ReadDir reads the named directory,
        * returning all its directory entries sorted by filename.
        * If an error occurs reading the directory,
        * ReadDir returns the entries it was able to read before the error,
        * along with the error.
    **/
    static public inline function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return stdgo._internal.os.Os_readdir.readDir(_name);
    /**
        * Expand replaces ${var} or $var in the string based on the mapping function.
        * For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
    **/
    static public inline function expand(_s:stdgo.GoString, _mapping:stdgo.GoString -> stdgo.GoString):stdgo.GoString return stdgo._internal.os.Os_expand.expand(_s, _mapping);
    /**
        * ExpandEnv replaces ${var} or $var in the string according to the values
        * of the current environment variables. References to undefined
        * variables are replaced by the empty string.
    **/
    static public inline function expandEnv(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.os.Os_expandenv.expandEnv(_s);
    /**
        * Getenv retrieves the value of the environment variable named by the key.
        * It returns the value, which will be empty if the variable is not present.
        * To distinguish between an empty value and an unset value, use LookupEnv.
    **/
    static public inline function getenv(_key:stdgo.GoString):stdgo.GoString return stdgo._internal.os.Os_getenv.getenv(_key);
    /**
        * LookupEnv retrieves the value of the environment variable named
        * by the key. If the variable is present in the environment the
        * value (which may be empty) is returned and the boolean is true.
        * Otherwise the returned value will be empty and the boolean will
        * be false.
    **/
    static public inline function lookupEnv(_key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } return stdgo._internal.os.Os_lookupenv.lookupEnv(_key);
    /**
        * Setenv sets the value of the environment variable named by the key.
        * It returns an error, if any.
    **/
    static public inline function setenv(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.Error return stdgo._internal.os.Os_setenv.setenv(_key, _value);
    /**
        * Unsetenv unsets a single environment variable.
    **/
    static public inline function unsetenv(_key:stdgo.GoString):stdgo.Error return stdgo._internal.os.Os_unsetenv.unsetenv(_key);
    /**
        * Clearenv deletes all environment variables.
    **/
    static public inline function clearenv():Void stdgo._internal.os.Os_clearenv.clearenv();
    /**
        * Environ returns a copy of strings representing the environment,
        * in the form "key=value".
    **/
    static public inline function environ_():stdgo.Slice<stdgo.GoString> return stdgo._internal.os.Os_environ_.environ_();
    /**
        * NewSyscallError returns, as an error, a new SyscallError
        * with the given system call name and error details.
        * As a convenience, if err is nil, NewSyscallError returns nil.
    **/
    static public inline function newSyscallError(_syscall:stdgo.GoString, _err:stdgo.Error):stdgo.Error return stdgo._internal.os.Os_newsyscallerror.newSyscallError(_syscall, _err);
    /**
        * IsExist returns a boolean indicating whether the error is known to report
        * that a file or directory already exists. It is satisfied by ErrExist as
        * well as some syscall errors.
        * 
        * This function predates errors.Is. It only supports errors returned by
        * the os package. New code should use errors.Is(err, fs.ErrExist).
    **/
    static public inline function isExist(_err:stdgo.Error):Bool return stdgo._internal.os.Os_isexist.isExist(_err);
    /**
        * IsNotExist returns a boolean indicating whether the error is known to
        * report that a file or directory does not exist. It is satisfied by
        * ErrNotExist as well as some syscall errors.
        * 
        * This function predates errors.Is. It only supports errors returned by
        * the os package. New code should use errors.Is(err, fs.ErrNotExist).
    **/
    static public inline function isNotExist(_err:stdgo.Error):Bool return stdgo._internal.os.Os_isnotexist.isNotExist(_err);
    /**
        * IsPermission returns a boolean indicating whether the error is known to
        * report that permission is denied. It is satisfied by ErrPermission as well
        * as some syscall errors.
        * 
        * This function predates errors.Is. It only supports errors returned by
        * the os package. New code should use errors.Is(err, fs.ErrPermission).
    **/
    static public inline function isPermission(_err:stdgo.Error):Bool return stdgo._internal.os.Os_ispermission.isPermission(_err);
    /**
        * IsTimeout returns a boolean indicating whether the error is known
        * to report that a timeout occurred.
        * 
        * This function predates errors.Is, and the notion of whether an
        * error indicates a timeout can be ambiguous. For example, the Unix
        * error EWOULDBLOCK sometimes indicates a timeout and sometimes does not.
        * New code should use errors.Is with a value appropriate to the call
        * returning the error, such as os.ErrDeadlineExceeded.
    **/
    static public inline function isTimeout(_err:stdgo.Error):Bool return stdgo._internal.os.Os_istimeout.isTimeout(_err);
    /**
        * Getpid returns the process id of the caller.
    **/
    static public inline function getpid():stdgo.GoInt return stdgo._internal.os.Os_getpid.getpid();
    /**
        * Getppid returns the process id of the caller's parent.
    **/
    static public inline function getppid():stdgo.GoInt return stdgo._internal.os.Os_getppid.getppid();
    /**
        * FindProcess looks for a running process by its pid.
        * 
        * The Process it returns can be used to obtain information
        * about the underlying operating system process.
        * 
        * On Unix systems, FindProcess always succeeds and returns a Process
        * for the given pid, regardless of whether the process exists. To test whether
        * the process actually exists, see whether p.Signal(syscall.Signal(0)) reports
        * an error.
    **/
    static public inline function findProcess(_pid:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_process.Process>; var _1 : stdgo.Error; } return stdgo._internal.os.Os_findprocess.findProcess(_pid);
    /**
        * StartProcess starts a new process with the program, arguments and attributes
        * specified by name, argv and attr. The argv slice will become os.Args in the
        * new process, so it normally starts with the program name.
        * 
        * If the calling goroutine has locked the operating system thread
        * with runtime.LockOSThread and modified any inheritable OS-level
        * thread state (for example, Linux or Plan 9 name spaces), the new
        * process will inherit the caller's thread state.
        * 
        * StartProcess is a low-level interface. The os/exec package provides
        * higher-level interfaces.
        * 
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function startProcess(_name:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo._internal.os.Os_procattr.ProcAttr>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_process.Process>; var _1 : stdgo.Error; } return stdgo._internal.os.Os_startprocess.startProcess(_name, _argv, _attr);
    /**
        * Executable returns the path name for the executable that started
        * the current process. There is no guarantee that the path is still
        * pointing to the correct executable. If a symlink was used to start
        * the process, depending on the operating system, the result might
        * be the symlink or the path it pointed to. If a stable result is
        * needed, path/filepath.EvalSymlinks might help.
        * 
        * Executable returns an absolute path unless an error occurred.
        * 
        * The main use case is finding resources located relative to an
        * executable.
    **/
    static public inline function executable():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.os.Os_executable.executable();
    /**
        * Mkdir creates a new directory with the specified name and permission
        * bits (before umask).
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function mkdir(_name:stdgo.GoString, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error return stdgo._internal.os.Os_mkdir.mkdir(_name, _perm);
    /**
        * Chdir changes the current working directory to the named directory.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function chdir(_dir:stdgo.GoString):stdgo.Error return stdgo._internal.os.Os_chdir.chdir(_dir);
    /**
        * Open opens the named file for reading. If successful, methods on
        * the returned file can be used for reading; the associated file
        * descriptor has mode O_RDONLY.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function open(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return stdgo._internal.os.Os_open.open(_name);
    /**
        * Create creates or truncates the named file. If the file already exists,
        * it is truncated. If the file does not exist, it is created with mode 0666
        * (before umask). If successful, methods on the returned File can
        * be used for I/O; the associated file descriptor has mode O_RDWR.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function create(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return stdgo._internal.os.Os_create.create(_name);
    /**
        * OpenFile is the generalized open call; most users will use Open
        * or Create instead. It opens the named file with specified flag
        * (O_RDONLY etc.). If the file does not exist, and the O_CREATE flag
        * is passed, it is created with mode perm (before umask). If successful,
        * methods on the returned File can be used for I/O.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function openFile(_name:stdgo.GoString, _flag:stdgo.GoInt, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return stdgo._internal.os.Os_openfile.openFile(_name, _flag, _perm);
    /**
        * Rename renames (moves) oldpath to newpath.
        * If newpath already exists and is not a directory, Rename replaces it.
        * OS-specific restrictions may apply when oldpath and newpath are in different directories.
        * Even within the same directory, on non-Unix platforms Rename is not an atomic operation.
        * If there is an error, it will be of type *LinkError.
    **/
    static public inline function rename(_oldpath:stdgo.GoString, _newpath:stdgo.GoString):stdgo.Error return stdgo._internal.os.Os_rename.rename(_oldpath, _newpath);
    /**
        * TempDir returns the default directory to use for temporary files.
        * 
        * On Unix systems, it returns $TMPDIR if non-empty, else /tmp.
        * On Windows, it uses GetTempPath, returning the first non-empty
        * value from %TMP%, %TEMP%, %USERPROFILE%, or the Windows directory.
        * On Plan 9, it returns /tmp.
        * 
        * The directory is neither guaranteed to exist nor have accessible
        * permissions.
    **/
    static public inline function tempDir():stdgo.GoString return stdgo._internal.os.Os_tempdir.tempDir();
    /**
        * UserCacheDir returns the default root directory to use for user-specific
        * cached data. Users should create their own application-specific subdirectory
        * within this one and use that.
        * 
        * On Unix systems, it returns $XDG_CACHE_HOME as specified by
        * https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
        * non-empty, else $HOME/.cache.
        * On Darwin, it returns $HOME/Library/Caches.
        * On Windows, it returns %LocalAppData%.
        * On Plan 9, it returns $home/lib/cache.
        * 
        * If the location cannot be determined (for example, $HOME is not defined),
        * then it will return an error.
    **/
    static public inline function userCacheDir():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.os.Os_usercachedir.userCacheDir();
    /**
        * UserConfigDir returns the default root directory to use for user-specific
        * configuration data. Users should create their own application-specific
        * subdirectory within this one and use that.
        * 
        * On Unix systems, it returns $XDG_CONFIG_HOME as specified by
        * https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
        * non-empty, else $HOME/.config.
        * On Darwin, it returns $HOME/Library/Application Support.
        * On Windows, it returns %AppData%.
        * On Plan 9, it returns $home/lib.
        * 
        * If the location cannot be determined (for example, $HOME is not defined),
        * then it will return an error.
    **/
    static public inline function userConfigDir():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.os.Os_userconfigdir.userConfigDir();
    /**
        * UserHomeDir returns the current user's home directory.
        * 
        * On Unix, including macOS, it returns the $HOME environment variable.
        * On Windows, it returns %USERPROFILE%.
        * On Plan 9, it returns the $home environment variable.
        * 
        * If the expected variable is not set in the environment, UserHomeDir
        * returns either a platform-specific default value or a non-nil error.
    **/
    static public inline function userHomeDir():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.os.Os_userhomedir.userHomeDir();
    /**
        * Chmod changes the mode of the named file to mode.
        * If the file is a symbolic link, it changes the mode of the link's target.
        * If there is an error, it will be of type *PathError.
        * 
        * A different subset of the mode bits are used, depending on the
        * operating system.
        * 
        * On Unix, the mode's permission bits, ModeSetuid, ModeSetgid, and
        * ModeSticky are used.
        * 
        * On Windows, only the 0200 bit (owner writable) of mode is used; it
        * controls whether the file's read-only attribute is set or cleared.
        * The other bits are currently unused. For compatibility with Go 1.12
        * and earlier, use a non-zero mode. Use mode 0400 for a read-only
        * file and 0600 for a readable+writable file.
        * 
        * On Plan 9, the mode's permission bits, ModeAppend, ModeExclusive,
        * and ModeTemporary are used.
    **/
    static public inline function chmod(_name:stdgo.GoString, _mode:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error return stdgo._internal.os.Os_chmod.chmod(_name, _mode);
    /**
        * DirFS returns a file system (an fs.FS) for the tree of files rooted at the directory dir.
        * 
        * Note that DirFS("/prefix") only guarantees that the Open calls it makes to the
        * operating system will begin with "/prefix": DirFS("/prefix").Open("file") is the
        * same as os.Open("/prefix/file"). So if /prefix/file is a symbolic link pointing outside
        * the /prefix tree, then using DirFS does not stop the access any more than using
        * os.Open does. Additionally, the root of the fs.FS returned for a relative path,
        * DirFS("prefix"), will be affected by later calls to Chdir. DirFS is therefore not
        * a general substitute for a chroot-style security mechanism when the directory tree
        * contains arbitrary content.
        * 
        * The directory dir must not be "".
        * 
        * The result implements [io/fs.StatFS], [io/fs.ReadFileFS] and
        * [io/fs.ReadDirFS].
    **/
    static public inline function dirFS(_dir:stdgo.GoString):stdgo._internal.io.fs.Fs_fs.FS return stdgo._internal.os.Os_dirfs.dirFS(_dir);
    /**
        * ReadFile reads the named file and returns the contents.
        * A successful call returns err == nil, not err == EOF.
        * Because ReadFile reads the whole file, it does not treat an EOF from Read
        * as an error to be reported.
    **/
    static public inline function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.os.Os_readfile.readFile(_name);
    /**
        * WriteFile writes data to the named file, creating it if necessary.
        * If the file does not exist, WriteFile creates it with permissions perm (before umask);
        * otherwise WriteFile truncates it before writing, without changing permissions.
        * Since WriteFile requires multiple system calls to complete, a failure mid-operation
        * can leave the file in a partially written state.
    **/
    static public inline function writeFile(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error return stdgo._internal.os.Os_writefile.writeFile(_name, _data, _perm);
    /**
        * Chown changes the numeric uid and gid of the named file.
        * If the file is a symbolic link, it changes the uid and gid of the link's target.
        * A uid or gid of -1 means to not change that value.
        * If there is an error, it will be of type *PathError.
        * 
        * On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
        * EPLAN9 error, wrapped in *PathError.
    **/
    static public inline function chown(_name:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return stdgo._internal.os.Os_chown.chown(_name, _uid, _gid);
    /**
        * Lchown changes the numeric uid and gid of the named file.
        * If the file is a symbolic link, it changes the uid and gid of the link itself.
        * If there is an error, it will be of type *PathError.
        * 
        * On Windows, it always returns the syscall.EWINDOWS error, wrapped
        * in *PathError.
    **/
    static public inline function lchown(_name:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return stdgo._internal.os.Os_lchown.lchown(_name, _uid, _gid);
    /**
        * Chtimes changes the access and modification times of the named
        * file, similar to the Unix utime() or utimes() functions.
        * A zero time.Time value will leave the corresponding file time unchanged.
        * 
        * The underlying filesystem may truncate or round the values to a
        * less precise time unit.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function chtimes(_name:stdgo.GoString, _atime:stdgo._internal.time.Time_time.Time, _mtime:stdgo._internal.time.Time_time.Time):stdgo.Error return stdgo._internal.os.Os_chtimes.chtimes(_name, _atime, _mtime);
    /**
        * NewFile returns a new File with the given file descriptor and
        * name. The returned value will be nil if fd is not a valid file
        * descriptor. On Unix systems, if the file descriptor is in
        * non-blocking mode, NewFile will attempt to return a pollable File
        * (one for which the SetDeadline methods work).
        * 
        * After passing it to NewFile, fd may become invalid under the same
        * conditions described in the comments of the Fd method, and the same
        * constraints apply.
    **/
    static public inline function newFile(_fd:stdgo.GoUIntptr, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.os.Os_file.File> return stdgo._internal.os.Os_newfile.newFile(_fd, _name);
    /**
        * Truncate changes the size of the named file.
        * If the file is a symbolic link, it changes the size of the link's target.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function truncate(_name:stdgo.GoString, _size:stdgo.GoInt64):stdgo.Error return stdgo._internal.os.Os_truncate.truncate(_name, _size);
    /**
        * Remove removes the named file or (empty) directory.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function remove(_name:stdgo.GoString):stdgo.Error return stdgo._internal.os.Os_remove.remove(_name);
    /**
        * Link creates newname as a hard link to the oldname file.
        * If there is an error, it will be of type *LinkError.
    **/
    static public inline function link(_oldname:stdgo.GoString, _newname:stdgo.GoString):stdgo.Error return stdgo._internal.os.Os_link.link(_oldname, _newname);
    /**
        * Symlink creates newname as a symbolic link to oldname.
        * On Windows, a symlink to a non-existent oldname creates a file symlink;
        * if oldname is later created as a directory the symlink will not work.
        * If there is an error, it will be of type *LinkError.
    **/
    static public inline function symlink(_oldname:stdgo.GoString, _newname:stdgo.GoString):stdgo.Error return stdgo._internal.os.Os_symlink.symlink(_oldname, _newname);
    /**
        * Readlink returns the destination of the named symbolic link.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function readlink(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.os.Os_readlink.readlink(_name);
    /**
        * Getwd returns a rooted path name corresponding to the
        * current directory. If the current directory can be
        * reached via multiple paths (due to symbolic links),
        * Getwd may return any one of them.
    **/
    static public inline function getwd():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.os.Os_getwd.getwd();
    /**
        * MkdirAll creates a directory named path,
        * along with any necessary parents, and returns nil,
        * or else returns an error.
        * The permission bits perm (before umask) are used for all
        * directories that MkdirAll creates.
        * If path is already a directory, MkdirAll does nothing
        * and returns nil.
    **/
    static public inline function mkdirAll(_path:stdgo.GoString, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error return stdgo._internal.os.Os_mkdirall.mkdirAll(_path, _perm);
    /**
        * RemoveAll removes path and any children it contains.
        * It removes everything it can but returns the first error
        * it encounters. If the path does not exist, RemoveAll
        * returns nil (no error).
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function removeAll(_path:stdgo.GoString):stdgo.Error return stdgo._internal.os.Os_removeall.removeAll(_path);
    /**
        * IsPathSeparator reports whether c is a directory separator character.
    **/
    static public inline function isPathSeparator(_c:stdgo.GoUInt8):Bool return stdgo._internal.os.Os_ispathseparator.isPathSeparator(_c);
    /**
        * Pipe returns a connected pair of Files; reads from r return bytes written to w.
        * It returns the files and an error, if any.
    **/
    static public inline function pipe():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _2 : stdgo.Error; } return stdgo._internal.os.Os_pipe.pipe();
    /**
        * Getuid returns the numeric user id of the caller.
        * 
        * On Windows, it returns -1.
    **/
    static public inline function getuid():stdgo.GoInt return stdgo._internal.os.Os_getuid.getuid();
    /**
        * Geteuid returns the numeric effective user id of the caller.
        * 
        * On Windows, it returns -1.
    **/
    static public inline function geteuid():stdgo.GoInt return stdgo._internal.os.Os_geteuid.geteuid();
    /**
        * Getgid returns the numeric group id of the caller.
        * 
        * On Windows, it returns -1.
    **/
    static public inline function getgid():stdgo.GoInt return stdgo._internal.os.Os_getgid.getgid();
    /**
        * Getegid returns the numeric effective group id of the caller.
        * 
        * On Windows, it returns -1.
    **/
    static public inline function getegid():stdgo.GoInt return stdgo._internal.os.Os_getegid.getegid();
    /**
        * Getgroups returns a list of the numeric ids of groups that the caller belongs to.
        * 
        * On Windows, it returns syscall.EWINDOWS. See the os/user package
        * for a possible alternative.
    **/
    static public inline function getgroups():{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.Error; } return stdgo._internal.os.Os_getgroups.getgroups();
    /**
        * Exit causes the current program to exit with the given status code.
        * Conventionally, code zero indicates success, non-zero an error.
        * The program terminates immediately; deferred functions are not run.
        * 
        * For portability, the status code should be in the range [0, 125].
    **/
    static public inline function exit(_code:stdgo.GoInt):Void stdgo._internal.os.Os_exit.exit(_code);
    /**
        * Stat returns a FileInfo describing the named file.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function stat(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return stdgo._internal.os.Os_stat.stat(_name);
    /**
        * Lstat returns a FileInfo describing the named file.
        * If the file is a symbolic link, the returned FileInfo
        * describes the symbolic link. Lstat makes no attempt to follow the link.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function lstat(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return stdgo._internal.os.Os_lstat.lstat(_name);
    /**
        * Hostname returns the host name reported by the kernel.
    **/
    static public inline function hostname():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.os.Os_hostname.hostname();
    /**
        * CreateTemp creates a new temporary file in the directory dir,
        * opens the file for reading and writing, and returns the resulting file.
        * The filename is generated by taking pattern and adding a random string to the end.
        * If pattern includes a "*", the random string replaces the last "*".
        * If dir is the empty string, CreateTemp uses the default directory for temporary files, as returned by TempDir.
        * Multiple programs or goroutines calling CreateTemp simultaneously will not choose the same file.
        * The caller can use the file's Name method to find the pathname of the file.
        * It is the caller's responsibility to remove the file when it is no longer needed.
    **/
    static public inline function createTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return stdgo._internal.os.Os_createtemp.createTemp(_dir, _pattern);
    /**
        * MkdirTemp creates a new temporary directory in the directory dir
        * and returns the pathname of the new directory.
        * The new directory's name is generated by adding a random string to the end of pattern.
        * If pattern includes a "*", the random string replaces the last "*" instead.
        * If dir is the empty string, MkdirTemp uses the default directory for temporary files, as returned by TempDir.
        * Multiple programs or goroutines calling MkdirTemp simultaneously will not choose the same directory.
        * It is the caller's responsibility to remove the directory when it is no longer needed.
    **/
    static public inline function mkdirTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.os.Os_mkdirtemp.mkdirTemp(_dir, _pattern);
    /**
        * Getpagesize returns the underlying system's memory page size.
    **/
    static public inline function getpagesize():stdgo.GoInt return stdgo._internal.os.Os_getpagesize.getpagesize();
    /**
        * SameFile reports whether fi1 and fi2 describe the same file.
        * For example, on Unix this means that the device and inode fields
        * of the two underlying structures are identical; on other systems
        * the decision may be based on the path names.
        * SameFile only applies to results returned by this package's Stat.
        * It returns false in other cases.
    **/
    static public inline function sameFile(_fi1:stdgo._internal.io.fs.Fs_fileinfo.FileInfo, _fi2:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):Bool return stdgo._internal.os.Os_samefile.sameFile(_fi1, _fi2);
}
