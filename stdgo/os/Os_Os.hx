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
class Os {
    /**
        ReadDir reads the named directory,
        returning all its directory entries sorted by filename.
        If an error occurs reading the directory,
        ReadDir returns the entries it was able to read before the error,
        along with the error.
    **/
    static public inline function readDir(_name:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_readDir.readDir(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Expand replaces ${var} or $var in the string based on the mapping function.
        For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
    **/
    static public inline function expand(_s:String, _mapping:stdgo.GoString -> stdgo.GoString):String {
        final _s = (_s : stdgo.GoString);
        final _mapping = _mapping;
        return stdgo._internal.os.Os_expand.expand(_s, _mapping);
    }
    /**
        ExpandEnv replaces ${var} or $var in the string according to the values
        of the current environment variables. References to undefined
        variables are replaced by the empty string.
    **/
    static public inline function expandEnv(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.os.Os_expandEnv.expandEnv(_s);
    }
    /**
        Getenv retrieves the value of the environment variable named by the key.
        It returns the value, which will be empty if the variable is not present.
        To distinguish between an empty value and an unset value, use LookupEnv.
    **/
    static public inline function getenv(_key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.os.Os_getenv.getenv(_key);
    }
    /**
        LookupEnv retrieves the value of the environment variable named
        by the key. If the variable is present in the environment the
        value (which may be empty) is returned and the boolean is true.
        Otherwise the returned value will be empty and the boolean will
        be false.
    **/
    static public inline function lookupEnv(_key:String):stdgo.Tuple<String, Bool> {
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_lookupEnv.lookupEnv(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Setenv sets the value of the environment variable named by the key.
        It returns an error, if any.
    **/
    static public inline function setenv(_key:String, _value:String):stdgo.Error {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.os.Os_setenv.setenv(_key, _value);
    }
    /**
        Unsetenv unsets a single environment variable.
    **/
    static public inline function unsetenv(_key:String):stdgo.Error {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.os.Os_unsetenv.unsetenv(_key);
    }
    /**
        Clearenv deletes all environment variables.
    **/
    static public inline function clearenv():Void {
        stdgo._internal.os.Os_clearenv.clearenv();
    }
    /**
        Environ returns a copy of strings representing the environment,
        in the form "key=value".
    **/
    static public inline function environ_():Array<String> {
        return [for (i in stdgo._internal.os.Os_environ_.environ_()) i];
    }
    /**
        NewSyscallError returns, as an error, a new SyscallError
        with the given system call name and error details.
        As a convenience, if err is nil, NewSyscallError returns nil.
    **/
    static public inline function newSyscallError(_syscall:String, _err:stdgo.Error):stdgo.Error {
        final _syscall = (_syscall : stdgo.GoString);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_newSyscallError.newSyscallError(_syscall, _err);
    }
    /**
        IsExist returns a boolean indicating whether the error is known to report
        that a file or directory already exists. It is satisfied by ErrExist as
        well as some syscall errors.
        
        This function predates errors.Is. It only supports errors returned by
        the os package. New code should use errors.Is(err, fs.ErrExist).
    **/
    static public inline function isExist(_err:stdgo.Error):Bool {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_isExist.isExist(_err);
    }
    /**
        IsNotExist returns a boolean indicating whether the error is known to
        report that a file or directory does not exist. It is satisfied by
        ErrNotExist as well as some syscall errors.
        
        This function predates errors.Is. It only supports errors returned by
        the os package. New code should use errors.Is(err, fs.ErrNotExist).
    **/
    static public inline function isNotExist(_err:stdgo.Error):Bool {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_isNotExist.isNotExist(_err);
    }
    /**
        IsPermission returns a boolean indicating whether the error is known to
        report that permission is denied. It is satisfied by ErrPermission as well
        as some syscall errors.
        
        This function predates errors.Is. It only supports errors returned by
        the os package. New code should use errors.Is(err, fs.ErrPermission).
    **/
    static public inline function isPermission(_err:stdgo.Error):Bool {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_isPermission.isPermission(_err);
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
    static public inline function isTimeout(_err:stdgo.Error):Bool {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_isTimeout.isTimeout(_err);
    }
    /**
        Getpid returns the process id of the caller.
    **/
    static public inline function getpid():StdTypes.Int {
        return stdgo._internal.os.Os_getpid.getpid();
    }
    /**
        Getppid returns the process id of the caller's parent.
    **/
    static public inline function getppid():StdTypes.Int {
        return stdgo._internal.os.Os_getppid.getppid();
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
    static public inline function findProcess(_pid:StdTypes.Int):stdgo.Tuple<Process, stdgo.Error> {
        final _pid = (_pid : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_findProcess.findProcess(_pid);
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
    static public inline function startProcess(_name:String, _argv:Array<String>, _attr:ProcAttr):stdgo.Tuple<Process, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        final _argv = ([for (i in _argv) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _attr = (_attr : stdgo.Ref<stdgo._internal.os.Os_ProcAttr.ProcAttr>);
        return {
            final obj = stdgo._internal.os.Os_startProcess.startProcess(_name, _argv, _attr);
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
    static public inline function executable():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_executable.executable();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Mkdir creates a new directory with the specified name and permission
        bits (before umask).
        If there is an error, it will be of type *PathError.
    **/
    static public inline function mkdir(_name:String, _perm:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.Os_mkdir.mkdir(_name, _perm);
    }
    /**
        Chdir changes the current working directory to the named directory.
        If there is an error, it will be of type *PathError.
    **/
    static public inline function chdir(_dir:String):stdgo.Error {
        final _dir = (_dir : stdgo.GoString);
        return stdgo._internal.os.Os_chdir.chdir(_dir);
    }
    /**
        Open opens the named file for reading. If successful, methods on
        the returned file can be used for reading; the associated file
        descriptor has mode O_RDONLY.
        If there is an error, it will be of type *PathError.
    **/
    static public inline function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_open.open(_name);
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
    static public inline function create(_name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_create.create(_name);
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
    static public inline function openFile(_name:String, _flag:StdTypes.Int, _perm:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        final _flag = (_flag : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_openFile.openFile(_name, _flag, _perm);
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
    static public inline function rename(_oldpath:String, _newpath:String):stdgo.Error {
        final _oldpath = (_oldpath : stdgo.GoString);
        final _newpath = (_newpath : stdgo.GoString);
        return stdgo._internal.os.Os_rename.rename(_oldpath, _newpath);
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
    static public inline function tempDir():String {
        return stdgo._internal.os.Os_tempDir.tempDir();
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
    static public inline function userCacheDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_userCacheDir.userCacheDir();
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
    static public inline function userConfigDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_userConfigDir.userConfigDir();
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
    static public inline function userHomeDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_userHomeDir.userHomeDir();
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
    static public inline function chmod(_name:String, _mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.Os_chmod.chmod(_name, _mode);
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
    static public inline function dirFS(_dir:String):stdgo._internal.io.fs.Fs_FS.FS {
        final _dir = (_dir : stdgo.GoString);
        return stdgo._internal.os.Os_dirFS.dirFS(_dir);
    }
    /**
        ReadFile reads the named file and returns the contents.
        A successful call returns err == nil, not err == EOF.
        Because ReadFile reads the whole file, it does not treat an EOF from Read
        as an error to be reported.
    **/
    static public inline function readFile(_name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_readFile.readFile(_name);
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
    static public inline function writeFile(_name:String, _data:Array<std.UInt>, _perm:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.os.Os_writeFile.writeFile(_name, _data, _perm);
    }
    /**
        Chown changes the numeric uid and gid of the named file.
        If the file is a symbolic link, it changes the uid and gid of the link's target.
        A uid or gid of -1 means to not change that value.
        If there is an error, it will be of type *PathError.
        
        On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
        EPLAN9 error, wrapped in *PathError.
    **/
    static public inline function chown(_name:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.os.Os_chown.chown(_name, _uid, _gid);
    }
    /**
        Lchown changes the numeric uid and gid of the named file.
        If the file is a symbolic link, it changes the uid and gid of the link itself.
        If there is an error, it will be of type *PathError.
        
        On Windows, it always returns the syscall.EWINDOWS error, wrapped
        in *PathError.
    **/
    static public inline function lchown(_name:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.os.Os_lchown.lchown(_name, _uid, _gid);
    }
    /**
        Chtimes changes the access and modification times of the named
        file, similar to the Unix utime() or utimes() functions.
        A zero time.Time value will leave the corresponding file time unchanged.
        
        The underlying filesystem may truncate or round the values to a
        less precise time unit.
        If there is an error, it will be of type *PathError.
    **/
    static public inline function chtimes(_name:String, _atime:stdgo._internal.time.Time_Time.Time, _mtime:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.Os_chtimes.chtimes(_name, _atime, _mtime);
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
    static public inline function newFile(_fd:stdgo.GoUIntptr, _name:String):File {
        final _fd = (_fd : stdgo.GoUIntptr);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.Os_newFile.newFile(_fd, _name);
    }
    /**
        Truncate changes the size of the named file.
        If the file is a symbolic link, it changes the size of the link's target.
        If there is an error, it will be of type *PathError.
    **/
    static public inline function truncate(_name:String, _size:haxe.Int64):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _size = (_size : stdgo.GoInt64);
        return stdgo._internal.os.Os_truncate.truncate(_name, _size);
    }
    /**
        Remove removes the named file or (empty) directory.
        If there is an error, it will be of type *PathError.
    **/
    static public inline function remove(_name:String):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.Os_remove.remove(_name);
    }
    /**
        Link creates newname as a hard link to the oldname file.
        If there is an error, it will be of type *LinkError.
    **/
    static public inline function link(_oldname:String, _newname:String):stdgo.Error {
        final _oldname = (_oldname : stdgo.GoString);
        final _newname = (_newname : stdgo.GoString);
        return stdgo._internal.os.Os_link.link(_oldname, _newname);
    }
    /**
        Symlink creates newname as a symbolic link to oldname.
        On Windows, a symlink to a non-existent oldname creates a file symlink;
        if oldname is later created as a directory the symlink will not work.
        If there is an error, it will be of type *LinkError.
    **/
    static public inline function symlink(_oldname:String, _newname:String):stdgo.Error {
        final _oldname = (_oldname : stdgo.GoString);
        final _newname = (_newname : stdgo.GoString);
        return stdgo._internal.os.Os_symlink.symlink(_oldname, _newname);
    }
    /**
        Readlink returns the destination of the named symbolic link.
        If there is an error, it will be of type *PathError.
    **/
    static public inline function readlink(_name:String):stdgo.Tuple<String, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_readlink.readlink(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Getwd returns a rooted path name corresponding to the
        current directory. If the current directory can be
        reached via multiple paths (due to symbolic links),
        Getwd may return any one of them.
    **/
    static public inline function getwd():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_getwd.getwd();
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
    static public inline function mkdirAll(_path:String, _perm:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.os.Os_mkdirAll.mkdirAll(_path, _perm);
    }
    /**
        RemoveAll removes path and any children it contains.
        It removes everything it can but returns the first error
        it encounters. If the path does not exist, RemoveAll
        returns nil (no error).
        If there is an error, it will be of type *PathError.
    **/
    static public inline function removeAll(_path:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.os.Os_removeAll.removeAll(_path);
    }
    /**
        IsPathSeparator reports whether c is a directory separator character.
    **/
    static public inline function isPathSeparator(_c:std.UInt):Bool {
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.os.Os_isPathSeparator.isPathSeparator(_c);
    }
    /**
        Pipe returns a connected pair of Files; reads from r return bytes written to w.
        It returns the files and an error, if any.
    **/
    static public inline function pipe():stdgo.Tuple.Tuple3<File, File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_pipe.pipe();
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        Getuid returns the numeric user id of the caller.
        
        On Windows, it returns -1.
    **/
    static public inline function getuid():StdTypes.Int {
        return stdgo._internal.os.Os_getuid.getuid();
    }
    /**
        Geteuid returns the numeric effective user id of the caller.
        
        On Windows, it returns -1.
    **/
    static public inline function geteuid():StdTypes.Int {
        return stdgo._internal.os.Os_geteuid.geteuid();
    }
    /**
        Getgid returns the numeric group id of the caller.
        
        On Windows, it returns -1.
    **/
    static public inline function getgid():StdTypes.Int {
        return stdgo._internal.os.Os_getgid.getgid();
    }
    /**
        Getegid returns the numeric effective group id of the caller.
        
        On Windows, it returns -1.
    **/
    static public inline function getegid():StdTypes.Int {
        return stdgo._internal.os.Os_getegid.getegid();
    }
    /**
        Getgroups returns a list of the numeric ids of groups that the caller belongs to.
        
        On Windows, it returns syscall.EWINDOWS. See the os/user package
        for a possible alternative.
    **/
    static public inline function getgroups():stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_getgroups.getgroups();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Exit causes the current program to exit with the given status code.
        Conventionally, code zero indicates success, non-zero an error.
        The program terminates immediately; deferred functions are not run.
        
        For portability, the status code should be in the range [0, 125].
    **/
    static public inline function exit(_code:StdTypes.Int):Void {
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.os.Os_exit.exit(_code);
    }
    /**
        Stat returns a FileInfo describing the named file.
        If there is an error, it will be of type *PathError.
    **/
    static public inline function stat(_name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_stat.stat(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Lstat returns a FileInfo describing the named file.
        If the file is a symbolic link, the returned FileInfo
        describes the symbolic link. Lstat makes no attempt to follow the link.
        If there is an error, it will be of type *PathError.
    **/
    static public inline function lstat(_name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_lstat.lstat(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Hostname returns the host name reported by the kernel.
    **/
    static public inline function hostname():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_hostname.hostname();
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
    static public inline function createTemp(_dir:String, _pattern:String):stdgo.Tuple<File, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_createTemp.createTemp(_dir, _pattern);
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
    static public inline function mkdirTemp(_dir:String, _pattern:String):stdgo.Tuple<String, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(_dir, _pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Getpagesize returns the underlying system's memory page size.
    **/
    static public inline function getpagesize():StdTypes.Int {
        return stdgo._internal.os.Os_getpagesize.getpagesize();
    }
    /**
        SameFile reports whether fi1 and fi2 describe the same file.
        For example, on Unix this means that the device and inode fields
        of the two underlying structures are identical; on other systems
        the decision may be based on the path names.
        SameFile only applies to results returned by this package's Stat.
        It returns false in other cases.
    **/
    static public inline function sameFile(_fi1:stdgo._internal.io.fs.Fs_FileInfo.FileInfo, _fi2:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):Bool {
        return stdgo._internal.os.Os_sameFile.sameFile(_fi1, _fi2);
    }
}
