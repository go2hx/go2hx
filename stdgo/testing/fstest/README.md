# Module: `stdgo.testing.fstest`

[(view library index)](../../stdgo.md)


# Overview



Package fstest implements support for testing implementations and users of file systems.  

# Index


- [`function testDash(t:stdgo._internal.testing.T_):Void`](<#function-testdash>)

- [`function testFS(fsys:stdgo._internal.io.fs.FS, expected:haxe.Rest<stdgo.GoString>):stdgo.Error`](<#function-testfs>)

- [`function testMapFS(t:stdgo._internal.testing.T_):Void`](<#function-testmapfs>)

- [`function testMapFSChmodDot(t:stdgo._internal.testing.T_):Void`](<#function-testmapfschmoddot>)

- [`function testShuffledFS(t:stdgo._internal.testing.T_):Void`](<#function-testshuffledfs>)

- [`function testSymlink(t:stdgo._internal.testing.T_):Void`](<#function-testsymlink>)

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

# Functions


```haxe
import stdgo.testing.fstest.Fstest
```


## function testDash


```haxe
function testDash(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Fstest.hx#L38>)


## function testFS


```haxe
function testFS(fsys:stdgo._internal.io.fs.FS, expected:haxe.Rest<stdgo.GoString>):stdgo.Error
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
[\(view code\)](<./Fstest.hx#L36>)


## function testMapFS


```haxe
function testMapFS(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Fstest.hx#L16>)


## function testMapFSChmodDot


```haxe
function testMapFSChmodDot(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Fstest.hx#L17>)


## function testShuffledFS


```haxe
function testShuffledFS(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Fstest.hx#L39>)


## function testSymlink


```haxe
function testSymlink(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Fstest.hx#L37>)


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


