# Module: `stdgo.path.filepath`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _abs(_path:stdgo.GoString):Void`](<#function-_abs>)

- [`function _cleanGlobPath(_path:stdgo.GoString):Void`](<#function-_cleanglobpath>)

- [`function _cleanGlobPathWindows(_path:stdgo.GoString):Void`](<#function-_cleanglobpathwindows>)

- [`function _evalSymlinks(_path:stdgo.GoString):Void`](<#function-_evalsymlinks>)

- [`function _getEsc(_chunk:stdgo.GoString):Void`](<#function-_getesc>)

- [`function _glob(_dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):Void`](<#function-_glob>)

- [`function _globWithLimit(_pattern:stdgo.GoString, _depth:stdgo.GoInt):Void`](<#function-_globwithlimit>)

- [`function _hasMeta(_path:stdgo.GoString):Void`](<#function-_hasmeta>)

- [`function _isLocal(_path:stdgo.GoString):Void`](<#function-_islocal>)

- [`function _join(_elem:stdgo.Slice<stdgo.GoString>):Void`](<#function-_join>)

- [`function _matchChunk(_chunk:stdgo.GoString, _s:stdgo.GoString):Void`](<#function-_matchchunk>)

- [`function _readDir(_dirname:stdgo.GoString):Void`](<#function-_readdir>)

- [`function _readDirNames(_dirname:stdgo.GoString):Void`](<#function-_readdirnames>)

- [`function _sameWord(_a:stdgo.GoString, _b:stdgo.GoString):Void`](<#function-_sameword>)

- [`function _scanChunk(_pattern:stdgo.GoString):Void`](<#function-_scanchunk>)

- [`function _splitList(_path:stdgo.GoString):Void`](<#function-_splitlist>)

- [`function _unixAbs(_path:stdgo.GoString):Void`](<#function-_unixabs>)

- [`function _unixIsLocal(_path:stdgo.GoString):Void`](<#function-_unixislocal>)

- [`function _volumeNameLen(_path:stdgo.GoString):Void`](<#function-_volumenamelen>)

- [`function _walk(_path:stdgo.GoString, _info:stdgo._internal.io.fs.FileInfo, _walkFn:stdgo.path.filepath.WalkFunc):Void`](<#function-_walk>)

- [`function _walkDir(_path:stdgo.GoString, _d:stdgo._internal.io.fs.DirEntry, _walkDirFn:stdgo._internal.io.fs.WalkDirFunc):Void`](<#function-_walkdir>)

- [`function _walkSymlinks(_path:stdgo.GoString):Void`](<#function-_walksymlinks>)

- [`function abs(_path:stdgo.GoString):Void`](<#function-abs>)

- [`function base(_path:stdgo.GoString):Void`](<#function-base>)

- [`function clean(_path:stdgo.GoString):Void`](<#function-clean>)

- [`function dir(_path:stdgo.GoString):Void`](<#function-dir>)

- [`function evalSymlinks(_path:stdgo.GoString):Void`](<#function-evalsymlinks>)

- [`function ext(_path:stdgo.GoString):Void`](<#function-ext>)

- [`function fromSlash(_path:stdgo.GoString):Void`](<#function-fromslash>)

- [`function glob(_pattern:stdgo.GoString):Void`](<#function-glob>)

- [`function hasPrefix(_p:stdgo.GoString, _prefix:stdgo.GoString):Void`](<#function-hasprefix>)

- [`function isAbs(_path:stdgo.GoString):Void`](<#function-isabs>)

- [`function isLocal(_path:stdgo.GoString):Void`](<#function-islocal>)

- [`function join(_elem:haxe.Rest<stdgo.GoString>):Void`](<#function-join>)

- [`function match(_pattern:stdgo.GoString, _name:stdgo.GoString):Void`](<#function-match>)

- [`function rel(_basepath:stdgo.GoString, _targpath:stdgo.GoString):Void`](<#function-rel>)

- [`function split(_path:stdgo.GoString):Void`](<#function-split>)

- [`function splitList(_path:stdgo.GoString):Void`](<#function-splitlist>)

- [`function toSlash(_path:stdgo.GoString):Void`](<#function-toslash>)

- [`function volumeName(_path:stdgo.GoString):Void`](<#function-volumename>)

- [`function walk(_root:stdgo.GoString, _fn:stdgo.path.filepath.WalkFunc):Void`](<#function-walk>)

- [`function walkDir(_root:stdgo.GoString, _fn:stdgo._internal.io.fs.WalkDirFunc):Void`](<#function-walkdir>)

- [typedef T\_lazybuf](<#typedef-t_lazybuf>)

- [typedef T\_lazybuf\_asInterface](<#typedef-t_lazybuf_asinterface>)

- [typedef T\_lazybuf\_static\_extension](<#typedef-t_lazybuf_static_extension>)

- [typedef T\_statDirEntry](<#typedef-t_statdirentry>)

- [typedef T\_statDirEntry\_asInterface](<#typedef-t_statdirentry_asinterface>)

- [typedef T\_statDirEntry\_static\_extension](<#typedef-t_statdirentry_static_extension>)

- [typedef WalkFunc](<#typedef-walkfunc>)

# Variables


```haxe
import stdgo.path.filepath.Filepath
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _lstat:Dynamic
```


```haxe
var errBadPattern:Dynamic
```


```haxe
var listSeparator:Dynamic
```


```haxe
var lstatP:Dynamic
```


```haxe
var separator:Dynamic
```


```haxe
var skipAll:Dynamic
```


```haxe
var skipDir:Dynamic
```


# Functions


```haxe
import stdgo.path.filepath.Filepath
```


## function \_abs


```haxe
function _abs(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L50>)


## function \_cleanGlobPath


```haxe
function _cleanGlobPath(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L19>)


## function \_cleanGlobPathWindows


```haxe
function _cleanGlobPathWindows(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L20>)


## function \_evalSymlinks


```haxe
function _evalSymlinks(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L54>)


## function \_getEsc


```haxe
function _getEsc(_chunk:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L16>)


## function \_glob


```haxe
function _glob(_dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Filepath.hx#L21>)


## function \_globWithLimit


```haxe
function _globWithLimit(_pattern:stdgo.GoString, _depth:stdgo.GoInt):Void
```


[\(view code\)](<./Filepath.hx#L18>)


## function \_hasMeta


```haxe
function _hasMeta(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L22>)


## function \_isLocal


```haxe
function _isLocal(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L45>)


## function \_join


```haxe
function _join(_elem:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Filepath.hx#L51>)


## function \_matchChunk


```haxe
function _matchChunk(_chunk:stdgo.GoString, _s:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L15>)


## function \_readDir


```haxe
function _readDir(_dirname:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L40>)


## function \_readDirNames


```haxe
function _readDirNames(_dirname:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L41>)


## function \_sameWord


```haxe
function _sameWord(_a:stdgo.GoString, _b:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L52>)


## function \_scanChunk


```haxe
function _scanChunk(_pattern:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L14>)


## function \_splitList


```haxe
function _splitList(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L49>)


## function \_unixAbs


```haxe
function _unixAbs(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L34>)


## function \_unixIsLocal


```haxe
function _unixIsLocal(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L25>)


## function \_volumeNameLen


```haxe
function _volumeNameLen(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L47>)


## function \_walk


```haxe
function _walk(_path:stdgo.GoString, _info:stdgo._internal.io.fs.FileInfo, _walkFn:stdgo.path.filepath.WalkFunc):Void
```


[\(view code\)](<./Filepath.hx#L37>)


## function \_walkDir


```haxe
function _walkDir(_path:stdgo.GoString, _d:stdgo._internal.io.fs.DirEntry, _walkDirFn:stdgo._internal.io.fs.WalkDirFunc):Void
```


[\(view code\)](<./Filepath.hx#L36>)


## function \_walkSymlinks


```haxe
function _walkSymlinks(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L53>)


## function abs


```haxe
function abs(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L33>)


## function base


```haxe
function base(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L42>)


## function clean


```haxe
function clean(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L23>)


## function dir


```haxe
function dir(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L43>)


## function evalSymlinks


```haxe
function evalSymlinks(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L32>)


## function ext


```haxe
function ext(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L31>)


## function fromSlash


```haxe
function fromSlash(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L27>)


## function glob


```haxe
function glob(_pattern:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L17>)


## function hasPrefix


```haxe
function hasPrefix(_p:stdgo.GoString, _prefix:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L48>)


## function isAbs


```haxe
function isAbs(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L46>)


## function isLocal


```haxe
function isLocal(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L24>)


## function join


```haxe
function join(_elem:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Filepath.hx#L30>)


## function match


```haxe
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L13>)


## function rel


```haxe
function rel(_basepath:stdgo.GoString, _targpath:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L35>)


## function split


```haxe
function split(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L29>)


## function splitList


```haxe
function splitList(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L28>)


## function toSlash


```haxe
function toSlash(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L26>)


## function volumeName


```haxe
function volumeName(_path:stdgo.GoString):Void
```


[\(view code\)](<./Filepath.hx#L44>)


## function walk


```haxe
function walk(_root:stdgo.GoString, _fn:stdgo.path.filepath.WalkFunc):Void
```


[\(view code\)](<./Filepath.hx#L39>)


## function walkDir


```haxe
function walkDir(_root:stdgo.GoString, _fn:stdgo._internal.io.fs.WalkDirFunc):Void
```


[\(view code\)](<./Filepath.hx#L38>)


# Typedefs


```haxe
import stdgo.path.filepath.*
```


## typedef T\_lazybuf


```haxe
typedef T_lazybuf = Dynamic;
```


## typedef T\_lazybuf\_asInterface


```haxe
typedef T_lazybuf_asInterface = Dynamic;
```


## typedef T\_lazybuf\_static\_extension


```haxe
typedef T_lazybuf_static_extension = Dynamic;
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


## typedef WalkFunc


```haxe
typedef WalkFunc = stdgo._internal.path.filepath.WalkFunc;
```


