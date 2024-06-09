# Module: `stdgo.os`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function atime()`](<#function-atime>)

- [`function lstatP()`](<#function-lstatp>)

- [`function splitPath()`](<#function-splitpath>)

- [class Os](<#class-os>)

  - [`function chdir(_dir:String):stdgo.Error`](<#os-function-chdir>)

  - [`function chmod(_name:String, _mode:stdgo.os.FileMode):stdgo.Error`](<#os-function-chmod>)

  - [`function chown(_name:String, _uid:Int, _gid:Int):stdgo.Error`](<#os-function-chown>)

  - [`function chtimes(_name:String, _atime:stdgo._internal.time.Time, _mtime:stdgo._internal.time.Time):stdgo.Error`](<#os-function-chtimes>)

  - [`function clearenv():Void`](<#os-function-clearenv>)

  - [`function create(_name:String):stdgo.Tuple<stdgo.os.File, stdgo.Error>`](<#os-function-create>)

  - [`function createTemp(_dir:String, _pattern:String):stdgo.Tuple<stdgo.os.File, stdgo.Error>`](<#os-function-createtemp>)

  - [`function dirFS(_dir:String):stdgo._internal.io.fs.FS`](<#os-function-dirfs>)

  - [`function environ_():Array<String>`](<#os-function-environ_>)

  - [`function executable():stdgo.Tuple<String, stdgo.Error>`](<#os-function-executable>)

  - [`function exit(_code:Int):Void`](<#os-function-exit>)

  - [`function expand(_s:String, _mapping:()):String`](<#os-function-expand>)

  - [`function expandEnv(_s:String):String`](<#os-function-expandenv>)

  - [`function findProcess(_pid:Int):stdgo.Tuple<stdgo.os.Process, stdgo.Error>`](<#os-function-findprocess>)

  - [`function getegid():Int`](<#os-function-getegid>)

  - [`function getenv(_key:String):String`](<#os-function-getenv>)

  - [`function geteuid():Int`](<#os-function-geteuid>)

  - [`function getgid():Int`](<#os-function-getgid>)

  - [`function getgroups():stdgo.Tuple<Array<Int>, stdgo.Error>`](<#os-function-getgroups>)

  - [`function getpagesize():Int`](<#os-function-getpagesize>)

  - [`function getpid():Int`](<#os-function-getpid>)

  - [`function getppid():Int`](<#os-function-getppid>)

  - [`function getuid():Int`](<#os-function-getuid>)

  - [`function getwd():stdgo.Tuple<String, stdgo.Error>`](<#os-function-getwd>)

  - [`function hostname():stdgo.Tuple<String, stdgo.Error>`](<#os-function-hostname>)

  - [`function isExist(_err:stdgo.Error):Bool`](<#os-function-isexist>)

  - [`function isNotExist(_err:stdgo.Error):Bool`](<#os-function-isnotexist>)

  - [`function isPathSeparator(_c:UInt):Bool`](<#os-function-ispathseparator>)

  - [`function isPermission(_err:stdgo.Error):Bool`](<#os-function-ispermission>)

  - [`function isTimeout(_err:stdgo.Error):Bool`](<#os-function-istimeout>)

  - [`function lchown(_name:String, _uid:Int, _gid:Int):stdgo.Error`](<#os-function-lchown>)

  - [`function link(_oldname:String, _newname:String):stdgo.Error`](<#os-function-link>)

  - [`function lookupEnv(_key:String):stdgo.Tuple<String, Bool>`](<#os-function-lookupenv>)

  - [`function lstat(_name:String):stdgo.Tuple<stdgo.os.FileInfo, stdgo.Error>`](<#os-function-lstat>)

  - [`function mkdir(_name:String, _perm:stdgo.os.FileMode):stdgo.Error`](<#os-function-mkdir>)

  - [`function mkdirAll(_path:String, _perm:stdgo.os.FileMode):stdgo.Error`](<#os-function-mkdirall>)

  - [`function mkdirTemp(_dir:String, _pattern:String):stdgo.Tuple<String, stdgo.Error>`](<#os-function-mkdirtemp>)

  - [`function newFile(_fd:stdgo.GoUIntptr, _name:String):stdgo.os.File`](<#os-function-newfile>)

  - [`function newSyscallError(_syscall:String, _err:stdgo.Error):stdgo.Error`](<#os-function-newsyscallerror>)

  - [`function open(_name:String):stdgo.Tuple<stdgo.os.File, stdgo.Error>`](<#os-function-open>)

  - [`function openFile(_name:String, _flag:Int, _perm:stdgo.os.FileMode):stdgo.Tuple<stdgo.os.File, stdgo.Error>`](<#os-function-openfile>)

  - [`function pipe():stdgo.Tuple3<stdgo.os.File, stdgo.os.File, stdgo.Error>`](<#os-function-pipe>)

  - [`function readDir(_name:String):stdgo.Tuple<Array<stdgo.os.DirEntry>, stdgo.Error>`](<#os-function-readdir>)

  - [`function readFile(_name:String):stdgo.Tuple<Array<Int>, stdgo.Error>`](<#os-function-readfile>)

  - [`function readlink(_name:String):stdgo.Tuple<String, stdgo.Error>`](<#os-function-readlink>)

  - [`function remove(_name:String):stdgo.Error`](<#os-function-remove>)

  - [`function removeAll(_path:String):stdgo.Error`](<#os-function-removeall>)

  - [`function rename(_oldpath:String, _newpath:String):stdgo.Error`](<#os-function-rename>)

  - [`function sameFile(_fi1:stdgo.os.FileInfo, _fi2:stdgo.os.FileInfo):Bool`](<#os-function-samefile>)

  - [`function setenv(_key:String, _value:String):stdgo.Error`](<#os-function-setenv>)

  - [`function startProcess(_name:String, _argv:Array<String>, _attr:stdgo.os.ProcAttr):stdgo.Tuple<stdgo.os.Process, stdgo.Error>`](<#os-function-startprocess>)

  - [`function stat(_name:String):stdgo.Tuple<stdgo.os.FileInfo, stdgo.Error>`](<#os-function-stat>)

  - [`function symlink(_oldname:String, _newname:String):stdgo.Error`](<#os-function-symlink>)

  - [`function tempDir():String`](<#os-function-tempdir>)

  - [`function truncate(_name:String, _size:haxe.Int64):stdgo.Error`](<#os-function-truncate>)

  - [`function unsetenv(_key:String):stdgo.Error`](<#os-function-unsetenv>)

  - [`function userCacheDir():stdgo.Tuple<String, stdgo.Error>`](<#os-function-usercachedir>)

  - [`function userConfigDir():stdgo.Tuple<String, stdgo.Error>`](<#os-function-userconfigdir>)

  - [`function userHomeDir():stdgo.Tuple<String, stdgo.Error>`](<#os-function-userhomedir>)

  - [`function writeFile(_name:String, _data:Array<Int>, _perm:stdgo.os.FileMode):stdgo.Error`](<#os-function-writefile>)

- [typedef DirEntry](<#typedef-direntry>)

- [typedef FileInfo](<#typedef-fileinfo>)

- [typedef FileMode](<#typedef-filemode>)

- [typedef PathError](<#typedef-patherror>)

- [typedef Signal](<#typedef-signal>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_dirFS](<#typedef-t_dirfs>)

- [typedef T\_newFileKind](<#typedef-t_newfilekind>)

- [typedef T\_readdirMode](<#typedef-t_readdirmode>)

- [typedef T\_syscallErrorType](<#typedef-t_syscallerrortype>)

- [typedef T\_timeout](<#typedef-t_timeout>)

- [abstract T\_dirInfo](<#abstract-t_dirinfo>)

- [abstract SyscallError](<#abstract-syscallerror>)

- [abstract Process](<#abstract-process>)

- [abstract ProcAttr](<#abstract-procattr>)

- [abstract ProcessState](<#abstract-processstate>)

- [abstract LinkError](<#abstract-linkerror>)

- [abstract T\_fileWithoutReadFrom](<#abstract-t_filewithoutreadfrom>)

- [abstract T\_file](<#abstract-t_file>)

- [abstract T\_unixDirent](<#abstract-t_unixdirent>)

- [abstract T\_rawConn](<#abstract-t_rawconn>)

- [abstract File](<#abstract-file>)

- [abstract T\_fileStat](<#abstract-t_filestat>)

# Constants


```haxe
import stdgo.os.Os
```


```haxe
final devNull:String = stdgo._internal.os.Os.devNull
```


```haxe
final modeAppend:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeAppend
```


```haxe
final modeCharDevice:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeCharDevice
```


```haxe
final modeDevice:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeDevice
```


```haxe
final modeDir:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeDir
```


```haxe
final modeExclusive:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeExclusive
```


```haxe
final modeIrregular:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeIrregular
```


```haxe
final modeNamedPipe:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeNamedPipe
```


```haxe
final modePerm:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modePerm
```


```haxe
final modeSetgid:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeSetgid
```


```haxe
final modeSetuid:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeSetuid
```


```haxe
final modeSocket:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeSocket
```


```haxe
final modeSticky:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeSticky
```


```haxe
final modeSymlink:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeSymlink
```


```haxe
final modeTemporary:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeTemporary
```


```haxe
final modeType:stdgo._internal.io.fs.FileMode = stdgo._internal.os.Os.modeType
```


```haxe
final o_APPEND:Int = stdgo._internal.os.Os.o_APPEND
```


```haxe
final o_CREATE:Int = stdgo._internal.os.Os.o_CREATE
```


```haxe
final o_EXCL:Int = stdgo._internal.os.Os.o_EXCL
```


```haxe
final o_RDONLY:Int = stdgo._internal.os.Os.o_RDONLY
```


```haxe
final o_RDWR:Int = stdgo._internal.os.Os.o_RDWR
```


```haxe
final o_SYNC:Int = stdgo._internal.os.Os.o_SYNC
```


```haxe
final o_TRUNC:Int = stdgo._internal.os.Os.o_TRUNC
```


```haxe
final o_WRONLY:Int = stdgo._internal.os.Os.o_WRONLY
```


```haxe
final pathListSeparator:Int = stdgo._internal.os.Os.pathListSeparator
```


```haxe
final pathSeparator:Int = stdgo._internal.os.Os.pathSeparator
```


```haxe
final seek_CUR:Int = stdgo._internal.os.Os.seek_CUR
```


```haxe
final seek_END:Int = stdgo._internal.os.Os.seek_END
```


```haxe
final seek_SET:Int = stdgo._internal.os.Os.seek_SET
```


# Variables


```haxe
import stdgo.os.Os
```


```haxe
var args:Array<String>
```


```haxe
var errClosed:stdgo.Error
```


```haxe
var errDeadlineExceeded:stdgo.Error
```


```haxe
var errExist:stdgo.Error
```


```haxe
var errInvalid:stdgo.Error
```


```haxe
var errNoDeadline:stdgo.Error
```


```haxe
var errNotExist:stdgo.Error
```


```haxe
var errPatternHasSeparator:stdgo.Error
```


```haxe
var errPermission:stdgo.Error
```


```haxe
var errProcessDone:stdgo.Error
```


```haxe
var errWriteAtInAppendMode:stdgo.Error
```


```haxe
var interrupt:stdgo.os.Signal
```


```haxe
var kill:stdgo.os.Signal
```


```haxe
var stderr:stdgo.os.File
```


```haxe
var stdin:stdgo.os.File
```


```haxe
var stdout:stdgo.os.File
```


```haxe
var testingForceReadDirLstat:stdgo.Pointer<Bool>
```


# Functions


```haxe
import stdgo.os.Os
```


## function atime


```haxe
function atime()
```


[\(view code\)](<./Os.hx>)


## function lstatP


```haxe
function lstatP()
```


[\(view code\)](<./Os.hx>)


## function splitPath


```haxe
function splitPath()
```


[\(view code\)](<./Os.hx>)


# Classes


```haxe
import stdgo.os.*
```


## class Os


```
Package os provides a platform-independent interface to operating system
    functionality. The design is Unix-like, although the error handling is
    Go-like; failing calls return values of type error rather than error numbers.
    Often, more information is available within the error. For example,
    if a call that takes a file name fails, such as Open or Stat, the error
    will include the failing file name when printed and will be of type
    *PathError, which may be unpacked for more information.
```

The os interface is intended to be uniform across all operating systems.
Features not generally available appear in the system\-specific package syscall.  


Here is a simple example, opening a file and reading some of it.  

```
    	file, err := os.Open("file.go") // For read access.
    	if err != nil {
    		log.Fatal(err)
}
```

If the open fails, the error string will be self\-explanatory, like  

```
    	open file.go: no such file or directory
```

The file's data can then be read into a slice of bytes. Read and
Write take their byte counts from the length of the argument slice.  

```
    	data := make([]byte, 100)
    	count, err := file.Read(data)
    	if err != nil {
    		log.Fatal(err)
}
    	fmt.Printf("read %d bytes: %q\n", count, data[:count])
```

Note: The maximum number of concurrent operations on a File may be limited by
the OS or the system. The number should be high, but exceeding it may degrade
performance or cause other issues.  

### Os function chdir


```haxe
function chdir(_dir:String):stdgo.Error
```


```
Chdir changes the current working directory to the named directory.
        If there is an error, it will be of type *PathError.
```
[\(view code\)](<./Os.hx#L1289>)


### Os function chmod


```haxe
function chmod(_name:String, _mode:stdgo.os.FileMode):stdgo.Error
```


```
Chmod changes the mode of the named file to mode.
        If the file is a symbolic link, it changes the mode of the link's target.
        If there is an error, it will be of type *PathError.
```

A different subset of the mode bits are used, depending on the
operating system.  


On Unix, the mode's permission bits, ModeSetuid, ModeSetgid, and
ModeSticky are used.  


On Windows, only the 0200 bit \(owner writable\) of mode is used; it
controls whether the file's read\-only attribute is set or cleared.
The other bits are currently unused. For compatibility with Go 1.12
and earlier, use a non\-zero mode. Use mode 0400 for a read\-only
file and 0600 for a readable\+writable file.  


On Plan 9, the mode's permission bits, ModeAppend, ModeExclusive,
and ModeTemporary are used.  

[\(view code\)](<./Os.hx#L1433>)


### Os function chown


```haxe
function chown(_name:String, _uid:Int, _gid:Int):stdgo.Error
```


```
Chown changes the numeric uid and gid of the named file.
        If the file is a symbolic link, it changes the uid and gid of the link's target.
        A uid or gid of -1 means to not change that value.
        If there is an error, it will be of type *PathError.
```

On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
EPLAN9 error, wrapped in \*PathError.  

[\(view code\)](<./Os.hx#L1488>)


### Os function chtimes


```haxe
function chtimes(_name:String, _atime:stdgo._internal.time.Time, _mtime:stdgo._internal.time.Time):stdgo.Error
```


```
Chtimes changes the access and modification times of the named
        file, similar to the Unix utime() or utimes() functions.
        A zero time.Time value will leave the corresponding file time unchanged.
```

The underlying filesystem may truncate or round the values to a
less precise time unit.
If there is an error, it will be of type \*PathError.  

[\(view code\)](<./Os.hx#L1511>)


### Os function clearenv


```haxe
function clearenv():Void
```



Clearenv deletes all environment variables.  

[\(view code\)](<./Os.hx#L1143>)


### Os function create


```haxe
function create(_name:String):stdgo.Tuple<stdgo.os.File, stdgo.Error>
```


```
Create creates or truncates the named file. If the file already exists,
        it is truncated. If the file does not exist, it is created with mode 0666
        (before umask). If successful, methods on the returned File can
        be used for I/O; the associated file descriptor has mode O_RDWR.
        If there is an error, it will be of type *PathError.
```
[\(view code\)](<./Os.hx#L1311>)


### Os function createTemp


```haxe
function createTemp(_dir:String, _pattern:String):stdgo.Tuple<stdgo.os.File, stdgo.Error>
```


```
CreateTemp creates a new temporary file in the directory dir,
        opens the file for reading and writing, and returns the resulting file.
        The filename is generated by taking pattern and adding a random string to the end.
        If pattern includes a "*", the random string replaces the last "*".
        If dir is the empty string, CreateTemp uses the default directory for temporary files, as returned by TempDir.
        Multiple programs or goroutines calling CreateTemp simultaneously will not choose the same file.
        The caller can use the file's Name method to find the pathname of the file.
        It is the caller's responsibility to remove the file when it is no longer needed.
```
[\(view code\)](<./Os.hx#L1714>)


### Os function dirFS


```haxe
function dirFS(_dir:String):stdgo._internal.io.fs.FS
```



DirFS returns a file system \(an fs.FS\) for the tree of files rooted at the directory dir.  


Note that DirFS\("/prefix"\) only guarantees that the Open calls it makes to the
operating system will begin with "/prefix": DirFS\("/prefix"\).Open\("file"\) is the
same as os.Open\("/prefix/file"\). So if /prefix/file is a symbolic link pointing outside
the /prefix tree, then using DirFS does not stop the access any more than using
os.Open does. Additionally, the root of the fs.FS returned for a relative path,
DirFS\("prefix"\), will be affected by later calls to Chdir. DirFS is therefore not
a general substitute for a chroot\-style security mechanism when the directory tree
contains arbitrary content.  


The directory dir must not be "".  


The result implements \[io/fs.StatFS\], \[io/fs.ReadFileFS\] and
\[io/fs.ReadDirFS\].  

[\(view code\)](<./Os.hx#L1453>)


### Os function environ\_


```haxe
function environ_():Array<String>
```


```
Environ returns a copy of strings representing the environment,
        in the form "key=value".
```
[\(view code\)](<./Os.hx#L1150>)


### Os function executable


```haxe
function executable():stdgo.Tuple<String, stdgo.Error>
```


```
Executable returns the path name for the executable that started
        the current process. There is no guarantee that the path is still
        pointing to the correct executable. If a symlink was used to start
        the process, depending on the operating system, the result might
        be the symlink or the path it pointed to. If a stable result is
        needed, path/filepath.EvalSymlinks might help.
```

Executable returns an absolute path unless an error occurred.  


The main use case is finding resources located relative to an
executable.  

[\(view code\)](<./Os.hx#L1271>)


### Os function exit


```haxe
function exit(_code:Int):Void
```


```
Exit causes the current program to exit with the given status code.
        Conventionally, code zero indicates success, non-zero an error.
        The program terminates immediately; deferred functions are not run.
```

For portability, the status code should be in the range \[0, 125\].  

[\(view code\)](<./Os.hx#L1670>)


### Os function expand


```haxe
function expand(_s:String, _mapping:()):String
```


```
Expand replaces ${var} or $var in the string based on the mapping function.
        For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
```
[\(view code\)](<./Os.hx#L1094>)


### Os function expandEnv


```haxe
function expandEnv(_s:String):String
```


```
ExpandEnv replaces ${var} or $var in the string according to the values
        of the current environment variables. References to undefined
        variables are replaced by the empty string.
```
[\(view code\)](<./Os.hx#L1103>)


### Os function findProcess


```haxe
function findProcess(_pid:Int):stdgo.Tuple<stdgo.os.Process, stdgo.Error>
```



FindProcess looks for a running process by its pid.  


The Process it returns can be used to obtain information
about the underlying operating system process.  


On Unix systems, FindProcess always succeeds and returns a Process
for the given pid, regardless of whether the process exists. To test whether
the process actually exists, see whether p.Signal\(syscall.Signal\(0\)\) reports
an error.  

[\(view code\)](<./Os.hx#L1230>)


### Os function getegid


```haxe
function getegid():Int
```



Getegid returns the numeric effective group id of the caller.  


On Windows, it returns \-1.  

[\(view code\)](<./Os.hx#L1648>)


### Os function getenv


```haxe
function getenv(_key:String):String
```


```
Getenv retrieves the value of the environment variable named by the key.
        It returns the value, which will be empty if the variable is not present.
        To distinguish between an empty value and an unset value, use LookupEnv.
```
[\(view code\)](<./Os.hx#L1111>)


### Os function geteuid


```haxe
function geteuid():Int
```



Geteuid returns the numeric effective user id of the caller.  


On Windows, it returns \-1.  

[\(view code\)](<./Os.hx#L1632>)


### Os function getgid


```haxe
function getgid():Int
```



Getgid returns the numeric group id of the caller.  


On Windows, it returns \-1.  

[\(view code\)](<./Os.hx#L1640>)


### Os function getgroups


```haxe
function getgroups():stdgo.Tuple<Array<Int>, stdgo.Error>
```



Getgroups returns a list of the numeric ids of groups that the caller belongs to.  


On Windows, it returns syscall.EWINDOWS. See the os/user package
for a possible alternative.  

[\(view code\)](<./Os.hx#L1657>)


### Os function getpagesize


```haxe
function getpagesize():Int
```



Getpagesize returns the underlying system's memory page size.  

[\(view code\)](<./Os.hx#L1738>)


### Os function getpid


```haxe
function getpid():Int
```



Getpid returns the process id of the caller.  

[\(view code\)](<./Os.hx#L1210>)


### Os function getppid


```haxe
function getppid():Int
```



Getppid returns the process id of the caller's parent.  

[\(view code\)](<./Os.hx#L1216>)


### Os function getuid


```haxe
function getuid():Int
```



Getuid returns the numeric user id of the caller.  


On Windows, it returns \-1.  

[\(view code\)](<./Os.hx#L1624>)


### Os function getwd


```haxe
function getwd():stdgo.Tuple<String, stdgo.Error>
```


```
Getwd returns a rooted path name corresponding to the
        current directory. If the current directory can be
        reached via multiple paths (due to symbolic links),
        Getwd may return any one of them.
```
[\(view code\)](<./Os.hx#L1575>)


### Os function hostname


```haxe
function hostname():stdgo.Tuple<String, stdgo.Error>
```



Hostname returns the host name reported by the kernel.  

[\(view code\)](<./Os.hx#L1698>)


### Os function isExist


```haxe
function isExist(_err:stdgo.Error):Bool
```


```
IsExist returns a boolean indicating whether the error is known to report
        that a file or directory already exists. It is satisfied by ErrExist as
        well as some syscall errors.
```

This function predates errors.Is. It only supports errors returned by
the os package. New code should use errors.Is\(err, fs.ErrExist\).  

[\(view code\)](<./Os.hx#L1169>)


### Os function isNotExist


```haxe
function isNotExist(_err:stdgo.Error):Bool
```


```
IsNotExist returns a boolean indicating whether the error is known to
        report that a file or directory does not exist. It is satisfied by
        ErrNotExist as well as some syscall errors.
```

This function predates errors.Is. It only supports errors returned by
the os package. New code should use errors.Is\(err, fs.ErrNotExist\).  

[\(view code\)](<./Os.hx#L1180>)


### Os function isPathSeparator


```haxe
function isPathSeparator(_c:UInt):Bool
```



IsPathSeparator reports whether c is a directory separator character.  

[\(view code\)](<./Os.hx#L1606>)


### Os function isPermission


```haxe
function isPermission(_err:stdgo.Error):Bool
```


```
IsPermission returns a boolean indicating whether the error is known to
        report that permission is denied. It is satisfied by ErrPermission as well
        as some syscall errors.
```

This function predates errors.Is. It only supports errors returned by
the os package. New code should use errors.Is\(err, fs.ErrPermission\).  

[\(view code\)](<./Os.hx#L1191>)


### Os function isTimeout


```haxe
function isTimeout(_err:stdgo.Error):Bool
```


```
IsTimeout returns a boolean indicating whether the error is known
        to report that a timeout occurred.
```

This function predates errors.Is, and the notion of whether an
error indicates a timeout can be ambiguous. For example, the Unix
error EWOULDBLOCK sometimes indicates a timeout and sometimes does not.
New code should use errors.Is with a value appropriate to the call
returning the error, such as os.ErrDeadlineExceeded.  

[\(view code\)](<./Os.hx#L1204>)


### Os function lchown


```haxe
function lchown(_name:String, _uid:Int, _gid:Int):stdgo.Error
```


```
Lchown changes the numeric uid and gid of the named file.
        If the file is a symbolic link, it changes the uid and gid of the link itself.
        If there is an error, it will be of type *PathError.
```

On Windows, it always returns the syscall.EWINDOWS error, wrapped
in \*PathError.  

[\(view code\)](<./Os.hx#L1499>)


### Os function link


```haxe
function link(_oldname:String, _newname:String):stdgo.Error
```


```
Link creates newname as a hard link to the oldname file.
        If there is an error, it will be of type *LinkError.
```
[\(view code\)](<./Os.hx#L1547>)


### Os function lookupEnv


```haxe
function lookupEnv(_key:String):stdgo.Tuple<String, Bool>
```


```
LookupEnv retrieves the value of the environment variable named
        by the key. If the variable is present in the environment the
        value (which may be empty) is returned and the boolean is true.
        Otherwise the returned value will be empty and the boolean will
        be false.
```
[\(view code\)](<./Os.hx#L1121>)


### Os function lstat


```haxe
function lstat(_name:String):stdgo.Tuple<stdgo.os.FileInfo, stdgo.Error>
```


```
Lstat returns a FileInfo describing the named file.
        If the file is a symbolic link, the returned FileInfo
        describes the symbolic link. Lstat makes no attempt to follow the link.
        If there is an error, it will be of type *PathError.
```
[\(view code\)](<./Os.hx#L1689>)


### Os function mkdir


```haxe
function mkdir(_name:String, _perm:stdgo.os.FileMode):stdgo.Error
```


```
Mkdir creates a new directory with the specified name and permission
        bits (before umask).
        If there is an error, it will be of type *PathError.
```
[\(view code\)](<./Os.hx#L1282>)


### Os function mkdirAll


```haxe
function mkdirAll(_path:String, _perm:stdgo.os.FileMode):stdgo.Error
```


```
MkdirAll creates a directory named path,
        along with any necessary parents, and returns nil,
        or else returns an error.
        The permission bits perm (before umask) are used for all
        directories that MkdirAll creates.
        If path is already a directory, MkdirAll does nothing
        and returns nil.
```
[\(view code\)](<./Os.hx#L1590>)


### Os function mkdirTemp


```haxe
function mkdirTemp(_dir:String, _pattern:String):stdgo.Tuple<String, stdgo.Error>
```


```
MkdirTemp creates a new temporary directory in the directory dir
        and returns the pathname of the new directory.
        The new directory's name is generated by adding a random string to the end of pattern.
        If pattern includes a "*", the random string replaces the last "*" instead.
        If dir is the empty string, MkdirTemp uses the default directory for temporary files, as returned by TempDir.
        Multiple programs or goroutines calling MkdirTemp simultaneously will not choose the same directory.
        It is the caller's responsibility to remove the directory when it is no longer needed.
```
[\(view code\)](<./Os.hx#L1729>)


### Os function newFile


```haxe
function newFile(_fd:stdgo.GoUIntptr, _name:String):stdgo.os.File
```


```
NewFile returns a new File with the given file descriptor and
        name. The returned value will be nil if fd is not a valid file
        descriptor. On Unix systems, if the file descriptor is in
        non-blocking mode, NewFile will attempt to return a pollable File
        (one for which the SetDeadline methods work).
```

After passing it to NewFile, fd may become invalid under the same
conditions described in the comments of the Fd method, and the same
constraints apply.  

[\(view code\)](<./Os.hx#L1525>)


### Os function newSyscallError


```haxe
function newSyscallError(_syscall:String, _err:stdgo.Error):stdgo.Error
```


```
NewSyscallError returns, as an error, a new SyscallError
        with the given system call name and error details.
        As a convenience, if err is nil, NewSyscallError returns nil.
```
[\(view code\)](<./Os.hx#L1158>)


### Os function open


```haxe
function open(_name:String):stdgo.Tuple<stdgo.os.File, stdgo.Error>
```


```
Open opens the named file for reading. If successful, methods on
        the returned file can be used for reading; the associated file
        descriptor has mode O_RDONLY.
        If there is an error, it will be of type *PathError.
```
[\(view code\)](<./Os.hx#L1298>)


### Os function openFile


```haxe
function openFile(_name:String, _flag:Int, _perm:stdgo.os.FileMode):stdgo.Tuple<stdgo.os.File, stdgo.Error>
```


```
OpenFile is the generalized open call; most users will use Open
        or Create instead. It opens the named file with specified flag
        (O_RDONLY etc.). If the file does not exist, and the O_CREATE flag
        is passed, it is created with mode perm (before umask). If successful,
        methods on the returned File can be used for I/O.
        If there is an error, it will be of type *PathError.
```
[\(view code\)](<./Os.hx#L1325>)


### Os function pipe


```haxe
function pipe():stdgo.Tuple3<stdgo.os.File, stdgo.os.File, stdgo.Error>
```


```
Pipe returns a connected pair of Files; reads from r return bytes written to w.
        It returns the files and an error, if any.
```
[\(view code\)](<./Os.hx#L1613>)


### Os function readDir


```haxe
function readDir(_name:String):stdgo.Tuple<Array<stdgo.os.DirEntry>, stdgo.Error>
```


```
ReadDir reads the named directory,
        returning all its directory entries sorted by filename.
        If an error occurs reading the directory,
        ReadDir returns the entries it was able to read before the error,
        along with the error.
```
[\(view code\)](<./Os.hx#L1084>)


### Os function readFile


```haxe
function readFile(_name:String):stdgo.Tuple<Array<Int>, stdgo.Error>
```


```
ReadFile reads the named file and returns the contents.
        A successful call returns err == nil, not err == EOF.
        Because ReadFile reads the whole file, it does not treat an EOF from Read
        as an error to be reported.
```
[\(view code\)](<./Os.hx#L1462>)


### Os function readlink


```haxe
function readlink(_name:String):stdgo.Tuple<String, stdgo.Error>
```


```
Readlink returns the destination of the named symbolic link.
        If there is an error, it will be of type *PathError.
```
[\(view code\)](<./Os.hx#L1563>)


### Os function remove


```haxe
function remove(_name:String):stdgo.Error
```


```
Remove removes the named file or (empty) directory.
        If there is an error, it will be of type *PathError.
```
[\(view code\)](<./Os.hx#L1540>)


### Os function removeAll


```haxe
function removeAll(_path:String):stdgo.Error
```


```
RemoveAll removes path and any children it contains.
        It removes everything it can but returns the first error
        it encounters. If the path does not exist, RemoveAll
        returns nil (no error).
        If there is an error, it will be of type *PathError.
```
[\(view code\)](<./Os.hx#L1600>)


### Os function rename


```haxe
function rename(_oldpath:String, _newpath:String):stdgo.Error
```


```
Rename renames (moves) oldpath to newpath.
        If newpath already exists and is not a directory, Rename replaces it.
        OS-specific restrictions may apply when oldpath and newpath are in different directories.
        Even within the same directory, on non-Unix platforms Rename is not an atomic operation.
        If there is an error, it will be of type *LinkError.
```
[\(view code\)](<./Os.hx#L1338>)


### Os function sameFile


```haxe
function sameFile(_fi1:stdgo.os.FileInfo, _fi2:stdgo.os.FileInfo):Bool
```


```
SameFile reports whether fi1 and fi2 describe the same file.
        For example, on Unix this means that the device and inode fields
        of the two underlying structures are identical; on other systems
        the decision may be based on the path names.
        SameFile only applies to results returned by this package's Stat.
        It returns false in other cases.
```
[\(view code\)](<./Os.hx#L1749>)


### Os function setenv


```haxe
function setenv(_key:String, _value:String):stdgo.Error
```


```
Setenv sets the value of the environment variable named by the key.
        It returns an error, if any.
```
[\(view code\)](<./Os.hx#L1131>)


### Os function startProcess


```haxe
function startProcess(_name:String, _argv:Array<String>, _attr:stdgo.os.ProcAttr):stdgo.Tuple<stdgo.os.Process, stdgo.Error>
```


```
StartProcess starts a new process with the program, arguments and attributes
        specified by name, argv and attr. The argv slice will become os.Args in the
        new process, so it normally starts with the program name.
```

If the calling goroutine has locked the operating system thread
with runtime.LockOSThread and modified any inheritable OS\-level
thread state \(for example, Linux or Plan 9 name spaces\), the new
process will inherit the caller's thread state.  


StartProcess is a low\-level interface. The os/exec package provides
higher\-level interfaces.  


If there is an error, it will be of type \*PathError.  

[\(view code\)](<./Os.hx#L1251>)


### Os function stat


```haxe
function stat(_name:String):stdgo.Tuple<stdgo.os.FileInfo, stdgo.Error>
```


```
Stat returns a FileInfo describing the named file.
        If there is an error, it will be of type *PathError.
```
[\(view code\)](<./Os.hx#L1677>)


### Os function symlink


```haxe
function symlink(_oldname:String, _newname:String):stdgo.Error
```


```
Symlink creates newname as a symbolic link to oldname.
        On Windows, a symlink to a non-existent oldname creates a file symlink;
        if oldname is later created as a directory the symlink will not work.
        If there is an error, it will be of type *LinkError.
```
[\(view code\)](<./Os.hx#L1556>)


### Os function tempDir


```haxe
function tempDir():String
```



TempDir returns the default directory to use for temporary files.  


On Unix systems, it returns $TMPDIR if non\-empty, else /tmp.
On Windows, it uses GetTempPath, returning the first non\-empty
value from %TMP%, %TEMP%, %USERPROFILE%, or the Windows directory.
On Plan 9, it returns /tmp.  


The directory is neither guaranteed to exist nor have accessible
permissions.  

[\(view code\)](<./Os.hx#L1352>)


### Os function truncate


```haxe
function truncate(_name:String, _size:haxe.Int64):stdgo.Error
```


```
Truncate changes the size of the named file.
        If the file is a symbolic link, it changes the size of the link's target.
        If there is an error, it will be of type *PathError.
```
[\(view code\)](<./Os.hx#L1533>)


### Os function unsetenv


```haxe
function unsetenv(_key:String):stdgo.Error
```



Unsetenv unsets a single environment variable.  

[\(view code\)](<./Os.hx#L1137>)


### Os function userCacheDir


```haxe
function userCacheDir():stdgo.Tuple<String, stdgo.Error>
```


```
UserCacheDir returns the default root directory to use for user-specific
        cached data. Users should create their own application-specific subdirectory
        within this one and use that.
```

On Unix systems, it returns $XDG\_CACHE\_HOME as specified by
https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
non\-empty, else $HOME/.cache.
On Darwin, it returns $HOME/Library/Caches.
On Windows, it returns %LocalAppData%.
On Plan 9, it returns $home/lib/cache.  


If the location cannot be determined \(for example, $HOME is not defined\),
then it will return an error.  

[\(view code\)](<./Os.hx#L1370>)


### Os function userConfigDir


```haxe
function userConfigDir():stdgo.Tuple<String, stdgo.Error>
```


```
UserConfigDir returns the default root directory to use for user-specific
        configuration data. Users should create their own application-specific
        subdirectory within this one and use that.
```

On Unix systems, it returns $XDG\_CONFIG\_HOME as specified by
https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
non\-empty, else $HOME/.config.
On Darwin, it returns $HOME/Library/Application Support.
On Windows, it returns %AppData%.
On Plan 9, it returns $home/lib.  


If the location cannot be determined \(for example, $HOME is not defined\),
then it will return an error.  

[\(view code\)](<./Os.hx#L1391>)


### Os function userHomeDir


```haxe
function userHomeDir():stdgo.Tuple<String, stdgo.Error>
```



UserHomeDir returns the current user's home directory.  


On Unix, including macOS, it returns the $HOME environment variable.
On Windows, it returns %USERPROFILE%.
On Plan 9, it returns the $home environment variable.  


If the expected variable is not set in the environment, UserHomeDir
returns either a platform\-specific default value or a non\-nil error.  

[\(view code\)](<./Os.hx#L1407>)


### Os function writeFile


```haxe
function writeFile(_name:String, _data:Array<Int>, _perm:stdgo.os.FileMode):stdgo.Error
```


```
WriteFile writes data to the named file, creating it if necessary.
        If the file does not exist, WriteFile creates it with permissions perm (before umask);
        otherwise WriteFile truncates it before writing, without changing permissions.
        Since WriteFile requires multiple system calls to complete, a failure mid-operation
        can leave the file in a partially written state.
```
[\(view code\)](<./Os.hx#L1475>)


# Typedefs


```haxe
import stdgo.os.*
```


## typedef DirEntry


```haxe
typedef DirEntry = stdgo._internal.os.DirEntry;
```


## typedef FileInfo


```haxe
typedef FileInfo = stdgo._internal.os.FileInfo;
```


## typedef FileMode


```haxe
typedef FileMode = stdgo._internal.os.FileMode;
```


## typedef PathError


```haxe
typedef PathError = stdgo._internal.os.PathError;
```


## typedef Signal


```haxe
typedef Signal = stdgo._internal.os.Signal;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.os.T__struct_0;
```


## typedef T\_dirFS


```haxe
typedef T_dirFS = stdgo._internal.os.T_dirFS;
```


## typedef T\_newFileKind


```haxe
typedef T_newFileKind = stdgo._internal.os.T_newFileKind;
```


## typedef T\_readdirMode


```haxe
typedef T_readdirMode = stdgo._internal.os.T_readdirMode;
```


## typedef T\_syscallErrorType


```haxe
typedef T_syscallErrorType = stdgo._internal.os.T_syscallErrorType;
```


## typedef T\_timeout


```haxe
typedef T_timeout = stdgo._internal.os.T_timeout;
```


# Abstracts


## abstract T\_dirInfo


[\(view file containing code\)](<./Os.hx>)


## abstract SyscallError


[\(view file containing code\)](<./Os.hx>)


## abstract Process


[\(view file containing code\)](<./Os.hx>)


## abstract ProcAttr


[\(view file containing code\)](<./Os.hx>)


## abstract ProcessState


[\(view file containing code\)](<./Os.hx>)


## abstract LinkError


[\(view file containing code\)](<./Os.hx>)


## abstract T\_fileWithoutReadFrom


[\(view file containing code\)](<./Os.hx>)


## abstract T\_file


[\(view file containing code\)](<./Os.hx>)


## abstract T\_unixDirent


[\(view file containing code\)](<./Os.hx>)


## abstract T\_rawConn


[\(view file containing code\)](<./Os.hx>)


## abstract File


[\(view file containing code\)](<./Os.hx>)


## abstract T\_fileStat


[\(view file containing code\)](<./Os.hx>)


