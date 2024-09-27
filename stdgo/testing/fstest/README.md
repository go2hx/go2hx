# Module: `stdgo.testing.fstest`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Fstest](<#class-fstest>)

  - [`function testDash(_t:stdgo._internal.testing.T_):Void`](<#fstest-function-testdash>)

  - [`function testFS(_fsys:stdgo._internal.io.fs.FS, _expected:haxe.Rest<String>):stdgo.Error`](<#fstest-function-testfs>)

  - [`function testMapFS(_t:stdgo._internal.testing.T_):Void`](<#fstest-function-testmapfs>)

  - [`function testMapFSChmodDot(_t:stdgo._internal.testing.T_):Void`](<#fstest-function-testmapfschmoddot>)

  - [`function testShuffledFS(_t:stdgo._internal.testing.T_):Void`](<#fstest-function-testshuffledfs>)

  - [`function testSymlink(_t:stdgo._internal.testing.T_):Void`](<#fstest-function-testsymlink>)

- [typedef MapFS](<#typedef-mapfs>)

- [typedef T\_shuffledFS](<#typedef-t_shuffledfs>)

- [abstract MapFile](<#abstract-mapfile>)

- [abstract T\_fsOnly](<#abstract-t_fsonly>)

- [abstract T\_noSub](<#abstract-t_nosub>)

- [abstract T\_mapFileInfo](<#abstract-t_mapfileinfo>)

- [abstract T\_openMapFile](<#abstract-t_openmapfile>)

- [abstract T\_mapDir](<#abstract-t_mapdir>)

- [abstract T\_fsTester](<#abstract-t_fstester>)

- [abstract T\_shuffledFile](<#abstract-t_shuffledfile>)

# Classes


```haxe
import
```


## class Fstest



Package fstest implements support for testing implementations and users of file systems.  

### Fstest function testDash


```haxe
function testDash(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Fstest.hx#L496>)


### Fstest function testFS


```haxe
function testFS(_fsys:stdgo._internal.io.fs.FS, _expected:haxe.Rest<String>):stdgo.Error
```


```
TestFS tests a file system implementation.
        It walks the entire tree of files in fsys,
        opening and checking that each file behaves correctly.
        It also checks that the file system contains at least the expected files.
        As a special case, if no expected files are listed, fsys must be empty.
        Otherwise, fsys must contain at least the listed files; it can also contain others.
        The contents of fsys must not change concurrently with TestFS.
```

If TestFS finds any misbehaviors, it returns an error reporting all of them.
The error text spans multiple lines, one per detected misbehavior.  


Typical usage inside a test is:  

```
        	if err := fstest.TestFS(myFS, "file/that/should/be/present"); err != nil {
        		t.Fatal(err)
}
```
[\(view code\)](<./Fstest.hx#L490>)


### Fstest function testMapFS


```haxe
function testMapFS(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Fstest.hx#L466>)


### Fstest function testMapFSChmodDot


```haxe
function testMapFSChmodDot(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Fstest.hx#L469>)


### Fstest function testShuffledFS


```haxe
function testShuffledFS(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Fstest.hx#L499>)


### Fstest function testSymlink


```haxe
function testSymlink(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Fstest.hx#L493>)


# Typedefs


```haxe
import
```


## typedef MapFS


```haxe
typedef MapFS = stdgo._internal.testing.fstest.MapFS;
```


## typedef T\_shuffledFS


```haxe
typedef T_shuffledFS = stdgo._internal.testing.fstest.T_shuffledFS;
```


# Abstracts


## abstract MapFile


[\(view file containing code\)](<./Fstest.hx>)


## abstract T\_fsOnly


[\(view file containing code\)](<./Fstest.hx>)


## abstract T\_noSub


[\(view file containing code\)](<./Fstest.hx>)


## abstract T\_mapFileInfo


[\(view file containing code\)](<./Fstest.hx>)


## abstract T\_openMapFile


[\(view file containing code\)](<./Fstest.hx>)


## abstract T\_mapDir


[\(view file containing code\)](<./Fstest.hx>)


## abstract T\_fsTester


[\(view file containing code\)](<./Fstest.hx>)


## abstract T\_shuffledFile


[\(view file containing code\)](<./Fstest.hx>)


