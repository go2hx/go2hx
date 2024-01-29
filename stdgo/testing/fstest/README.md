# Module: `stdgo.testing.fstest`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _formatEntry(_entry:stdgo._internal.io.fs.DirEntry):Void`](<#function-_formatentry>)

- [`function _formatInfo(_info:stdgo._internal.io.fs.FileInfo):Void`](<#function-_formatinfo>)

- [`function _formatInfoEntry(_info:stdgo._internal.io.fs.FileInfo):Void`](<#function-_formatinfoentry>)

- [`function _testFS(_fsys:stdgo._internal.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):Void`](<#function-_testfs>)

- [`function testDash(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdash>)

- [`function testFS(_fsys:stdgo._internal.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):Void`](<#function-testfs>)

- [`function testMapFS(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmapfs>)

- [`function testMapFSChmodDot(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmapfschmoddot>)

- [`function testShuffledFS(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testshuffledfs>)

- [`function testSymlink(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsymlink>)

- [typedef MapFS](<#typedef-mapfs>)

- [typedef MapFS\_asInterface](<#typedef-mapfs_asinterface>)

- [typedef MapFS\_static\_extension](<#typedef-mapfs_static_extension>)

- [typedef MapFile](<#typedef-mapfile>)

- [typedef T\_fsOnly](<#typedef-t_fsonly>)

- [typedef T\_fsOnly\_asInterface](<#typedef-t_fsonly_asinterface>)

- [typedef T\_fsOnly\_static\_extension](<#typedef-t_fsonly_static_extension>)

- [typedef T\_fsTester](<#typedef-t_fstester>)

- [typedef T\_fsTester\_asInterface](<#typedef-t_fstester_asinterface>)

- [typedef T\_fsTester\_static\_extension](<#typedef-t_fstester_static_extension>)

- [typedef T\_mapDir](<#typedef-t_mapdir>)

- [typedef T\_mapDir\_asInterface](<#typedef-t_mapdir_asinterface>)

- [typedef T\_mapDir\_static\_extension](<#typedef-t_mapdir_static_extension>)

- [typedef T\_mapFileInfo](<#typedef-t_mapfileinfo>)

- [typedef T\_mapFileInfo\_asInterface](<#typedef-t_mapfileinfo_asinterface>)

- [typedef T\_mapFileInfo\_static\_extension](<#typedef-t_mapfileinfo_static_extension>)

- [typedef T\_noSub](<#typedef-t_nosub>)

- [typedef T\_noSub\_asInterface](<#typedef-t_nosub_asinterface>)

- [typedef T\_noSub\_static\_extension](<#typedef-t_nosub_static_extension>)

- [typedef T\_openMapFile](<#typedef-t_openmapfile>)

- [typedef T\_openMapFile\_asInterface](<#typedef-t_openmapfile_asinterface>)

- [typedef T\_openMapFile\_static\_extension](<#typedef-t_openmapfile_static_extension>)

- [typedef T\_shuffledFS](<#typedef-t_shuffledfs>)

- [typedef T\_shuffledFS\_asInterface](<#typedef-t_shuffledfs_asinterface>)

- [typedef T\_shuffledFS\_static\_extension](<#typedef-t_shuffledfs_static_extension>)

- [typedef T\_shuffledFile](<#typedef-t_shuffledfile>)

- [typedef T\_shuffledFile\_asInterface](<#typedef-t_shuffledfile_asinterface>)

- [typedef T\_shuffledFile\_static\_extension](<#typedef-t_shuffledfile_static_extension>)

# Variables


```haxe
import stdgo.testing.fstest.Fstest
```


```haxe
var __2:Dynamic
```


```haxe
var __3:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


# Functions


```haxe
import stdgo.testing.fstest.Fstest
```


## function \_formatEntry


```haxe
function _formatEntry(_entry:stdgo._internal.io.fs.DirEntry):Void
```


[\(view code\)](<./Fstest.hx#L19>)


## function \_formatInfo


```haxe
function _formatInfo(_info:stdgo._internal.io.fs.FileInfo):Void
```


[\(view code\)](<./Fstest.hx#L21>)


## function \_formatInfoEntry


```haxe
function _formatInfoEntry(_info:stdgo._internal.io.fs.FileInfo):Void
```


[\(view code\)](<./Fstest.hx#L20>)


## function \_testFS


```haxe
function _testFS(_fsys:stdgo._internal.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Fstest.hx#L18>)


## function testDash


```haxe
function testDash(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fstest.hx#L23>)


## function testFS


```haxe
function testFS(_fsys:stdgo._internal.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Fstest.hx#L17>)


## function testMapFS


```haxe
function testMapFS(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fstest.hx#L15>)


## function testMapFSChmodDot


```haxe
function testMapFSChmodDot(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fstest.hx#L16>)


## function testShuffledFS


```haxe
function testShuffledFS(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fstest.hx#L24>)


## function testSymlink


```haxe
function testSymlink(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fstest.hx#L22>)


# Typedefs


```haxe
import stdgo.testing.fstest.*
```


## typedef MapFS


```haxe
typedef MapFS = stdgo._internal.testing.fstest.MapFS;
```


## typedef MapFS\_asInterface


```haxe
typedef MapFS_asInterface = Dynamic;
```


## typedef MapFS\_static\_extension


```haxe
typedef MapFS_static_extension = Dynamic;
```


## typedef MapFile


```haxe
typedef MapFile = Dynamic;
```


## typedef T\_fsOnly


```haxe
typedef T_fsOnly = Dynamic;
```


## typedef T\_fsOnly\_asInterface


```haxe
typedef T_fsOnly_asInterface = Dynamic;
```


## typedef T\_fsOnly\_static\_extension


```haxe
typedef T_fsOnly_static_extension = Dynamic;
```


## typedef T\_fsTester


```haxe
typedef T_fsTester = Dynamic;
```


## typedef T\_fsTester\_asInterface


```haxe
typedef T_fsTester_asInterface = Dynamic;
```


## typedef T\_fsTester\_static\_extension


```haxe
typedef T_fsTester_static_extension = Dynamic;
```


## typedef T\_mapDir


```haxe
typedef T_mapDir = Dynamic;
```


## typedef T\_mapDir\_asInterface


```haxe
typedef T_mapDir_asInterface = Dynamic;
```


## typedef T\_mapDir\_static\_extension


```haxe
typedef T_mapDir_static_extension = Dynamic;
```


## typedef T\_mapFileInfo


```haxe
typedef T_mapFileInfo = Dynamic;
```


## typedef T\_mapFileInfo\_asInterface


```haxe
typedef T_mapFileInfo_asInterface = Dynamic;
```


## typedef T\_mapFileInfo\_static\_extension


```haxe
typedef T_mapFileInfo_static_extension = Dynamic;
```


## typedef T\_noSub


```haxe
typedef T_noSub = Dynamic;
```


## typedef T\_noSub\_asInterface


```haxe
typedef T_noSub_asInterface = Dynamic;
```


## typedef T\_noSub\_static\_extension


```haxe
typedef T_noSub_static_extension = Dynamic;
```


## typedef T\_openMapFile


```haxe
typedef T_openMapFile = Dynamic;
```


## typedef T\_openMapFile\_asInterface


```haxe
typedef T_openMapFile_asInterface = Dynamic;
```


## typedef T\_openMapFile\_static\_extension


```haxe
typedef T_openMapFile_static_extension = Dynamic;
```


## typedef T\_shuffledFS


```haxe
typedef T_shuffledFS = stdgo._internal.testing.fstest.T_shuffledFS;
```


## typedef T\_shuffledFS\_asInterface


```haxe
typedef T_shuffledFS_asInterface = Dynamic;
```


## typedef T\_shuffledFS\_static\_extension


```haxe
typedef T_shuffledFS_static_extension = Dynamic;
```


## typedef T\_shuffledFile


```haxe
typedef T_shuffledFile = Dynamic;
```


## typedef T\_shuffledFile\_asInterface


```haxe
typedef T_shuffledFile_asInterface = Dynamic;
```


## typedef T\_shuffledFile\_static\_extension


```haxe
typedef T_shuffledFile_static_extension = Dynamic;
```


