# Module: `stdgo.io.fs`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Fs](<#class-fs>)

  - [`function fileInfoToDirEntry(_info:stdgo.io.fs.FileInfo):stdgo.io.fs.DirEntry`](<#fs-function-fileinfotodirentry>)

  - [`function formatDirEntry(_dir:stdgo.io.fs.DirEntry):String`](<#fs-function-formatdirentry>)

  - [`function formatFileInfo(_info:stdgo.io.fs.FileInfo):String`](<#fs-function-formatfileinfo>)

  - [`function glob(_fsys:stdgo.io.fs.FS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error>`](<#fs-function-glob>)

  - [`function readDir(_fsys:stdgo.io.fs.FS, _name:String):stdgo.Tuple<Array<stdgo.io.fs.DirEntry>, stdgo.Error>`](<#fs-function-readdir>)

  - [`function readFile(_fsys:stdgo.io.fs.FS, _name:String):stdgo.Tuple<Array<Int>, stdgo.Error>`](<#fs-function-readfile>)

  - [`function stat(_fsys:stdgo.io.fs.FS, _name:String):stdgo.Tuple<stdgo.io.fs.FileInfo, stdgo.Error>`](<#fs-function-stat>)

  - [`function sub(_fsys:stdgo.io.fs.FS, _dir:String):stdgo.Tuple<stdgo.io.fs.FS, stdgo.Error>`](<#fs-function-sub>)

  - [`function validPath(_name:String):Bool`](<#fs-function-validpath>)

  - [`function walkDir(_fsys:stdgo.io.fs.FS, _root:String, _fn:stdgo.io.fs.WalkDirFunc):stdgo.Error`](<#fs-function-walkdir>)

- [typedef DirEntry](<#typedef-direntry>)

- [typedef FS](<#typedef-fs>)

- [typedef File](<#typedef-file>)

- [typedef FileInfo](<#typedef-fileinfo>)

- [typedef FileMode](<#typedef-filemode>)

- [typedef GlobFS](<#typedef-globfs>)

- [typedef ReadDirFS](<#typedef-readdirfs>)

- [typedef ReadDirFile](<#typedef-readdirfile>)

- [typedef ReadFileFS](<#typedef-readfilefs>)

- [typedef StatFS](<#typedef-statfs>)

- [typedef SubFS](<#typedef-subfs>)

- [typedef T\_\_interface\_0](<#typedef-t__interface_0>)

- [typedef WalkDirFunc](<#typedef-walkdirfunc>)

- [abstract PathError](<#abstract-patherror>)

- [abstract T\_dirInfo](<#abstract-t_dirinfo>)

- [abstract T\_subFS](<#abstract-t_subfs>)

- [abstract T\_statDirEntry](<#abstract-t_statdirentry>)

# Constants


```haxe
import stdgo.io.fs.Fs
```


```haxe
final modeAppend:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeAppend
```


```haxe
final modeCharDevice:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeCharDevice
```


```haxe
final modeDevice:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeDevice
```


```haxe
final modeDir:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeDir
```


```haxe
final modeExclusive:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeExclusive
```


```haxe
final modeIrregular:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeIrregular
```


```haxe
final modeNamedPipe:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeNamedPipe
```


```haxe
final modePerm:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modePerm
```


```haxe
final modeSetgid:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeSetgid
```


```haxe
final modeSetuid:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeSetuid
```


```haxe
final modeSocket:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeSocket
```


```haxe
final modeSticky:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeSticky
```


```haxe
final modeSymlink:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeSymlink
```


```haxe
final modeTemporary:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeTemporary
```


```haxe
final modeType:stdgo._internal.io.fs.FileMode = stdgo._internal.io.fs.Fs.modeType
```


# Variables


```haxe
import stdgo.io.fs.Fs
```


```haxe
var errClosed:stdgo.Error
```


```haxe
var errExist:stdgo.Error
```


```haxe
var errInvalid:stdgo.Error
```


```haxe
var errNotExist:stdgo.Error
```


```haxe
var errPermission:stdgo.Error
```


```haxe
var skipAll:stdgo.Error
```


```haxe
var skipDir:stdgo.Error
```


# Classes


```haxe
import stdgo.io.fs.*
```


## class Fs


```
Package fs defines basic interfaces to a file system.
    A file system can be provided by the host operating system
    but also by other packages.
```
### Fs function fileInfoToDirEntry


```haxe
function fileInfoToDirEntry(_info:stdgo.io.fs.FileInfo):stdgo.io.fs.DirEntry
```


```
FileInfoToDirEntry returns a DirEntry that returns information from info.
        If info is nil, FileInfoToDirEntry returns nil.
```
[\(view code\)](<./Fs.hx#L449>)


### Fs function formatDirEntry


```haxe
function formatDirEntry(_dir:stdgo.io.fs.DirEntry):String
```


```
FormatDirEntry returns a formatted version of dir for human readability.
        Implementations of DirEntry can call this from a String method.
        The outputs for a directory named subdir and a file named hello.go are:
```
```
        	d subdir/
        	- hello.go
```
[\(view code\)](<./Fs.hx#L390>)


### Fs function formatFileInfo


```haxe
function formatFileInfo(_info:stdgo.io.fs.FileInfo):String
```


```
FormatFileInfo returns a formatted version of info for human readability.
        Implementations of FileInfo can call this from a String method.
        The output for a file named "hello.go", 100 bytes, mode 0o644, created
        January 1, 1970 at noon is
```
```
        	-rw-r--r-- 100 1970-01-01 12:00:00 hello.go
```
[\(view code\)](<./Fs.hx#L379>)


### Fs function glob


```haxe
function glob(_fsys:stdgo.io.fs.FS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error>
```


```
Glob returns the names of all files matching pattern or nil
        if there is no matching file. The syntax of patterns is the same
        as in path.Match. The pattern may describe hierarchical names such as
        usr/|*|/bin/ed.
```

Glob ignores file system errors such as I/O errors reading directories.
The only possible returned error is path.ErrBadPattern, reporting that
the pattern is malformed.  


If fs implements GlobFS, Glob calls fs.Glob.
Otherwise, Glob uses ReadDir to traverse the directory tree
and look for matches for the pattern.  

[\(view code\)](<./Fs.hx#L425>)


### Fs function readDir


```haxe
function readDir(_fsys:stdgo.io.fs.FS, _name:String):stdgo.Tuple<Array<stdgo.io.fs.DirEntry>, stdgo.Error>
```


```
ReadDir reads the named directory
        and returns a list of directory entries sorted by filename.
```

If fs implements ReadDirFS, ReadDir calls fs.ReadDir.
Otherwise ReadDir calls fs.Open and uses ReadDir and Close
on the returned file.  

[\(view code\)](<./Fs.hx#L439>)


### Fs function readFile


```haxe
function readFile(_fsys:stdgo.io.fs.FS, _name:String):stdgo.Tuple<Array<Int>, stdgo.Error>
```


```
ReadFile reads the named file from the file system fs and returns its contents.
        A successful call returns a nil error, not io.EOF.
        (Because ReadFile reads the whole file, the expected EOF
        from the final Read is not treated as an error to be reported.)
```

If fs implements ReadFileFS, ReadFile calls fs.ReadFile.
Otherwise ReadFile calls fs.Open and uses Read and Close
on the returned file.  

[\(view code\)](<./Fs.hx#L462>)


### Fs function stat


```haxe
function stat(_fsys:stdgo.io.fs.FS, _name:String):stdgo.Tuple<stdgo.io.fs.FileInfo, stdgo.Error>
```



Stat returns a FileInfo describing the named file from the file system.  


If fs implements StatFS, Stat calls fs.Stat.
Otherwise, Stat opens the file to stat it.  

[\(view code\)](<./Fs.hx#L474>)


### Fs function sub


```haxe
function sub(_fsys:stdgo.io.fs.FS, _dir:String):stdgo.Tuple<stdgo.io.fs.FS, stdgo.Error>
```



Sub returns an FS corresponding to the subtree rooted at fsys's dir.  


If dir is ".", Sub returns fsys unchanged.
Otherwise, if fs implements SubFS, Sub returns fsys.Sub\(dir\).
Otherwise, Sub returns a new FS implementation sub that,
in effect, implements sub.Open\(name\) as fsys.Open\(path.Join\(dir, name\)\).
The implementation also translates calls to ReadDir, ReadFile, and Glob appropriately.  


Note that Sub\(os.DirFS\("/"\), "prefix"\) is equivalent to os.DirFS\("/prefix"\)
and that neither of them guarantees to avoid operating system
accesses outside "/prefix", because the implementation of os.DirFS
does not check for symbolic links inside "/prefix" that point to
other directories. That is, os.DirFS is not a general substitute for a
chroot\-style security mechanism, and Sub does not change that fact.  

[\(view code\)](<./Fs.hx#L496>)


### Fs function validPath


```haxe
function validPath(_name:String):Bool
```


```
ValidPath reports whether the given path name
        is valid for use in a call to Open.
```

Path names passed to open are UTF\-8\-encoded,
unrooted, slash\-separated sequences of path elements, like “x/y/z”.
Path names must not contain an element that is “.” or “..” or the empty string,
except for the special case that the root directory is named “.”.
Paths must not start or end with a slash: “/x” and “x/” are invalid.  


Note that paths are slash\-separated on all systems, even Windows.
Paths containing other characters such as backslash and colon
are accepted as valid, but those characters must never be
interpreted by an FS implementation as path element separators.  

[\(view code\)](<./Fs.hx#L408>)


### Fs function walkDir


```haxe
function walkDir(_fsys:stdgo.io.fs.FS, _root:String, _fn:stdgo.io.fs.WalkDirFunc):stdgo.Error
```


```
WalkDir walks the file tree rooted at root, calling fn for each file or
        directory in the tree, including root.
```

All errors that arise visiting files and directories are filtered by fn:
see the fs.WalkDirFunc documentation for details.  


The files are walked in lexical order, which makes the output deterministic
but requires WalkDir to read an entire directory into memory before proceeding
to walk that directory.  


WalkDir does not follow symbolic links found in directories,
but if root itself is a symbolic link, its target will be walked.  

[\(view code\)](<./Fs.hx#L516>)


# Typedefs


```haxe
import stdgo.io.fs.*
```


## typedef DirEntry


```haxe
typedef DirEntry = stdgo._internal.io.fs.DirEntry;
```


## typedef FS


```haxe
typedef FS = stdgo._internal.io.fs.FS;
```


## typedef File


```haxe
typedef File = stdgo._internal.io.fs.File;
```


## typedef FileInfo


```haxe
typedef FileInfo = stdgo._internal.io.fs.FileInfo;
```


## typedef FileMode


```haxe
typedef FileMode = stdgo._internal.io.fs.FileMode;
```


## typedef GlobFS


```haxe
typedef GlobFS = stdgo._internal.io.fs.GlobFS;
```


## typedef ReadDirFS


```haxe
typedef ReadDirFS = stdgo._internal.io.fs.ReadDirFS;
```


## typedef ReadDirFile


```haxe
typedef ReadDirFile = stdgo._internal.io.fs.ReadDirFile;
```


## typedef ReadFileFS


```haxe
typedef ReadFileFS = stdgo._internal.io.fs.ReadFileFS;
```


## typedef StatFS


```haxe
typedef StatFS = stdgo._internal.io.fs.StatFS;
```


## typedef SubFS


```haxe
typedef SubFS = stdgo._internal.io.fs.SubFS;
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = stdgo._internal.io.fs.T__interface_0;
```


## typedef WalkDirFunc


```haxe
typedef WalkDirFunc = stdgo._internal.io.fs.WalkDirFunc;
```


# Abstracts


## abstract PathError


[\(view file containing code\)](<./Fs.hx>)


## abstract T\_dirInfo


[\(view file containing code\)](<./Fs.hx>)


## abstract T\_subFS


[\(view file containing code\)](<./Fs.hx>)


## abstract T\_statDirEntry


[\(view file containing code\)](<./Fs.hx>)


