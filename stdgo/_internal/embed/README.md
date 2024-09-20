# Module: `stdgo._internal.embed`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _sortSearch(_n:stdgo.GoInt, _f:()):stdgo.GoInt`](<#function-_sortsearch>)

- [`function _split(_name:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}`](<#function-_split>)

- [`function _trimSlash(_name:stdgo.GoString):stdgo.GoString`](<#function-_trimslash>)

- [class FS](<#class-fs>)

  - [`function new(?_files:stdgo.Ref<stdgo.Slice<stdgo._internal.embed.T_file>>):Void`](<#fs-function-new>)

- [class T\_file](<#class-t_file>)

  - [`function new(?_name:stdgo.GoString, ?_data:stdgo.GoString, ?_hash:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#t_file-function-new>)

- [class T\_openDir](<#class-t_opendir>)

  - [`function new(?_f:stdgo.Ref<stdgo._internal.embed.T_file>, ?_files:stdgo.Slice<stdgo._internal.embed.T_file>, ?_offset:stdgo.GoInt):Void`](<#t_opendir-function-new>)

- [class T\_openFile](<#class-t_openfile>)

  - [`function new(?_f:stdgo.Ref<stdgo._internal.embed.T_file>, ?_offset:stdgo.GoInt64):Void`](<#t_openfile-function-new>)

# Variables


```haxe
import stdgo._internal.embed.Embed__trimSlash
```


```haxe
var _dotFile:stdgo.Ref<stdgo._internal.embed.T_file>
```


```haxe
var __0:stdgo._internal.io.fs.ReadDirFS
```


```haxe
var __1:stdgo._internal.io.fs.ReadFileFS
```


```haxe
var __2:stdgo._internal.io.fs.FileInfo
```


```haxe
var __3:stdgo._internal.io.fs.DirEntry
```


```haxe
var __4:stdgo._internal.io.Seeker
```


```haxe
var __5:stdgo._internal.io.ReaderAt
```


# Functions


```haxe
import stdgo._internal.embed.Embed__trimSlash
```


## function \_sortSearch


```haxe
function _sortSearch(_n:stdgo.GoInt, _f:()):stdgo.GoInt
```


[\(view code\)](<./Embed__trimSlash.hx#L2>)


## function \_split


```haxe
function _split(_name:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Embed__trimSlash.hx#L2>)


## function \_trimSlash


```haxe
function _trimSlash(_name:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Embed__trimSlash.hx#L2>)


# Classes


```haxe
import stdgo._internal.embed.*
```


## class FS


```haxe
var _files:stdgo.Ref<stdgo.Slice<stdgo._internal.embed.T_file>>
```


### FS function new


```haxe
function new(?_files:stdgo.Ref<stdgo.Slice<stdgo._internal.embed.T_file>>):Void
```


[\(view code\)](<./Embed_FS.hx#L4>)


## class T\_file


```haxe
var _data:stdgo.GoString
```


```haxe
var _hash:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _name:stdgo.GoString
```


### T\_file function new


```haxe
function new(?_name:stdgo.GoString, ?_data:stdgo.GoString, ?_hash:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Embed_T_file.hx#L6>)


## class T\_openDir


```haxe
var _f:stdgo.Ref<stdgo._internal.embed.T_file>
```


```haxe
var _files:stdgo.Slice<stdgo._internal.embed.T_file>
```


```haxe
var _offset:stdgo.GoInt
```


### T\_openDir function new


```haxe
function new(?_f:stdgo.Ref<stdgo._internal.embed.T_file>, ?_files:stdgo.Slice<stdgo._internal.embed.T_file>, ?_offset:stdgo.GoInt):Void
```


[\(view code\)](<./Embed_T_openDir.hx#L6>)


## class T\_openFile


```haxe
var _f:stdgo.Ref<stdgo._internal.embed.T_file>
```


```haxe
var _offset:stdgo.GoInt64
```


### T\_openFile function new


```haxe
function new(?_f:stdgo.Ref<stdgo._internal.embed.T_file>, ?_offset:stdgo.GoInt64):Void
```


[\(view code\)](<./Embed_T_openFile.hx#L5>)


