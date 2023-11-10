# Module: `stdgo.testing.fstest`

[(view library index)](../../stdgo.md)


# Overview



Package fstest implements support for testing implementations and users of file systems.  


# Index


- [Variables](<#variables>)

- [`function _formatEntry(_entry:stdgo.io.fs.DirEntry):stdgo.GoString`](<#function-_formatentry>)

- [`function _formatInfo(_info:stdgo.io.fs.FileInfo):stdgo.GoString`](<#function-_formatinfo>)

- [`function _formatInfoEntry(_info:stdgo.io.fs.FileInfo):stdgo.GoString`](<#function-_formatinfoentry>)

- [`function _testFS(_fsys:stdgo.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error`](<#function-_testfs>)

- [`function testDash(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdash>)

- [`function testFS(_fsys:stdgo.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error`](<#function-testfs>)

- [`function testMapFS(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmapfs>)

- [`function testMapFSChmodDot(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmapfschmoddot>)

- [`function testShuffledFS(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testshuffledfs>)

- [`function testSymlink(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsymlink>)

- [class MapFile](<#class-mapfile>)

  - [`function new(?data:stdgo.Slice<stdgo.GoUInt8>, ?mode:Null<stdgo.io.fs.FileMode>, ?modTime:stdgo.time.Time, ?sys:stdgo.AnyInterface):Void`](<#mapfile-function-new>)

- [typedef MapFS](<#typedef-mapfs>)

- [typedef T\_shuffledFS](<#typedef-t_shuffledfs>)

# Variables


```haxe
import stdgo.testing.fstest.Fstest
```


```haxe
var __2:stdgo.io.fs.FS
```


```haxe
var __3:stdgo.io.fs.File
```


# Functions


```haxe
import stdgo.testing.fstest.Fstest
```


## function \_formatEntry


```haxe
function _formatEntry(_entry:stdgo.io.fs.DirEntry):stdgo.GoString
```



formatEntry formats an fs.DirEntry into a string for error messages and comparison.  

[\(view code\)](<./Fstest.hx#L272>)


## function \_formatInfo


```haxe
function _formatInfo(_info:stdgo.io.fs.FileInfo):stdgo.GoString
```



formatInfo formats an fs.FileInfo into a string for error messages and comparison.  

[\(view code\)](<./Fstest.hx#L280>)


## function \_formatInfoEntry


```haxe
function _formatInfoEntry(_info:stdgo.io.fs.FileInfo):stdgo.GoString
```



formatInfoEntry formats an fs.FileInfo into a string like the result of formatEntry, for error messages and comparison.  

[\(view code\)](<./Fstest.hx#L276>)


## function \_testFS


```haxe
function _testFS(_fsys:stdgo.io.fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error
```


[\(view code\)](<./Fstest.hx#L268>)


## function testDash


```haxe
function testDash(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fstest.hx#L282>)


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

```
	if err := fstest.TestFS(myFS, "file/that/should/be/present"); err != nil {
		t.Fatal(err)
	}
```
[\(view code\)](<./Fstest.hx#L267>)


## function testMapFS


```haxe
function testMapFS(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fstest.hx#L247>)


## function testMapFSChmodDot


```haxe
function testMapFSChmodDot(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fstest.hx#L248>)


## function testShuffledFS


```haxe
function testShuffledFS(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fstest.hx#L283>)


## function testSymlink


```haxe
function testSymlink(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fstest.hx#L281>)


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


[\(view code\)](<./Fstest.hx#L28>)


# Typedefs


```haxe
import stdgo.testing.fstest.*
```


## typedef MapFS


```haxe
typedef MapFS = stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.testing.fstest.MapFile>>;
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

## typedef T\_shuffledFS


```haxe
typedef T_shuffledFS = stdgo.testing.fstest.MapFS;
```


