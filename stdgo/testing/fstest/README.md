# Module: `stdgo.testing.fstest`

[(view library index)](../../stdgo.md)


# Overview


Package fstest implements support for testing implementations and users of file systems.  



<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestMapFS
Exception: testing.fstest.testMapFS is not yet implemented
Called from stdgo.testing.M.run (stdgo/testing/Testing.hx line 355)
Called from stdgo.testing.fstest_test._Fstest.$Fstest_Fields_.main (stdgo/testing/fstest_test/Fstest.hx line 37)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestMapFS
Exception: testing.fstest.testMapFS is not yet implemented
Called from stdgo.testing.fstest._Fstest.Fstest_Fields_.testMapFS (stdgo/testing/fstest/Fstest.hx line 229 column 58)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
stdgo/internal/Macro.macro.hx:35: define
```
</p>
</details>


# Index


- [`function testDash(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdash>)

- [`function testFS(_fsys:stdgo.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error`](<#function-testfs>)

- [`function testMapFS(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmapfs>)

- [`function testMapFSChmodDot(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmapfschmoddot>)

- [`function testSymlink(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsymlink>)

- [class MapFile](<#class-mapfile>)

  - [`function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?mode:Null<stdgo.io.fs.FileMode>, ?modTime:stdgo.time.Time, ?sys:stdgo.AnyInterface):Void`](<#mapfile-function-new>)

- [class T\_fsOnly](<#class-t_fsonly>)

  - [`function new(?fs:Null<stdgo.io.fs.FS>):Void`](<#t_fsonly-function-new>)

  - [`function open(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}`](<#t_fsonly-function-open>)

  - [`function open( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}`](<#t_fsonly-function-open>)

- [class T\_fsTester](<#class-t_fstester>)

  - [`function new(?_fsys:Null<stdgo.io.fs.FS>, ?_errText:stdgo.Slice<stdgo.GoUInt8>, ?_dirs:stdgo.Slice<stdgo.GoString>, ?_files:stdgo.Slice<stdgo.GoString>):Void`](<#t_fstester-function-new>)

  - [`function _checkBadPath( _file:stdgo.GoString, _desc:stdgo.GoString, _open:()):Void`](<#t_fstester-function-_checkbadpath>)

  - [`function _checkDir( _dir:stdgo.GoString):Void`](<#t_fstester-function-_checkdir>)

  - [`function _checkDirList( _dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo.io.fs.DirEntry>, _list2:stdgo.Slice<stdgo.io.fs.DirEntry>):Void`](<#t_fstester-function-_checkdirlist>)

  - [`function _checkFile( _file:stdgo.GoString):Void`](<#t_fstester-function-_checkfile>)

  - [`function _checkFileRead( _file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.GoByte>, _data2:stdgo.Slice<stdgo.GoByte>):Void`](<#t_fstester-function-_checkfileread>)

  - [`function _checkGlob( _dir:stdgo.GoString, _list:stdgo.Slice<stdgo.io.fs.DirEntry>):Void`](<#t_fstester-function-_checkglob>)

  - [`function _checkOpen( _file:stdgo.GoString):Void`](<#t_fstester-function-_checkopen>)

  - [`function _checkStat( _path:stdgo.GoString, _entry:stdgo.io.fs.DirEntry):Void`](<#t_fstester-function-_checkstat>)

  - [`function _errorf( _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void`](<#t_fstester-function-_errorf>)

  - [`function _openDir( _dir:stdgo.GoString):stdgo.io.fs.ReadDirFile`](<#t_fstester-function-_opendir>)

- [class T\_mapDir](<#class-t_mapdir>)

  - [`function info():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_mapdir-function-info>)

  - [`function isDir():Bool`](<#t_mapdir-function-isdir>)

  - [`function modTime():stdgo.time.Time`](<#t_mapdir-function-modtime>)

  - [`function mode():stdgo.io.fs.FileMode`](<#t_mapdir-function-mode>)

  - [`function name():stdgo.GoString`](<#t_mapdir-function-name>)

  - [`function new(?_path:stdgo.GoString, ?_mapFileInfo:stdgo.testing.fstest.T_mapFileInfo, ?_entry:stdgo.Slice<stdgo.testing.fstest.T_mapFileInfo>, ?_offset:Null<stdgo.GoInt>):Void`](<#t_mapdir-function-new>)

  - [`function size():stdgo.GoInt64`](<#t_mapdir-function-size>)

  - [`function sys():stdgo.AnyInterface`](<#t_mapdir-function-sys>)

  - [`function type():stdgo.io.fs.FileMode`](<#t_mapdir-function-type>)

  - [`function close():stdgo.Error`](<#t_mapdir-function-close>)

  - [`function info():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_mapdir-function-info>)

  - [`function isDir():Bool`](<#t_mapdir-function-isdir>)

  - [`function modTime():stdgo.time.Time`](<#t_mapdir-function-modtime>)

  - [`function mode():stdgo.io.fs.FileMode`](<#t_mapdir-function-mode>)

  - [`function name():stdgo.GoString`](<#t_mapdir-function-name>)

  - [`function read( _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_mapdir-function-read>)

  - [`function readDir( _count:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}`](<#t_mapdir-function-readdir>)

  - [`function size():stdgo.GoInt64`](<#t_mapdir-function-size>)

  - [`function stat():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_mapdir-function-stat>)

  - [`function sys():stdgo.AnyInterface`](<#t_mapdir-function-sys>)

  - [`function type():stdgo.io.fs.FileMode`](<#t_mapdir-function-type>)

- [class T\_mapFileInfo](<#class-t_mapfileinfo>)

  - [`function new(?_name:stdgo.GoString, ?_f:stdgo.Ref<stdgo.testing.fstest.MapFile>):Void`](<#t_mapfileinfo-function-new>)

  - [`function info():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_mapfileinfo-function-info>)

  - [`function isDir():Bool`](<#t_mapfileinfo-function-isdir>)

  - [`function modTime():stdgo.time.Time`](<#t_mapfileinfo-function-modtime>)

  - [`function mode():stdgo.io.fs.FileMode`](<#t_mapfileinfo-function-mode>)

  - [`function name():stdgo.GoString`](<#t_mapfileinfo-function-name>)

  - [`function size():stdgo.GoInt64`](<#t_mapfileinfo-function-size>)

  - [`function sys():stdgo.AnyInterface`](<#t_mapfileinfo-function-sys>)

  - [`function type():stdgo.io.fs.FileMode`](<#t_mapfileinfo-function-type>)

- [class T\_noSub](<#class-t_nosub>)

  - [`function glob(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoString>}`](<#t_nosub-function-glob>)

  - [`function new(?mapFS:Null<stdgo.testing.fstest.MapFS>):Void`](<#t_nosub-function-new>)

  - [`function open(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}`](<#t_nosub-function-open>)

  - [`function readDir(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}`](<#t_nosub-function-readdir>)

  - [`function readFile(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoUInt8>}`](<#t_nosub-function-readfile>)

  - [`function stat(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_nosub-function-stat>)

  - [`function glob( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoString>}`](<#t_nosub-function-glob>)

  - [`function open( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}`](<#t_nosub-function-open>)

  - [`function readDir( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}`](<#t_nosub-function-readdir>)

  - [`function readFile( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoUInt8>}`](<#t_nosub-function-readfile>)

  - [`function stat( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_nosub-function-stat>)

  - [`function sub():Void`](<#t_nosub-function-sub>)

- [class T\_openMapFile](<#class-t_openmapfile>)

  - [`function info():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_openmapfile-function-info>)

  - [`function isDir():Bool`](<#t_openmapfile-function-isdir>)

  - [`function modTime():stdgo.time.Time`](<#t_openmapfile-function-modtime>)

  - [`function mode():stdgo.io.fs.FileMode`](<#t_openmapfile-function-mode>)

  - [`function name():stdgo.GoString`](<#t_openmapfile-function-name>)

  - [`function new(?_path:stdgo.GoString, ?_mapFileInfo:stdgo.testing.fstest.T_mapFileInfo, ?_offset:stdgo.GoInt64):Void`](<#t_openmapfile-function-new>)

  - [`function size():stdgo.GoInt64`](<#t_openmapfile-function-size>)

  - [`function sys():stdgo.AnyInterface`](<#t_openmapfile-function-sys>)

  - [`function type():stdgo.io.fs.FileMode`](<#t_openmapfile-function-type>)

  - [`function close():stdgo.Error`](<#t_openmapfile-function-close>)

  - [`function info():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_openmapfile-function-info>)

  - [`function isDir():Bool`](<#t_openmapfile-function-isdir>)

  - [`function modTime():stdgo.time.Time`](<#t_openmapfile-function-modtime>)

  - [`function mode():stdgo.io.fs.FileMode`](<#t_openmapfile-function-mode>)

  - [`function name():stdgo.GoString`](<#t_openmapfile-function-name>)

  - [`function read( _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_openmapfile-function-read>)

  - [`function readAt( _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_openmapfile-function-readat>)

  - [`function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#t_openmapfile-function-seek>)

  - [`function size():stdgo.GoInt64`](<#t_openmapfile-function-size>)

  - [`function stat():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}`](<#t_openmapfile-function-stat>)

  - [`function sys():stdgo.AnyInterface`](<#t_openmapfile-function-sys>)

  - [`function type():stdgo.io.fs.FileMode`](<#t_openmapfile-function-type>)

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


## function testDash


```haxe
function testDash(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Fstest.hx#L264>)


## function testFS


```haxe
function testFS(_fsys:stdgo.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error
```


TestFS tests a file system implementation.  
It walks the entire tree of files in fsys,  
opening and checking that each file behaves correctly.  
It also checks that the file system contains at least the expected files.  
As a special case, if no expected files are listed, fsys must be empty.  
Otherwise, fsys must contain at least the listed files; it can also contain others.  
The contents of fsys must not change concurrently with TestFS.  



If TestFS finds any misbehaviors, it returns an error reporting all of them.  
The error text spans multiple lines, one per detected misbehavior.  



Typical usage inside a test is:  






if err := fstest.TestFS\(myFS, "file/that/should/be/present"\); err \!= nil \{  



t.Fatal\(err\)  



\}  



[\(view code\)](<./Fstest.hx#L249>)


## function testMapFS


```haxe
function testMapFS(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Fstest.hx#L229>)


## function testMapFSChmodDot


```haxe
function testMapFSChmodDot(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Fstest.hx#L230>)


## function testSymlink


```haxe
function testSymlink(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Fstest.hx#L263>)


# Classes


```haxe
import stdgo.testing.fstest.*
```


## class MapFile


A MapFile describes a single file in a MapFS.  



```haxe
var data:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var modTime:stdgo.time.Time
```


```haxe
var mode:stdgo.io.fs.FileMode
```


```haxe
var sys:stdgo.AnyInterface
```


### MapFile function new


```haxe
function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?mode:Null<stdgo.io.fs.FileMode>, ?modTime:stdgo.time.Time, ?sys:stdgo.AnyInterface):Void
```





[\(view code\)](<./Fstest.hx#L37>)


## class T\_fsOnly


fsOnly is a wrapper that hides all but the fs.FS methods,  
to avoid an infinite recursion when implementing special  
methods in terms of helpers that would use them.  
\(In general, implementing these methods using the package fs helpers  
is redundant and unnecessary, but having the methods may make  
MapFS exercise more code paths when used in tests.\)  



```haxe
var fs:stdgo.io.fs.FS
```


### T\_fsOnly function new


```haxe
function new(?fs:Null<stdgo.io.fs.FS>):Void
```





[\(view code\)](<./Fstest.hx#L61>)


### T\_fsOnly function open


```haxe
function open(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}
```





[\(view code\)](<./Fstest.hx#L66>)


### T\_fsOnly function open


```haxe
function open( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}
```





[\(view code\)](<./Fstest.hx#L278>)


## class T\_fsTester


An fsTester holds state for running the test.  



```haxe
var _dirs:stdgo.Slice<stdgo.GoString>
```


```haxe
var _errText:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _files:stdgo.Slice<stdgo.GoString>
```


```haxe
var _fsys:stdgo.io.fs.FS
```


### T\_fsTester function new


```haxe
function new(?_fsys:Null<stdgo.io.fs.FS>, ?_errText:stdgo.Slice<stdgo.GoUInt8>, ?_dirs:stdgo.Slice<stdgo.GoString>, ?_files:stdgo.Slice<stdgo.GoString>):Void
```





[\(view code\)](<./Fstest.hx#L198>)


### T\_fsTester function \_checkBadPath


```haxe
function _checkBadPath( _file:stdgo.GoString, _desc:stdgo.GoString, _open:()):Void
```


checkBadPath checks that various invalid forms of file's name cannot be opened using open.  



[\(view code\)](<./Fstest.hx#L541>)


### T\_fsTester function \_checkDir


```haxe
function _checkDir( _dir:stdgo.GoString):Void
```


checkDir checks the directory dir, which is expected to exist  
\(it is either the root or was found in a directory listing with IsDir true\).  



[\(view code\)](<./Fstest.hx#L576>)


### T\_fsTester function \_checkDirList


```haxe
function _checkDirList( _dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo.io.fs.DirEntry>, _list2:stdgo.Slice<stdgo.io.fs.DirEntry>):Void
```


checkDirList checks that two directory lists contain the same files and file info.  
The order of the lists need not match.  



[\(view code\)](<./Fstest.hx#L559>)


### T\_fsTester function \_checkFile


```haxe
function _checkFile( _file:stdgo.GoString):Void
```


checkFile checks that basic file reading works correctly.  



[\(view code\)](<./Fstest.hx#L553>)


### T\_fsTester function \_checkFileRead


```haxe
function _checkFileRead( _file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.GoByte>, _data2:stdgo.Slice<stdgo.GoByte>):Void
```





[\(view code\)](<./Fstest.hx#L548>)


### T\_fsTester function \_checkGlob


```haxe
function _checkGlob( _dir:stdgo.GoString, _list:stdgo.Slice<stdgo.io.fs.DirEntry>):Void
```


checkGlob checks that various glob patterns work if the file system implements GlobFS.  



[\(view code\)](<./Fstest.hx#L570>)


### T\_fsTester function \_checkOpen


```haxe
function _checkOpen( _file:stdgo.GoString):Void
```


checkBadPath checks that various invalid forms of file's name cannot be opened using t.fsys.Open.  



[\(view code\)](<./Fstest.hx#L546>)


### T\_fsTester function \_checkStat


```haxe
function _checkStat( _path:stdgo.GoString, _entry:stdgo.io.fs.DirEntry):Void
```


checkStat checks that a direct stat of path matches entry,  
which was found in the parent's directory listing.  



[\(view code\)](<./Fstest.hx#L565>)


### T\_fsTester function \_errorf


```haxe
function _errorf( _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void
```


errorf adds an error line to errText.  



[\(view code\)](<./Fstest.hx#L583>)


### T\_fsTester function \_openDir


```haxe
function _openDir( _dir:stdgo.GoString):stdgo.io.fs.ReadDirFile
```





[\(view code\)](<./Fstest.hx#L578>)


## class T\_mapDir


A mapDir is a directory fs.File \(so also an fs.ReadDirFile\) open for reading.  



```haxe
var _entry:stdgo.Slice<stdgo.testing.fstest.T_mapFileInfo>
```


```haxe
var _mapFileInfo:stdgo.testing.fstest.T_mapFileInfo
```


```haxe
var _offset:stdgo.GoInt
```


```haxe
var _path:stdgo.GoString
```


### T\_mapDir function info


```haxe
function info():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```





[\(view code\)](<./Fstest.hx#L169>)


### T\_mapDir function isDir


```haxe
function isDir():Bool
```





[\(view code\)](<./Fstest.hx#L171>)


### T\_mapDir function modTime


```haxe
function modTime():stdgo.time.Time
```





[\(view code\)](<./Fstest.hx#L173>)


### T\_mapDir function mode


```haxe
function mode():stdgo.io.fs.FileMode
```





[\(view code\)](<./Fstest.hx#L175>)


### T\_mapDir function name


```haxe
function name():stdgo.GoString
```





[\(view code\)](<./Fstest.hx#L177>)


### T\_mapDir function new


```haxe
function new(?_path:stdgo.GoString, ?_mapFileInfo:stdgo.testing.fstest.T_mapFileInfo, ?_entry:stdgo.Slice<stdgo.testing.fstest.T_mapFileInfo>, ?_offset:Null<stdgo.GoInt>):Void
```





[\(view code\)](<./Fstest.hx#L161>)


### T\_mapDir function size


```haxe
function size():stdgo.GoInt64
```





[\(view code\)](<./Fstest.hx#L179>)


### T\_mapDir function sys


```haxe
function sys():stdgo.AnyInterface
```





[\(view code\)](<./Fstest.hx#L181>)


### T\_mapDir function type


```haxe
function type():stdgo.io.fs.FileMode
```





[\(view code\)](<./Fstest.hx#L183>)


### T\_mapDir function close


```haxe
function close():stdgo.Error
```





[\(view code\)](<./Fstest.hx#L460>)


### T\_mapDir function info


```haxe
function info():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```





[\(view code\)](<./Fstest.hx#L478>)


### T\_mapDir function isDir


```haxe
function isDir():Bool
```





[\(view code\)](<./Fstest.hx#L476>)


### T\_mapDir function modTime


```haxe
function modTime():stdgo.time.Time
```





[\(view code\)](<./Fstest.hx#L474>)


### T\_mapDir function mode


```haxe
function mode():stdgo.io.fs.FileMode
```





[\(view code\)](<./Fstest.hx#L472>)


### T\_mapDir function name


```haxe
function name():stdgo.GoString
```





[\(view code\)](<./Fstest.hx#L470>)


### T\_mapDir function read


```haxe
function read( _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```





[\(view code\)](<./Fstest.hx#L458>)


### T\_mapDir function readDir


```haxe
function readDir( _count:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}
```





[\(view code\)](<./Fstest.hx#L456>)


### T\_mapDir function size


```haxe
function size():stdgo.GoInt64
```





[\(view code\)](<./Fstest.hx#L468>)


### T\_mapDir function stat


```haxe
function stat():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```





[\(view code\)](<./Fstest.hx#L462>)


### T\_mapDir function sys


```haxe
function sys():stdgo.AnyInterface
```





[\(view code\)](<./Fstest.hx#L466>)


### T\_mapDir function type


```haxe
function type():stdgo.io.fs.FileMode
```





[\(view code\)](<./Fstest.hx#L464>)


## class T\_mapFileInfo


A mapFileInfo implements fs.FileInfo and fs.DirEntry for a given map file.  



```haxe
var _f:stdgo.Ref<stdgo.testing.fstest.MapFile>
```


```haxe
var _name:stdgo.GoString
```


### T\_mapFileInfo function new


```haxe
function new(?_name:stdgo.GoString, ?_f:stdgo.Ref<stdgo.testing.fstest.MapFile>):Void
```





[\(view code\)](<./Fstest.hx#L105>)


### T\_mapFileInfo function info


```haxe
function info():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```





[\(view code\)](<./Fstest.hx#L342>)


### T\_mapFileInfo function isDir


```haxe
function isDir():Bool
```





[\(view code\)](<./Fstest.hx#L346>)


### T\_mapFileInfo function modTime


```haxe
function modTime():stdgo.time.Time
```





[\(view code\)](<./Fstest.hx#L348>)


### T\_mapFileInfo function mode


```haxe
function mode():stdgo.io.fs.FileMode
```





[\(view code\)](<./Fstest.hx#L352>)


### T\_mapFileInfo function name


```haxe
function name():stdgo.GoString
```





[\(view code\)](<./Fstest.hx#L356>)


### T\_mapFileInfo function size


```haxe
function size():stdgo.GoInt64
```





[\(view code\)](<./Fstest.hx#L354>)


### T\_mapFileInfo function sys


```haxe
function sys():stdgo.AnyInterface
```





[\(view code\)](<./Fstest.hx#L344>)


### T\_mapFileInfo function type


```haxe
function type():stdgo.io.fs.FileMode
```





[\(view code\)](<./Fstest.hx#L350>)


## class T\_noSub





```haxe
var mapFS:stdgo.testing.fstest.MapFS
```


### T\_noSub function glob


```haxe
function glob(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoString>}
```





[\(view code\)](<./Fstest.hx#L84>)


### T\_noSub function new


```haxe
function new(?mapFS:Null<stdgo.testing.fstest.MapFS>):Void
```





[\(view code\)](<./Fstest.hx#L79>)


### T\_noSub function open


```haxe
function open(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}
```





[\(view code\)](<./Fstest.hx#L86>)


### T\_noSub function readDir


```haxe
function readDir(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}
```





[\(view code\)](<./Fstest.hx#L88>)


### T\_noSub function readFile


```haxe
function readFile(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoUInt8>}
```





[\(view code\)](<./Fstest.hx#L90>)


### T\_noSub function stat


```haxe
function stat(_pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```





[\(view code\)](<./Fstest.hx#L92>)


### T\_noSub function glob


```haxe
function glob( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoString>}
```





[\(view code\)](<./Fstest.hx#L313>)


### T\_noSub function open


```haxe
function open( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}
```





[\(view code\)](<./Fstest.hx#L311>)


### T\_noSub function readDir


```haxe
function readDir( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}
```





[\(view code\)](<./Fstest.hx#L309>)


### T\_noSub function readFile


```haxe
function readFile( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoUInt8>}
```





[\(view code\)](<./Fstest.hx#L307>)


### T\_noSub function stat


```haxe
function stat( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```





[\(view code\)](<./Fstest.hx#L305>)


### T\_noSub function sub


```haxe
function sub():Void
```





[\(view code\)](<./Fstest.hx#L303>)


## class T\_openMapFile


An openMapFile is a regular \(non\-directory\) fs.File open for reading.  



```haxe
var _mapFileInfo:stdgo.testing.fstest.T_mapFileInfo
```


```haxe
var _offset:stdgo.GoInt64
```


```haxe
var _path:stdgo.GoString
```


### T\_openMapFile function info


```haxe
function info():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```





[\(view code\)](<./Fstest.hx#L131>)


### T\_openMapFile function isDir


```haxe
function isDir():Bool
```





[\(view code\)](<./Fstest.hx#L133>)


### T\_openMapFile function modTime


```haxe
function modTime():stdgo.time.Time
```





[\(view code\)](<./Fstest.hx#L135>)


### T\_openMapFile function mode


```haxe
function mode():stdgo.io.fs.FileMode
```





[\(view code\)](<./Fstest.hx#L137>)


### T\_openMapFile function name


```haxe
function name():stdgo.GoString
```





[\(view code\)](<./Fstest.hx#L139>)


### T\_openMapFile function new


```haxe
function new(?_path:stdgo.GoString, ?_mapFileInfo:stdgo.testing.fstest.T_mapFileInfo, ?_offset:stdgo.GoInt64):Void
```





[\(view code\)](<./Fstest.hx#L124>)


### T\_openMapFile function size


```haxe
function size():stdgo.GoInt64
```





[\(view code\)](<./Fstest.hx#L141>)


### T\_openMapFile function sys


```haxe
function sys():stdgo.AnyInterface
```





[\(view code\)](<./Fstest.hx#L143>)


### T\_openMapFile function type


```haxe
function type():stdgo.io.fs.FileMode
```





[\(view code\)](<./Fstest.hx#L145>)


### T\_openMapFile function close


```haxe
function close():stdgo.Error
```





[\(view code\)](<./Fstest.hx#L401>)


### T\_openMapFile function info


```haxe
function info():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```





[\(view code\)](<./Fstest.hx#L419>)


### T\_openMapFile function isDir


```haxe
function isDir():Bool
```





[\(view code\)](<./Fstest.hx#L417>)


### T\_openMapFile function modTime


```haxe
function modTime():stdgo.time.Time
```





[\(view code\)](<./Fstest.hx#L415>)


### T\_openMapFile function mode


```haxe
function mode():stdgo.io.fs.FileMode
```





[\(view code\)](<./Fstest.hx#L413>)


### T\_openMapFile function name


```haxe
function name():stdgo.GoString
```





[\(view code\)](<./Fstest.hx#L411>)


### T\_openMapFile function read


```haxe
function read( _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```





[\(view code\)](<./Fstest.hx#L399>)


### T\_openMapFile function readAt


```haxe
function readAt( _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.GoInt}
```





[\(view code\)](<./Fstest.hx#L395>)


### T\_openMapFile function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt64}
```





[\(view code\)](<./Fstest.hx#L397>)


### T\_openMapFile function size


```haxe
function size():stdgo.GoInt64
```





[\(view code\)](<./Fstest.hx#L409>)


### T\_openMapFile function stat


```haxe
function stat():{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```





[\(view code\)](<./Fstest.hx#L403>)


### T\_openMapFile function sys


```haxe
function sys():stdgo.AnyInterface
```





[\(view code\)](<./Fstest.hx#L407>)


### T\_openMapFile function type


```haxe
function type():stdgo.io.fs.FileMode
```





[\(view code\)](<./Fstest.hx#L405>)


# Typedefs


```haxe
import stdgo.testing.fstest.*
```


## typedef MapFS


```haxe
typedef MapFS = var x:stdgo.Ref<stdgo.testing.fstest.MapFile>
```


A MapFS is a simple in\-memory file system for use in tests,  
represented as a map from path names \(arguments to Open\)  
to information about the files or directories they represent.  



The map need not include parent directories for files contained  
in the map; those will be synthesized if needed.  
But a directory can still be included by setting the MapFile.Mode's ModeDir bit;  
this may be necessary for detailed control over the directory's FileInfo  
or to create an empty directory.  



File system operations read directly from the map,  
so that the file system can be changed by editing the map as needed.  
An implication is that file system operations must not run concurrently  
with changes to the map, which would be a race.  
Another implication is that opening or reading a directory requires  
iterating over the entire map, so a MapFS should typically be used with not more  
than a few hundred entries or directory reads.  



### MapFS function glob


```haxe
function glob( _pattern:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoString>}
```





[\(view code\)](<./Fstest.hx#L613>)


### MapFS function open


```haxe
function open( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.File}
```


Open opens the named file.  



[\(view code\)](<./Fstest.hx#L624>)


### MapFS function readDir


```haxe
function readDir( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.io.fs.DirEntry>}
```





[\(view code\)](<./Fstest.hx#L615>)


### MapFS function readFile


```haxe
function readFile( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```





[\(view code\)](<./Fstest.hx#L619>)


### MapFS function stat


```haxe
function stat( _name:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FileInfo}
```





[\(view code\)](<./Fstest.hx#L617>)


### MapFS function sub


```haxe
function sub( _dir:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.io.fs.FS}
```





[\(view code\)](<./Fstest.hx#L611>)


