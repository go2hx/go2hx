# Module: `stdgo.testing.fstest`

[(view library index)](../../stdgo.md)


# Overview


Package fstest implements support for testing implementations and users of file systems. 


<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
Uncaught exception: Null access
Called from stdgo._Slice.$Slice_Impl_.__toArray__(stdgo/Slice.hx:147)
Called from stdgo.testing._Testing.$Testing_Fields_.mainStart(stdgo/testing/Testing.hx:482)
Called from stdgo.testing.fstest_test._Fstest.$Fstest_Fields_.main(stdgo/testing/fstest_test/Fstest.hx:19)
Called from .init(?:1)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
Uncaught exception Null Access
stdgo/Slice.hx:1: character 1 : Called from here
stdgo/Slice.hx:147: characters 10-24 : Called from here
stdgo/testing/Testing.hx:482: characters 14-33 : Called from here
stdgo/testing/fstest_test/Fstest.hx:19: lines 19-21 : Called from here
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [`function _formatEntry(_entry:stdgo.io.fs.DirEntry):stdgo.GoString`](<#function-_formatentry>)

- [`function _formatInfo(_info:stdgo.io.fs.FileInfo):stdgo.GoString`](<#function-_formatinfo>)

- [`function _formatInfoEntry(_info:stdgo.io.fs.FileInfo):stdgo.GoString`](<#function-_formatinfoentry>)

- [`function _testFS(_fsys:stdgo.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error`](<#function-_testfs>)

- [`function testDash(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdash>)

- [`function testFS(_fsys:stdgo.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error`](<#function-testfs>)

- [`function testMapFS(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmapfs>)

- [`function testMapFSChmodDot(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmapfschmoddot>)

- [`function testSymlink(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsymlink>)

- [class MapFS\_static\_extension](<#class-mapfs_static_extension>)

  - [`function glob( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoString>}`](<#mapfs_static_extension-function-glob>)

  - [`function open( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}`](<#mapfs_static_extension-function-open>)

  - [`function readDir( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}`](<#mapfs_static_extension-function-readdir>)

  - [`function readFile( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#mapfs_static_extension-function-readfile>)

  - [`function stat( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#mapfs_static_extension-function-stat>)

  - [`function sub( _dir:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FS}`](<#mapfs_static_extension-function-sub>)

- [class MapFile](<#class-mapfile>)

  - [`function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?mode:Null<stdgo.io.fs.FileMode>, ?modTime:stdgo.time.Time, ?sys:stdgo.AnyInterface):Void`](<#mapfile-function-new>)

- [class T\_fsOnly\_static\_extension](<#class-t_fsonly_static_extension>)

  - [`function open(__self__:stdgo.testing.fstest._Fstest.T_fsOnly, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}`](<#t_fsonly_static_extension-function-open>)

- [class T\_fsTester\_static\_extension](<#class-t_fstester_static_extension>)

  - [`function _checkBadPath(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _open:()):Void`](<#t_fstester_static_extension-function-_checkbadpath>)

  - [`function _checkDir(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _dir:stdgo.GoString):Void`](<#t_fstester_static_extension-function-_checkdir>)

  - [`function _checkDirList(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo.io.fs.DirEntry>, _list2:stdgo.Slice<stdgo.io.fs.DirEntry>):Void`](<#t_fstester_static_extension-function-_checkdirlist>)

  - [`function _checkFile(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _file:stdgo.GoString):Void`](<#t_fstester_static_extension-function-_checkfile>)

  - [`function _checkFileRead(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.GoByte>, _data2:stdgo.Slice<stdgo.GoByte>):Void`](<#t_fstester_static_extension-function-_checkfileread>)

  - [`function _checkGlob(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _dir:stdgo.GoString, _list:stdgo.Slice<stdgo.io.fs.DirEntry>):Void`](<#t_fstester_static_extension-function-_checkglob>)

  - [`function _checkOpen(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _file:stdgo.GoString):Void`](<#t_fstester_static_extension-function-_checkopen>)

  - [`function _checkStat(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _path:stdgo.GoString, _entry:stdgo.io.fs.DirEntry):Void`](<#t_fstester_static_extension-function-_checkstat>)

  - [`function _errorf(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t_fstester_static_extension-function-_errorf>)

  - [`function _openDir(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _dir:stdgo.GoString):stdgo.io.fs.ReadDirFile`](<#t_fstester_static_extension-function-_opendir>)

- [class T\_mapDir\_static\_extension](<#class-t_mapdir_static_extension>)

  - [`function close(_d:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapDir>):stdgo.Error`](<#t_mapdir_static_extension-function-close>)

  - [`function info(__self__:stdgo.testing.fstest._Fstest.T_mapDir):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_mapdir_static_extension-function-info>)

  - [`function isDir(__self__:stdgo.testing.fstest._Fstest.T_mapDir):Bool`](<#t_mapdir_static_extension-function-isdir>)

  - [`function modTime(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.time.Time`](<#t_mapdir_static_extension-function-modtime>)

  - [`function mode(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.io.fs.FileMode`](<#t_mapdir_static_extension-function-mode>)

  - [`function name(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.GoString`](<#t_mapdir_static_extension-function-name>)

  - [`function read(_d:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapDir>, _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_mapdir_static_extension-function-read>)

  - [`function readDir(_d:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapDir>, _count:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}`](<#t_mapdir_static_extension-function-readdir>)

  - [`function size(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.GoInt64`](<#t_mapdir_static_extension-function-size>)

  - [`function stat(_d:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapDir>):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_mapdir_static_extension-function-stat>)

  - [`function sys(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.AnyInterface`](<#t_mapdir_static_extension-function-sys>)

  - [`function type(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.io.fs.FileMode`](<#t_mapdir_static_extension-function-type>)

- [class T\_mapFileInfo\_static\_extension](<#class-t_mapfileinfo_static_extension>)

  - [`function info(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_mapfileinfo_static_extension-function-info>)

  - [`function isDir(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):Bool`](<#t_mapfileinfo_static_extension-function-isdir>)

  - [`function modTime(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.time.Time`](<#t_mapfileinfo_static_extension-function-modtime>)

  - [`function mode(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.io.fs.FileMode`](<#t_mapfileinfo_static_extension-function-mode>)

  - [`function name(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.GoString`](<#t_mapfileinfo_static_extension-function-name>)

  - [`function size(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.GoInt64`](<#t_mapfileinfo_static_extension-function-size>)

  - [`function sys(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.AnyInterface`](<#t_mapfileinfo_static_extension-function-sys>)

  - [`function type(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.io.fs.FileMode`](<#t_mapfileinfo_static_extension-function-type>)

- [class T\_noSub\_static\_extension](<#class-t_nosub_static_extension>)

  - [`function glob(__self__:stdgo.testing.fstest._Fstest.T_noSub, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoString>}`](<#t_nosub_static_extension-function-glob>)

  - [`function open(__self__:stdgo.testing.fstest._Fstest.T_noSub, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}`](<#t_nosub_static_extension-function-open>)

  - [`function readDir(__self__:stdgo.testing.fstest._Fstest.T_noSub, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}`](<#t_nosub_static_extension-function-readdir>)

  - [`function readFile(__self__:stdgo.testing.fstest._Fstest.T_noSub, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoUInt8>}`](<#t_nosub_static_extension-function-readfile>)

  - [`function stat(__self__:stdgo.testing.fstest._Fstest.T_noSub, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_nosub_static_extension-function-stat>)

  - [`function sub(_:stdgo.testing.fstest._Fstest.T_noSub):Void`](<#t_nosub_static_extension-function-sub>)

- [class T\_openMapFile\_static\_extension](<#class-t_openmapfile_static_extension>)

  - [`function close(_f:stdgo.Ref<stdgo.testing.fstest._Fstest.T_openMapFile>):stdgo.Error`](<#t_openmapfile_static_extension-function-close>)

  - [`function info(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_openmapfile_static_extension-function-info>)

  - [`function isDir(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):Bool`](<#t_openmapfile_static_extension-function-isdir>)

  - [`function modTime(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.time.Time`](<#t_openmapfile_static_extension-function-modtime>)

  - [`function mode(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.io.fs.FileMode`](<#t_openmapfile_static_extension-function-mode>)

  - [`function name(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.GoString`](<#t_openmapfile_static_extension-function-name>)

  - [`function read(_f:stdgo.Ref<stdgo.testing.fstest._Fstest.T_openMapFile>, _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_openmapfile_static_extension-function-read>)

  - [`function readAt(_f:stdgo.Ref<stdgo.testing.fstest._Fstest.T_openMapFile>, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_openmapfile_static_extension-function-readat>)

  - [`function seek(_f:stdgo.Ref<stdgo.testing.fstest._Fstest.T_openMapFile>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#t_openmapfile_static_extension-function-seek>)

  - [`function size(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.GoInt64`](<#t_openmapfile_static_extension-function-size>)

  - [`function stat(_f:stdgo.Ref<stdgo.testing.fstest._Fstest.T_openMapFile>):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_openmapfile_static_extension-function-stat>)

  - [`function sys(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.AnyInterface`](<#t_openmapfile_static_extension-function-sys>)

  - [`function type(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.io.fs.FileMode`](<#t_openmapfile_static_extension-function-type>)

- [typedef MapFS](<#typedef-mapfs>)

  - [`function glob( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoString>}`](<#mapfs-function-glob>)

  - [`function open( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}`](<#mapfs-function-open>)

  - [`function readDir( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}`](<#mapfs-function-readdir>)

  - [`function readFile( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#mapfs-function-readfile>)

  - [`function stat( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#mapfs-function-stat>)

  - [`function sub( _dir:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FS}`](<#mapfs-function-sub>)

# Functions


```haxe
import stdgo.testing.fstest.Fstest
```


## function \_formatEntry


```haxe
function _formatEntry(_entry:stdgo.io.fs.DirEntry):stdgo.GoString
```


formatEntry formats an fs.DirEntry into a string for error messages and comparison. 


[\(view code\)](<./Fstest.hx#L354>)


## function \_formatInfo


```haxe
function _formatInfo(_info:stdgo.io.fs.FileInfo):stdgo.GoString
```


formatInfo formats an fs.FileInfo into a string for error messages and comparison. 


[\(view code\)](<./Fstest.hx#L366>)


## function \_formatInfoEntry


```haxe
function _formatInfoEntry(_info:stdgo.io.fs.FileInfo):stdgo.GoString
```


formatInfoEntry formats an fs.FileInfo into a string like the result of formatEntry, for error messages and comparison. 


[\(view code\)](<./Fstest.hx#L360>)


## function \_testFS


```haxe
function _testFS(_fsys:stdgo.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error
```


 


[\(view code\)](<./Fstest.hx#L348>)


## function testDash


```haxe
function testDash(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fstest.hx#L372>)


## function testFS


```haxe
function testFS(_fsys:stdgo.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error
```


TestFS tests a file system implementation. It walks the entire tree of files in fsys, opening and checking that each file behaves correctly. It also checks that the file system contains at least the expected files. As a special case, if no expected files are listed, fsys must be empty. Otherwise, fsys must contain at least the listed files; it can also contain others. The contents of fsys must not change concurrently with TestFS.  If TestFS finds any misbehaviors, it returns an error reporting all of them. The error text spans multiple lines, one per detected misbehavior.  Typical usage inside a test is:  if err := fstest.TestFS\(myFS, "file/that/should/be/present"\); err \!= nil \{ t.Fatal\(err\) \} 


[\(view code\)](<./Fstest.hx#L345>)


## function testMapFS


```haxe
function testMapFS(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fstest.hx#L321>)


## function testMapFSChmodDot


```haxe
function testMapFSChmodDot(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fstest.hx#L324>)


## function testSymlink


```haxe
function testSymlink(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fstest.hx#L369>)


# Classes


```haxe
import stdgo.testing.fstest.*
```


## class MapFS\_static\_extension


 


### MapFS\_static\_extension function glob


```haxe
function glob( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoString>}
```


 


[\(view code\)](<./Fstest.hx#L973>)


### MapFS\_static\_extension function open


```haxe
function open( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}
```


Open opens the named file. 


[\(view code\)](<./Fstest.hx#L992>)


### MapFS\_static\_extension function readDir


```haxe
function readDir( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}
```


 


[\(view code\)](<./Fstest.hx#L977>)


### MapFS\_static\_extension function readFile


```haxe
function readFile( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


 


[\(view code\)](<./Fstest.hx#L985>)


### MapFS\_static\_extension function stat


```haxe
function stat( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```


 


[\(view code\)](<./Fstest.hx#L981>)


### MapFS\_static\_extension function sub


```haxe
function sub( _dir:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FS}
```


 


[\(view code\)](<./Fstest.hx#L969>)


## class MapFile


A MapFile describes a single file in a MapFS. 


```haxe
var data:stdgo.Slice<stdgo.GoUInt8>
```


file content 


```haxe
var modTime:stdgo.time.Time
```


FileInfo.ModTime 


```haxe
var mode:stdgo.io.fs.FileMode
```


FileInfo.Mode 


```haxe
var sys:stdgo.AnyInterface
```


FileInfo.Sys 


### MapFile function new


```haxe
function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?mode:Null<stdgo.io.fs.FileMode>, ?modTime:stdgo.time.Time, ?sys:stdgo.AnyInterface):Void
```


 


[\(view code\)](<./Fstest.hx#L45>)


## class T\_fsOnly\_static\_extension


 


### T\_fsOnly\_static\_extension function open


```haxe
function open(__self__:stdgo.testing.fstest._Fstest.T_fsOnly, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}
```


 


[\(view code\)](<./Fstest.hx#L395>)


## class T\_fsTester\_static\_extension


 


### T\_fsTester\_static\_extension function \_checkBadPath


```haxe
function _checkBadPath(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _open:()):Void
```


checkBadPath checks that various invalid forms of file's name cannot be opened using open. 


[\(view code\)](<./Fstest.hx#L861>)


### T\_fsTester\_static\_extension function \_checkDir


```haxe
function _checkDir(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _dir:stdgo.GoString):Void
```


checkDir checks the directory dir, which is expected to exist \(it is either the root or was found in a directory listing with IsDir true\). 


[\(view code\)](<./Fstest.hx#L911>)


### T\_fsTester\_static\_extension function \_checkDirList


```haxe
function _checkDirList(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo.io.fs.DirEntry>, _list2:stdgo.Slice<stdgo.io.fs.DirEntry>):Void
```


checkDirList checks that two directory lists contain the same files and file info. The order of the lists need not match. 


[\(view code\)](<./Fstest.hx#L888>)


### T\_fsTester\_static\_extension function \_checkFile


```haxe
function _checkFile(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _file:stdgo.GoString):Void
```


checkFile checks that basic file reading works correctly. 


[\(view code\)](<./Fstest.hx#L879>)


### T\_fsTester\_static\_extension function \_checkFileRead


```haxe
function _checkFileRead(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.GoByte>, _data2:stdgo.Slice<stdgo.GoByte>):Void
```


 


[\(view code\)](<./Fstest.hx#L872>)


### T\_fsTester\_static\_extension function \_checkGlob


```haxe
function _checkGlob(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _dir:stdgo.GoString, _list:stdgo.Slice<stdgo.io.fs.DirEntry>):Void
```


checkGlob checks that various glob patterns work if the file system implements GlobFS. 


[\(view code\)](<./Fstest.hx#L903>)


### T\_fsTester\_static\_extension function \_checkOpen


```haxe
function _checkOpen(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _file:stdgo.GoString):Void
```


checkBadPath checks that various invalid forms of file's name cannot be opened using t.fsys.Open. 


[\(view code\)](<./Fstest.hx#L868>)


### T\_fsTester\_static\_extension function \_checkStat


```haxe
function _checkStat(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _path:stdgo.GoString, _entry:stdgo.io.fs.DirEntry):Void
```


checkStat checks that a direct stat of path matches entry, which was found in the parent's directory listing. 


[\(view code\)](<./Fstest.hx#L896>)


### T\_fsTester\_static\_extension function \_errorf


```haxe
function _errorf(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void
```


errorf adds an error line to errText. 


[\(view code\)](<./Fstest.hx#L922>)


### T\_fsTester\_static\_extension function \_openDir


```haxe
function _openDir(_t:stdgo.Ref<stdgo.testing.fstest._Fstest.T_fsTester>, _dir:stdgo.GoString):stdgo.io.fs.ReadDirFile
```


 


[\(view code\)](<./Fstest.hx#L915>)


## class T\_mapDir\_static\_extension


 


### T\_mapDir\_static\_extension function close


```haxe
function close(_d:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapDir>):stdgo.Error
```


 


[\(view code\)](<./Fstest.hx#L735>)


### T\_mapDir\_static\_extension function info


```haxe
function info(__self__:stdgo.testing.fstest._Fstest.T_mapDir):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```


 


[\(view code\)](<./Fstest.hx#L771>)


### T\_mapDir\_static\_extension function isDir


```haxe
function isDir(__self__:stdgo.testing.fstest._Fstest.T_mapDir):Bool
```


 


[\(view code\)](<./Fstest.hx#L767>)


### T\_mapDir\_static\_extension function modTime


```haxe
function modTime(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.time.Time
```


 


[\(view code\)](<./Fstest.hx#L763>)


### T\_mapDir\_static\_extension function mode


```haxe
function mode(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.io.fs.FileMode
```


 


[\(view code\)](<./Fstest.hx#L759>)


### T\_mapDir\_static\_extension function name


```haxe
function name(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.GoString
```


 


[\(view code\)](<./Fstest.hx#L755>)


### T\_mapDir\_static\_extension function read


```haxe
function read(_d:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapDir>, _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Fstest.hx#L731>)


### T\_mapDir\_static\_extension function readDir


```haxe
function readDir(_d:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapDir>, _count:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}
```


 


[\(view code\)](<./Fstest.hx#L727>)


### T\_mapDir\_static\_extension function size


```haxe
function size(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.GoInt64
```


 


[\(view code\)](<./Fstest.hx#L751>)


### T\_mapDir\_static\_extension function stat


```haxe
function stat(_d:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapDir>):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```


 


[\(view code\)](<./Fstest.hx#L739>)


### T\_mapDir\_static\_extension function sys


```haxe
function sys(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.AnyInterface
```


 


[\(view code\)](<./Fstest.hx#L747>)


### T\_mapDir\_static\_extension function type


```haxe
function type(__self__:stdgo.testing.fstest._Fstest.T_mapDir):stdgo.io.fs.FileMode
```


 


[\(view code\)](<./Fstest.hx#L743>)


## class T\_mapFileInfo\_static\_extension


 


### T\_mapFileInfo\_static\_extension function info


```haxe
function info(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```


 


[\(view code\)](<./Fstest.hx#L511>)


### T\_mapFileInfo\_static\_extension function isDir


```haxe
function isDir(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):Bool
```


 


[\(view code\)](<./Fstest.hx#L519>)


### T\_mapFileInfo\_static\_extension function modTime


```haxe
function modTime(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.time.Time
```


 


[\(view code\)](<./Fstest.hx#L523>)


### T\_mapFileInfo\_static\_extension function mode


```haxe
function mode(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.io.fs.FileMode
```


 


[\(view code\)](<./Fstest.hx#L531>)


### T\_mapFileInfo\_static\_extension function name


```haxe
function name(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.GoString
```


 


[\(view code\)](<./Fstest.hx#L539>)


### T\_mapFileInfo\_static\_extension function size


```haxe
function size(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.GoInt64
```


 


[\(view code\)](<./Fstest.hx#L535>)


### T\_mapFileInfo\_static\_extension function sys


```haxe
function sys(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.AnyInterface
```


 


[\(view code\)](<./Fstest.hx#L515>)


### T\_mapFileInfo\_static\_extension function type


```haxe
function type(_i:stdgo.Ref<stdgo.testing.fstest._Fstest.T_mapFileInfo>):stdgo.io.fs.FileMode
```


 


[\(view code\)](<./Fstest.hx#L527>)


## class T\_noSub\_static\_extension


 


### T\_noSub\_static\_extension function glob


```haxe
function glob(__self__:stdgo.testing.fstest._Fstest.T_noSub, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoString>}
```


 


[\(view code\)](<./Fstest.hx#L459>)


### T\_noSub\_static\_extension function open


```haxe
function open(__self__:stdgo.testing.fstest._Fstest.T_noSub, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}
```


 


[\(view code\)](<./Fstest.hx#L455>)


### T\_noSub\_static\_extension function readDir


```haxe
function readDir(__self__:stdgo.testing.fstest._Fstest.T_noSub, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}
```


 


[\(view code\)](<./Fstest.hx#L451>)


### T\_noSub\_static\_extension function readFile


```haxe
function readFile(__self__:stdgo.testing.fstest._Fstest.T_noSub, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoUInt8>}
```


 


[\(view code\)](<./Fstest.hx#L447>)


### T\_noSub\_static\_extension function stat


```haxe
function stat(__self__:stdgo.testing.fstest._Fstest.T_noSub, _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```


 


[\(view code\)](<./Fstest.hx#L443>)


### T\_noSub\_static\_extension function sub


```haxe
function sub(_:stdgo.testing.fstest._Fstest.T_noSub):Void
```


 


[\(view code\)](<./Fstest.hx#L439>)


## class T\_openMapFile\_static\_extension


 


### T\_openMapFile\_static\_extension function close


```haxe
function close(_f:stdgo.Ref<stdgo.testing.fstest._Fstest.T_openMapFile>):stdgo.Error
```


 


[\(view code\)](<./Fstest.hx#L623>)


### T\_openMapFile\_static\_extension function info


```haxe
function info(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```


 


[\(view code\)](<./Fstest.hx#L659>)


### T\_openMapFile\_static\_extension function isDir


```haxe
function isDir(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):Bool
```


 


[\(view code\)](<./Fstest.hx#L655>)


### T\_openMapFile\_static\_extension function modTime


```haxe
function modTime(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.time.Time
```


 


[\(view code\)](<./Fstest.hx#L651>)


### T\_openMapFile\_static\_extension function mode


```haxe
function mode(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.io.fs.FileMode
```


 


[\(view code\)](<./Fstest.hx#L647>)


### T\_openMapFile\_static\_extension function name


```haxe
function name(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.GoString
```


 


[\(view code\)](<./Fstest.hx#L643>)


### T\_openMapFile\_static\_extension function read


```haxe
function read(_f:stdgo.Ref<stdgo.testing.fstest._Fstest.T_openMapFile>, _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Fstest.hx#L619>)


### T\_openMapFile\_static\_extension function readAt


```haxe
function readAt(_f:stdgo.Ref<stdgo.testing.fstest._Fstest.T_openMapFile>, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Fstest.hx#L611>)


### T\_openMapFile\_static\_extension function seek


```haxe
function seek(_f:stdgo.Ref<stdgo.testing.fstest._Fstest.T_openMapFile>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


 


[\(view code\)](<./Fstest.hx#L615>)


### T\_openMapFile\_static\_extension function size


```haxe
function size(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.GoInt64
```


 


[\(view code\)](<./Fstest.hx#L639>)


### T\_openMapFile\_static\_extension function stat


```haxe
function stat(_f:stdgo.Ref<stdgo.testing.fstest._Fstest.T_openMapFile>):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```


 


[\(view code\)](<./Fstest.hx#L627>)


### T\_openMapFile\_static\_extension function sys


```haxe
function sys(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.AnyInterface
```


 


[\(view code\)](<./Fstest.hx#L635>)


### T\_openMapFile\_static\_extension function type


```haxe
function type(__self__:stdgo.testing.fstest._Fstest.T_openMapFile):stdgo.io.fs.FileMode
```


 


[\(view code\)](<./Fstest.hx#L631>)


# Typedefs


```haxe
import stdgo.testing.fstest.*
```


## typedef MapFS


```haxe
typedef MapFS = var x:stdgo.Ref<stdgo.testing.fstest.MapFile>
```


A MapFS is a simple in\-memory file system for use in tests, represented as a map from path names \(arguments to Open\) to information about the files or directories they represent.  The map need not include parent directories for files contained in the map; those will be synthesized if needed. But a directory can still be included by setting the MapFile.Mode's ModeDir bit; this may be necessary for detailed control over the directory's FileInfo or to create an empty directory.  File system operations read directly from the map, so that the file system can be changed by editing the map as needed. An implication is that file system operations must not run concurrently with changes to the map, which would be a race. Another implication is that opening or reading a directory requires iterating over the entire map, so a MapFS should typically be used with not more than a few hundred entries or directory reads. 


### MapFS function glob


```haxe
function glob( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoString>}
```


 


[\(view code\)](<./Fstest.hx#L973>)


### MapFS function open


```haxe
function open( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}
```


Open opens the named file. 


[\(view code\)](<./Fstest.hx#L992>)


### MapFS function readDir


```haxe
function readDir( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}
```


 


[\(view code\)](<./Fstest.hx#L977>)


### MapFS function readFile


```haxe
function readFile( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


 


[\(view code\)](<./Fstest.hx#L985>)


### MapFS function stat


```haxe
function stat( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```


 


[\(view code\)](<./Fstest.hx#L981>)


### MapFS function sub


```haxe
function sub( _dir:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FS}
```


 


[\(view code\)](<./Fstest.hx#L969>)


