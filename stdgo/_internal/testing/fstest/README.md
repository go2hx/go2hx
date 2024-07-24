# Module: `stdgo._internal.testing.fstest`

[(view library index)](../../../stdgo.md)


# Overview



# Index


- [Variables](<#variables>)

- [`function _formatEntry(_entry:stdgo._internal.io.fs.DirEntry):stdgo.GoString`](<#function-_formatentry>)

- [`function _formatInfo(_info:stdgo._internal.io.fs.FileInfo):stdgo.GoString`](<#function-_formatinfo>)

- [`function _formatInfoEntry(_info:stdgo._internal.io.fs.FileInfo):stdgo.GoString`](<#function-_formatinfoentry>)

- [`function _testFS(_fsys:stdgo._internal.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error`](<#function-_testfs>)

- [`function testDash(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdash>)

- [`function testFS(_fsys:stdgo._internal.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error`](<#function-testfs>)

- [`function testMapFS(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmapfs>)

- [`function testMapFSChmodDot(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmapfschmoddot>)

- [`function testShuffledFS(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testshuffledfs>)

- [`function testSymlink(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsymlink>)

- [class MapFile](<#class-mapfile>)

  - [`function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?mode:stdgo._internal.io.fs.FileMode, ?modTime:stdgo._internal.time.Time, ?sys:stdgo.AnyInterface):Void`](<#mapfile-function-new>)

- [typedef MapFS](<#typedef-mapfs>)

- [typedef T\_shuffledFS](<#typedef-t_shuffledfs>)

# Variables


```haxe
import stdgo._internal.testing.fstest.Fstest
```


```haxe
var __2:stdgo._internal.io.fs.FS
```


```haxe
var __3:stdgo._internal.io.fs.File
```


# Functions


```haxe
import stdgo._internal.testing.fstest.Fstest
```


## function \_formatEntry


```haxe
function _formatEntry(_entry:stdgo._internal.io.fs.DirEntry):stdgo.GoString
```


[\(view code\)](<./Fstest.hx#L174>)


## function \_formatInfo


```haxe
function _formatInfo(_info:stdgo._internal.io.fs.FileInfo):stdgo.GoString
```


[\(view code\)](<./Fstest.hx#L176>)


## function \_formatInfoEntry


```haxe
function _formatInfoEntry(_info:stdgo._internal.io.fs.FileInfo):stdgo.GoString
```


[\(view code\)](<./Fstest.hx#L175>)


## function \_testFS


```haxe
function _testFS(_fsys:stdgo._internal.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error
```


[\(view code\)](<./Fstest.hx#L173>)


## function testDash


```haxe
function testDash(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fstest.hx#L178>)


## function testFS


```haxe
function testFS(_fsys:stdgo._internal.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error
```


[\(view code\)](<./Fstest.hx#L172>)


## function testMapFS


```haxe
function testMapFS(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fstest.hx#L170>)


## function testMapFSChmodDot


```haxe
function testMapFSChmodDot(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fstest.hx#L171>)


## function testShuffledFS


```haxe
function testShuffledFS(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fstest.hx#L179>)


## function testSymlink


```haxe
function testSymlink(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fstest.hx#L177>)


# Classes


```haxe
import stdgo._internal.testing.fstest.*
```


## class MapFile


```haxe
var data:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var modTime:stdgo._internal.time.Time
```


```haxe
var mode:stdgo._internal.io.fs.FileMode
```


```haxe
var sys:stdgo.AnyInterface
```


### MapFile function new


```haxe
function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?mode:stdgo._internal.io.fs.FileMode, ?modTime:stdgo._internal.time.Time, ?sys:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fstest.hx#L10>)


# Typedefs


```haxe
import stdgo._internal.testing.fstest.*
```


## typedef MapFS


```haxe
typedef MapFS = stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.testing.fstest.MapFile>>;
```


## typedef T\_shuffledFS


```haxe
typedef T_shuffledFS = stdgo._internal.testing.fstest.MapFS;
```


