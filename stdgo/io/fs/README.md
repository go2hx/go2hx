# Module: `stdgo.io.fs`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _cleanGlobPath(_path:stdgo.GoString):Void`](<#function-_cleanglobpath>)

- [`function _errClosed():Void`](<#function-_errclosed>)

- [`function _errExist():Void`](<#function-_errexist>)

- [`function _errInvalid():Void`](<#function-_errinvalid>)

- [`function _errNotExist():Void`](<#function-_errnotexist>)

- [`function _errPermission():Void`](<#function-_errpermission>)

- [`function _glob(_fs:stdgo.io.fs.FS, _dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):Void`](<#function-_glob>)

- [`function _globWithLimit(_fsys:stdgo.io.fs.FS, _pattern:stdgo.GoString, _depth:stdgo.GoInt):Void`](<#function-_globwithlimit>)

- [`function _hasMeta(_path:stdgo.GoString):Void`](<#function-_hasmeta>)

- [`function _walkDir(_fsys:stdgo.io.fs.FS, _name:stdgo.GoString, _d:stdgo.io.fs.DirEntry, _walkDirFn:stdgo.io.fs.WalkDirFunc):Void`](<#function-_walkdir>)

- [`function fileInfoToDirEntry(_info:stdgo.io.fs.FileInfo):Void`](<#function-fileinfotodirentry>)

- [`function formatDirEntry(_dir:stdgo.io.fs.DirEntry):Void`](<#function-formatdirentry>)

- [`function formatFileInfo(_info:stdgo.io.fs.FileInfo):Void`](<#function-formatfileinfo>)

- [`function glob(_fsys:stdgo.io.fs.FS, _pattern:stdgo.GoString):Void`](<#function-glob>)

- [`function readDir(_fsys:stdgo.io.fs.FS, _name:stdgo.GoString):Void`](<#function-readdir>)

- [`function readFile(_fsys:stdgo.io.fs.FS, _name:stdgo.GoString):Void`](<#function-readfile>)

- [`function stat(_fsys:stdgo.io.fs.FS, _name:stdgo.GoString):Void`](<#function-stat>)

- [`function sub(_fsys:stdgo.io.fs.FS, _dir:stdgo.GoString):Void`](<#function-sub>)

- [`function validPath(_name:stdgo.GoString):Void`](<#function-validpath>)

- [`function walkDir(_fsys:stdgo.io.fs.FS, _root:stdgo.GoString, _fn:stdgo.io.fs.WalkDirFunc):Void`](<#function-walkdir>)

- [typedef DirEntry](<#typedef-direntry>)

- [typedef FS](<#typedef-fs>)

- [typedef File](<#typedef-file>)

- [typedef FileInfo](<#typedef-fileinfo>)

- [typedef FileMode](<#typedef-filemode>)

- [typedef FileMode\_asInterface](<#typedef-filemode_asinterface>)

- [typedef FileMode\_static\_extension](<#typedef-filemode_static_extension>)

- [typedef GlobFS](<#typedef-globfs>)

- [typedef PathError](<#typedef-patherror>)

- [typedef PathError\_asInterface](<#typedef-patherror_asinterface>)

- [typedef PathError\_static\_extension](<#typedef-patherror_static_extension>)

- [typedef ReadDirFS](<#typedef-readdirfs>)

- [typedef ReadDirFile](<#typedef-readdirfile>)

- [typedef ReadFileFS](<#typedef-readfilefs>)

- [typedef StatFS](<#typedef-statfs>)

- [typedef SubFS](<#typedef-subfs>)

- [typedef T\_\_interface\_0](<#typedef-t__interface_0>)

- [typedef T\_dirInfo](<#typedef-t_dirinfo>)

- [typedef T\_dirInfo\_asInterface](<#typedef-t_dirinfo_asinterface>)

- [typedef T\_dirInfo\_static\_extension](<#typedef-t_dirinfo_static_extension>)

- [typedef T\_statDirEntry](<#typedef-t_statdirentry>)

- [typedef T\_statDirEntry\_asInterface](<#typedef-t_statdirentry_asinterface>)

- [typedef T\_statDirEntry\_static\_extension](<#typedef-t_statdirentry_static_extension>)

- [typedef T\_subFS](<#typedef-t_subfs>)

- [typedef T\_subFS\_asInterface](<#typedef-t_subfs_asinterface>)

- [typedef T\_subFS\_static\_extension](<#typedef-t_subfs_static_extension>)

- [typedef WalkDirFunc](<#typedef-walkdirfunc>)

# Variables


```haxe
import stdgo.io.fs.Fs
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var errClosed:Dynamic
```


```haxe
var errExist:Dynamic
```


```haxe
var errInvalid:Dynamic
```


```haxe
var errNotExist:Dynamic
```


```haxe
var errPermission:Dynamic
```


```haxe
var modeAppend:Dynamic
```


```haxe
var modeCharDevice:Dynamic
```


```haxe
var modeDevice:Dynamic
```


```haxe
var modeDir:Dynamic
```


```haxe
var modeExclusive:Dynamic
```


```haxe
var modeIrregular:Dynamic
```


```haxe
var modeNamedPipe:Dynamic
```


```haxe
var modePerm:Dynamic
```


```haxe
var modeSetgid:Dynamic
```


```haxe
var modeSetuid:Dynamic
```


```haxe
var modeSocket:Dynamic
```


```haxe
var modeSticky:Dynamic
```


```haxe
var modeSymlink:Dynamic
```


```haxe
var modeTemporary:Dynamic
```


```haxe
var modeType:Dynamic
```


```haxe
var skipAll:Dynamic
```


```haxe
var skipDir:Dynamic
```


# Functions


```haxe
import stdgo.io.fs.Fs
```


## function \_cleanGlobPath


```haxe
function _cleanGlobPath(_path:stdgo.GoString):Void
```


[\(view code\)](<./Fs.hx#L52>)


## function \_errClosed


```haxe
function _errClosed():Void
```


[\(view code\)](<./Fs.hx#L49>)


## function \_errExist


```haxe
function _errExist():Void
```


[\(view code\)](<./Fs.hx#L47>)


## function \_errInvalid


```haxe
function _errInvalid():Void
```


[\(view code\)](<./Fs.hx#L45>)


## function \_errNotExist


```haxe
function _errNotExist():Void
```


[\(view code\)](<./Fs.hx#L48>)


## function \_errPermission


```haxe
function _errPermission():Void
```


[\(view code\)](<./Fs.hx#L46>)


## function \_glob


```haxe
function _glob(_fs:stdgo.io.fs.FS, _dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Fs.hx#L53>)


## function \_globWithLimit


```haxe
function _globWithLimit(_fsys:stdgo.io.fs.FS, _pattern:stdgo.GoString, _depth:stdgo.GoInt):Void
```


[\(view code\)](<./Fs.hx#L51>)


## function \_hasMeta


```haxe
function _hasMeta(_path:stdgo.GoString):Void
```


[\(view code\)](<./Fs.hx#L54>)


## function \_walkDir


```haxe
function _walkDir(_fsys:stdgo.io.fs.FS, _name:stdgo.GoString, _d:stdgo.io.fs.DirEntry, _walkDirFn:stdgo.io.fs.WalkDirFunc):Void
```


[\(view code\)](<./Fs.hx#L60>)


## function fileInfoToDirEntry


```haxe
function fileInfoToDirEntry(_info:stdgo.io.fs.FileInfo):Void
```


[\(view code\)](<./Fs.hx#L56>)


## function formatDirEntry


```haxe
function formatDirEntry(_dir:stdgo.io.fs.DirEntry):Void
```


[\(view code\)](<./Fs.hx#L43>)


## function formatFileInfo


```haxe
function formatFileInfo(_info:stdgo.io.fs.FileInfo):Void
```


[\(view code\)](<./Fs.hx#L42>)


## function glob


```haxe
function glob(_fsys:stdgo.io.fs.FS, _pattern:stdgo.GoString):Void
```


[\(view code\)](<./Fs.hx#L50>)


## function readDir


```haxe
function readDir(_fsys:stdgo.io.fs.FS, _name:stdgo.GoString):Void
```


[\(view code\)](<./Fs.hx#L55>)


## function readFile


```haxe
function readFile(_fsys:stdgo.io.fs.FS, _name:stdgo.GoString):Void
```


[\(view code\)](<./Fs.hx#L57>)


## function stat


```haxe
function stat(_fsys:stdgo.io.fs.FS, _name:stdgo.GoString):Void
```


[\(view code\)](<./Fs.hx#L58>)


## function sub


```haxe
function sub(_fsys:stdgo.io.fs.FS, _dir:stdgo.GoString):Void
```


[\(view code\)](<./Fs.hx#L59>)


## function validPath


```haxe
function validPath(_name:stdgo.GoString):Void
```


[\(view code\)](<./Fs.hx#L44>)


## function walkDir


```haxe
function walkDir(_fsys:stdgo.io.fs.FS, _root:stdgo.GoString, _fn:stdgo.io.fs.WalkDirFunc):Void
```


[\(view code\)](<./Fs.hx#L61>)


# Typedefs


```haxe
import stdgo.io.fs.*
```


## typedef DirEntry


```haxe
typedef DirEntry = stdgo._internal.io.fs.DirEntry;
```


## typedef FS


```haxe
typedef FS = stdgo._internal.io.fs.FS;
```


## typedef File


```haxe
typedef File = stdgo._internal.io.fs.File;
```


## typedef FileInfo


```haxe
typedef FileInfo = stdgo._internal.io.fs.FileInfo;
```


## typedef FileMode


```haxe
typedef FileMode = stdgo._internal.io.fs.FileMode;
```


## typedef FileMode\_asInterface


```haxe
typedef FileMode_asInterface = Dynamic;
```


## typedef FileMode\_static\_extension


```haxe
typedef FileMode_static_extension = Dynamic;
```


## typedef GlobFS


```haxe
typedef GlobFS = stdgo._internal.io.fs.GlobFS;
```


## typedef PathError


```haxe
typedef PathError = Dynamic;
```


## typedef PathError\_asInterface


```haxe
typedef PathError_asInterface = Dynamic;
```


## typedef PathError\_static\_extension


```haxe
typedef PathError_static_extension = Dynamic;
```


## typedef ReadDirFS


```haxe
typedef ReadDirFS = stdgo._internal.io.fs.ReadDirFS;
```


## typedef ReadDirFile


```haxe
typedef ReadDirFile = stdgo._internal.io.fs.ReadDirFile;
```


## typedef ReadFileFS


```haxe
typedef ReadFileFS = stdgo._internal.io.fs.ReadFileFS;
```


## typedef StatFS


```haxe
typedef StatFS = stdgo._internal.io.fs.StatFS;
```


## typedef SubFS


```haxe
typedef SubFS = stdgo._internal.io.fs.SubFS;
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = stdgo._internal.io.fs.T__interface_0;
```


## typedef T\_dirInfo


```haxe
typedef T_dirInfo = Dynamic;
```


## typedef T\_dirInfo\_asInterface


```haxe
typedef T_dirInfo_asInterface = Dynamic;
```


## typedef T\_dirInfo\_static\_extension


```haxe
typedef T_dirInfo_static_extension = Dynamic;
```


## typedef T\_statDirEntry


```haxe
typedef T_statDirEntry = Dynamic;
```


## typedef T\_statDirEntry\_asInterface


```haxe
typedef T_statDirEntry_asInterface = Dynamic;
```


## typedef T\_statDirEntry\_static\_extension


```haxe
typedef T_statDirEntry_static_extension = Dynamic;
```


## typedef T\_subFS


```haxe
typedef T_subFS = Dynamic;
```


## typedef T\_subFS\_asInterface


```haxe
typedef T_subFS_asInterface = Dynamic;
```


## typedef T\_subFS\_static\_extension


```haxe
typedef T_subFS_static_extension = Dynamic;
```


## typedef WalkDirFunc


```haxe
typedef WalkDirFunc = stdgo._internal.io.fs.WalkDirFunc;
```


