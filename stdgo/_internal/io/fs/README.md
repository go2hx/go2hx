# Module: `stdgo._internal.io.fs`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _errInvalid():stdgo.Error`](<#function-_errinvalid>)

- [`function _errPermission():stdgo.Error`](<#function-_errpermission>)

- [`function _errExist():stdgo.Error`](<#function-_errexist>)

- [`function _errNotExist():stdgo.Error`](<#function-_errnotexist>)

- [`function _errClosed():stdgo.Error`](<#function-_errclosed>)

- [`function _cleanGlobPath(_path:stdgo.GoString):stdgo.GoString`](<#function-_cleanglobpath>)

- [`function _glob(_fs:stdgo._internal.io.fs.FS, _dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}`](<#function-_glob>)

- [`function _globWithLimit(_fsys:stdgo._internal.io.fs.FS, _pattern:stdgo.GoString, _depth:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}`](<#function-_globwithlimit>)

- [`function _hasMeta(_path:stdgo.GoString):Bool`](<#function-_hasmeta>)

- [`function _walkDir(_fsys:stdgo._internal.io.fs.FS, _name:stdgo.GoString, _d:stdgo._internal.io.fs.DirEntry, _walkDirFn:stdgo._internal.io.fs.WalkDirFunc):stdgo.Error`](<#function-_walkdir>)

- [`function fileInfoToDirEntry(_info:stdgo._internal.io.fs.FileInfo):stdgo._internal.io.fs.DirEntry`](<#function-fileinfotodirentry>)

- [`function formatDirEntry(_dir:stdgo._internal.io.fs.DirEntry):stdgo.GoString`](<#function-formatdirentry>)

- [`function formatFileInfo(_info:stdgo._internal.io.fs.FileInfo):stdgo.GoString`](<#function-formatfileinfo>)

- [`function glob(_fsys:stdgo._internal.io.fs.FS, _pattern:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}`](<#function-glob>)

- [`function readDir(_fsys:stdgo._internal.io.fs.FS, _name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo._internal.io.fs.DirEntry>;
}`](<#function-readdir>)

- [`function readFile(_fsys:stdgo._internal.io.fs.FS, _name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-readfile>)

- [`function stat(_fsys:stdgo._internal.io.fs.FS, _name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.fs.FileInfo;
}`](<#function-stat>)

- [`function sub(_fsys:stdgo._internal.io.fs.FS, _dir:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.fs.FS;
}`](<#function-sub>)

- [`function validPath(_name:stdgo.GoString):Bool`](<#function-validpath>)

- [`function walkDir(_fsys:stdgo._internal.io.fs.FS, _root:stdgo.GoString, _fn:stdgo._internal.io.fs.WalkDirFunc):stdgo.Error`](<#function-walkdir>)

- [class PathError](<#class-patherror>)

  - [`function new(?op:stdgo.GoString, ?path:stdgo.GoString, ?err:stdgo.Error):Void`](<#patherror-function-new>)

- [class T\_dirInfo](<#class-t_dirinfo>)

  - [`function new(?_fileInfo:stdgo._internal.io.fs.FileInfo):Void`](<#t_dirinfo-function-new>)

- [class T\_statDirEntry](<#class-t_statdirentry>)

  - [`function new(?_info:stdgo._internal.io.fs.FileInfo):Void`](<#t_statdirentry-function-new>)

- [class T\_subFS](<#class-t_subfs>)

  - [`function new(?_fsys:stdgo._internal.io.fs.FS, ?_dir:stdgo.GoString):Void`](<#t_subfs-function-new>)

- [typedef DirEntry](<#typedef-direntry>)

- [typedef FS](<#typedef-fs>)

- [typedef File](<#typedef-file>)

- [typedef FileInfo](<#typedef-fileinfo>)

- [typedef FileMode](<#typedef-filemode>)

- [typedef GlobFS](<#typedef-globfs>)

- [typedef ReadDirFS](<#typedef-readdirfs>)

- [typedef ReadDirFile](<#typedef-readdirfile>)

- [typedef ReadFileFS](<#typedef-readfilefs>)

- [typedef StatFS](<#typedef-statfs>)

- [typedef SubFS](<#typedef-subfs>)

- [typedef T\_\_interface\_0](<#typedef-t__interface_0>)

- [typedef WalkDirFunc](<#typedef-walkdirfunc>)

# Constants


```haxe
import stdgo._internal.io.fs.Fs_walkDir
```


```haxe
final modeAppend:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeCharDevice:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeDevice:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeDir:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeExclusive:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeIrregular:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeNamedPipe:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modePerm:stdgo._internal.io.fs.FileMode = ((511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeSetgid:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeSetuid:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeSocket:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeSticky:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeSymlink:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeTemporary:stdgo._internal.io.fs.FileMode = ((524288u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


```haxe
final modeType:stdgo._internal.io.fs.FileMode = ((-1893203968u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))
```


# Variables


```haxe
import stdgo._internal.io.fs.Fs_walkDir
```


```haxe
var errInvalid:stdgo.Error
```


```haxe
var errPermission:stdgo.Error
```


```haxe
var errExist:stdgo.Error
```


```haxe
var errNotExist:stdgo.Error
```


```haxe
var errClosed:stdgo.Error
```


```haxe
var skipDir:stdgo.Error
```


```haxe
var skipAll:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.io.fs.Fs_walkDir
```


## function \_errInvalid


```haxe
function _errInvalid():stdgo.Error
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function \_errPermission


```haxe
function _errPermission():stdgo.Error
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function \_errExist


```haxe
function _errExist():stdgo.Error
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function \_errNotExist


```haxe
function _errNotExist():stdgo.Error
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function \_errClosed


```haxe
function _errClosed():stdgo.Error
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function \_cleanGlobPath


```haxe
function _cleanGlobPath(_path:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function \_glob


```haxe
function _glob(_fs:stdgo._internal.io.fs.FS, _dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function \_globWithLimit


```haxe
function _globWithLimit(_fsys:stdgo._internal.io.fs.FS, _pattern:stdgo.GoString, _depth:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function \_hasMeta


```haxe
function _hasMeta(_path:stdgo.GoString):Bool
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function \_walkDir


```haxe
function _walkDir(_fsys:stdgo._internal.io.fs.FS, _name:stdgo.GoString, _d:stdgo._internal.io.fs.DirEntry, _walkDirFn:stdgo._internal.io.fs.WalkDirFunc):stdgo.Error
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function fileInfoToDirEntry


```haxe
function fileInfoToDirEntry(_info:stdgo._internal.io.fs.FileInfo):stdgo._internal.io.fs.DirEntry
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function formatDirEntry


```haxe
function formatDirEntry(_dir:stdgo._internal.io.fs.DirEntry):stdgo.GoString
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function formatFileInfo


```haxe
function formatFileInfo(_info:stdgo._internal.io.fs.FileInfo):stdgo.GoString
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function glob


```haxe
function glob(_fsys:stdgo._internal.io.fs.FS, _pattern:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function readDir


```haxe
function readDir(_fsys:stdgo._internal.io.fs.FS, _name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo._internal.io.fs.DirEntry>;
}
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function readFile


```haxe
function readFile(_fsys:stdgo._internal.io.fs.FS, _name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function stat


```haxe
function stat(_fsys:stdgo._internal.io.fs.FS, _name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.fs.FileInfo;
}
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function sub


```haxe
function sub(_fsys:stdgo._internal.io.fs.FS, _dir:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.fs.FS;
}
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function validPath


```haxe
function validPath(_name:stdgo.GoString):Bool
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


## function walkDir


```haxe
function walkDir(_fsys:stdgo._internal.io.fs.FS, _root:stdgo.GoString, _fn:stdgo._internal.io.fs.WalkDirFunc):stdgo.Error
```


[\(view code\)](<./Fs_walkDir.hx#L2>)


# Classes


```haxe
import stdgo._internal.io.fs.*
```


## class PathError


```haxe
var err:stdgo.Error
```


```haxe
var op:stdgo.GoString
```


```haxe
var path:stdgo.GoString
```


### PathError function new


```haxe
function new(?op:stdgo.GoString, ?path:stdgo.GoString, ?err:stdgo.Error):Void
```


[\(view code\)](<./Fs_PathError.hx#L6>)


## class T\_dirInfo


```haxe
var _fileInfo:stdgo._internal.io.fs.FileInfo
```


### T\_dirInfo function new


```haxe
function new(?_fileInfo:stdgo._internal.io.fs.FileInfo):Void
```


[\(view code\)](<./Fs_T_dirInfo.hx#L4>)


## class T\_statDirEntry


```haxe
var _info:stdgo._internal.io.fs.FileInfo
```


### T\_statDirEntry function new


```haxe
function new(?_info:stdgo._internal.io.fs.FileInfo):Void
```


[\(view code\)](<./Fs_T_statDirEntry.hx#L4>)


## class T\_subFS


```haxe
var _dir:stdgo.GoString
```


```haxe
var _fsys:stdgo._internal.io.fs.FS
```


### T\_subFS function new


```haxe
function new(?_fsys:stdgo._internal.io.fs.FS, ?_dir:stdgo.GoString):Void
```


[\(view code\)](<./Fs_T_subFS.hx#L5>)


# Typedefs


```haxe
import stdgo._internal.io.fs.*
```


## typedef DirEntry


```haxe
typedef DirEntry = {
	public function type():stdgo._internal.io.fs.FileMode;	// Type returns the type bits for the entry. The type bits are a subset of the usual FileMode bits, those returned by the FileMode.Type method.
	public function name():stdgo.GoString;	// Name returns the name of the file (or subdirectory) described by the entry. This name is only the final element of the path (the base name), not the entire path. For example, Name would return "hello.go" not "home/gopher/hello.go".
	public function isDir():Bool;	// IsDir reports whether the entry describes a directory.
	public function info():{
		_1:stdgo.Error;
		_0:stdgo._internal.io.fs.FileInfo;
	};	// Info returns the FileInfo for the file or subdirectory described by the entry. The returned FileInfo may be from the time of the original directory read or from the time of the call to Info. If the file has been removed or renamed since the directory read, Info may return an error satisfying errors.Is(err, ErrNotExist). If the entry denotes a symbolic link, Info reports the information about the link itself, not the link's target.
};
```


## typedef FS


```haxe
typedef FS = {
	public function open(_name:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.io.fs.File;
	};	// Open opens the named file. When Open returns an error, it should be of type *PathError with the Op field set to "open", the Path field set to name, and the Err field describing the problem. Open should reject attempts to open names that do not satisfy ValidPath(name), returning a *PathError with Err set to ErrInvalid or ErrNotExist.
};
```


## typedef File


```haxe
typedef File = {
	public function stat():{
		_1:stdgo.Error;
		_0:stdgo._internal.io.fs.FileInfo;
	};
	public function read(_0:stdgo.Slice<stdgo.GoUInt8>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};
	public function close():stdgo.Error;
};
```


## typedef FileInfo


```haxe
typedef FileInfo = {
	public function sys():stdgo.AnyInterface;	// underlying data source (can return nil)
	public function size():stdgo.GoInt64;	// length in bytes for regular files; system-dependent for others
	public function name():stdgo.GoString;	// base name of the file
	public function mode():stdgo._internal.io.fs.FileMode;	// file mode bits
	public function modTime():stdgo._internal.time.Time;	// modification time
	public function isDir():Bool;	// abbreviation for Mode().IsDir()
};
```


## typedef FileMode


```haxe
typedef FileMode = stdgo.GoUInt32;
```


## typedef GlobFS


```haxe
typedef GlobFS = {
	public function open(_name:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.io.fs.File;
	};	// Open opens the named file. When Open returns an error, it should be of type *PathError with the Op field set to "open", the Path field set to name, and the Err field describing the problem. Open should reject attempts to open names that do not satisfy ValidPath(name), returning a *PathError with Err set to ErrInvalid or ErrNotExist.
	public function glob(_pattern:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo.Slice<stdgo.GoString>;
	};	// Glob returns the names of all files matching pattern, providing an implementation of the top-level Glob function.
};
```


## typedef ReadDirFS


```haxe
typedef ReadDirFS = {
	public function readDir(_name:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo.Slice<stdgo._internal.io.fs.DirEntry>;
	};	// ReadDir reads the named directory and returns a list of directory entries sorted by filename.
	public function open(_name:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.io.fs.File;
	};	// Open opens the named file. When Open returns an error, it should be of type *PathError with the Op field set to "open", the Path field set to name, and the Err field describing the problem. Open should reject attempts to open names that do not satisfy ValidPath(name), returning a *PathError with Err set to ErrInvalid or ErrNotExist.
};
```


## typedef ReadDirFile


```haxe
typedef ReadDirFile = {
	public function stat():{
		_1:stdgo.Error;
		_0:stdgo._internal.io.fs.FileInfo;
	};
	public function readDir(_n:stdgo.GoInt):{
		_1:stdgo.Error;
		_0:stdgo.Slice<stdgo._internal.io.fs.DirEntry>;
	};	// ReadDir reads the contents of the directory and returns a slice of up to n DirEntry values in directory order. Subsequent calls on the same file will yield further DirEntry values. If n > 0, ReadDir returns at most n DirEntry structures. In this case, if ReadDir returns an empty slice, it will return a non-nil error explaining why. At the end of a directory, the error is io.EOF. (ReadDir must return io.EOF itself, not an error wrapping io.EOF.) If n <= 0, ReadDir returns all the DirEntry values from the directory in a single slice. In this case, if ReadDir succeeds (reads all the way to the end of the directory), it returns the slice and a nil error. If it encounters an error before the end of the directory, ReadDir returns the DirEntry list read until that point and a non-nil error.
	public function read(_0:stdgo.Slice<stdgo.GoUInt8>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};
	public function close():stdgo.Error;
};
```


## typedef ReadFileFS


```haxe
typedef ReadFileFS = {
	public function readFile(_name:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo.Slice<stdgo.GoUInt8>;
	};	// ReadFile reads the named file and returns its contents. A successful call returns a nil error, not io.EOF. (Because ReadFile reads the whole file, the expected EOF from the final Read is not treated as an error to be reported.) The caller is permitted to modify the returned byte slice. This method should return a copy of the underlying data.
	public function open(_name:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.io.fs.File;
	};	// Open opens the named file. When Open returns an error, it should be of type *PathError with the Op field set to "open", the Path field set to name, and the Err field describing the problem. Open should reject attempts to open names that do not satisfy ValidPath(name), returning a *PathError with Err set to ErrInvalid or ErrNotExist.
};
```


## typedef StatFS


```haxe
typedef StatFS = {
	public function stat(_name:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.io.fs.FileInfo;
	};	// Stat returns a FileInfo describing the file. If there is an error, it should be of type *PathError.
	public function open(_name:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.io.fs.File;
	};	// Open opens the named file. When Open returns an error, it should be of type *PathError with the Op field set to "open", the Path field set to name, and the Err field describing the problem. Open should reject attempts to open names that do not satisfy ValidPath(name), returning a *PathError with Err set to ErrInvalid or ErrNotExist.
};
```


## typedef SubFS


```haxe
typedef SubFS = {
	public function sub(_dir:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.io.fs.FS;
	};	// Sub returns an FS corresponding to the subtree rooted at dir.
	public function open(_name:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.io.fs.File;
	};	// Open opens the named file. When Open returns an error, it should be of type *PathError with the Op field set to "open", the Path field set to name, and the Err field describing the problem. Open should reject attempts to open names that do not satisfy ValidPath(name), returning a *PathError with Err set to ErrInvalid or ErrNotExist.
};
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = {
	public function timeout():Bool;
};
```


## typedef WalkDirFunc


```haxe
typedef WalkDirFunc = (:stdgo.GoString, :stdgo._internal.io.fs.DirEntry, :stdgo.Error):stdgo.Error;
```


