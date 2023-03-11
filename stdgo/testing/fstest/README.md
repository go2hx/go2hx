# Module: `stdgo.testing.fstest`

[(view library index)](../../stdgo.md)


# Overview



Package fstest implements support for testing implementations and users of file systems.  

<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
=== RUN  TestMapFS
Exception: testing.fstest.testMapFS is not yet implemented
Called from stdgo.testing.M.run (stdgo/testing/Testing.hx line 355)
Called from stdgo.testing.fstest_test._Fstest.$Fstest_Fields_.main (stdgo/testing/fstest_test/Fstest.hx line 38)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
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

- [typedef MapFS](<#typedef-mapfs>)

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

```
	if err := fstest.TestFS(myFS, "file/that/should/be/present"); err != nil {
		t.Fatal(err)
	}
```
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

