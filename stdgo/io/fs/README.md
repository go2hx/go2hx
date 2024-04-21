# Module: `stdgo.io.fs`

[(view library index)](../../stdgo.md)


# Overview



Package fs defines basic interfaces to a file system.
A file system can be provided by the host operating system
but also by other packages.  

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function fileInfoToDirEntry(info:stdgo.io.fs.FileInfo):stdgo.io.fs.DirEntry`](<#function-fileinfotodirentry>)

- [`function formatDirEntry(dir:stdgo.io.fs.DirEntry):String`](<#function-formatdirentry>)

- [`function formatFileInfo(info:stdgo.io.fs.FileInfo):String`](<#function-formatfileinfo>)

- [`function get_errClosed():stdgo.Error`](<#function-get_errclosed>)

- [`function get_errExist():stdgo.Error`](<#function-get_errexist>)

- [`function get_errInvalid():stdgo.Error`](<#function-get_errinvalid>)

- [`function get_errNotExist():stdgo.Error`](<#function-get_errnotexist>)

- [`function get_errPermission():stdgo.Error`](<#function-get_errpermission>)

- [`function get_skipAll():stdgo.Error`](<#function-get_skipall>)

- [`function get_skipDir():stdgo.Error`](<#function-get_skipdir>)

- [`function glob(fsys:stdgo.io.fs.FS, pattern:String):stdgo.Tuple<Array<String>, stdgo.Error>`](<#function-glob>)

- [`function readDir(fsys:stdgo.io.fs.FS, name:String):stdgo.Tuple<Array<stdgo.io.fs.DirEntry>, stdgo.Error>`](<#function-readdir>)

- [`function readFile(fsys:stdgo.io.fs.FS, name:String):stdgo.Tuple<Array<Int>, stdgo.Error>`](<#function-readfile>)

- [`function set_errClosed(v:stdgo.Error):stdgo.Error`](<#function-set_errclosed>)

- [`function set_errExist(v:stdgo.Error):stdgo.Error`](<#function-set_errexist>)

- [`function set_errInvalid(v:stdgo.Error):stdgo.Error`](<#function-set_errinvalid>)

- [`function set_errNotExist(v:stdgo.Error):stdgo.Error`](<#function-set_errnotexist>)

- [`function set_errPermission(v:stdgo.Error):stdgo.Error`](<#function-set_errpermission>)

- [`function set_skipAll(v:stdgo.Error):stdgo.Error`](<#function-set_skipall>)

- [`function set_skipDir(v:stdgo.Error):stdgo.Error`](<#function-set_skipdir>)

- [`function stat(fsys:stdgo.io.fs.FS, name:String):stdgo.Tuple<stdgo.io.fs.FileInfo, stdgo.Error>`](<#function-stat>)

- [`function sub(fsys:stdgo.io.fs.FS, dir:String):stdgo.Tuple<stdgo.io.fs.FS, stdgo.Error>`](<#function-sub>)

- [`function validPath(name:String):Bool`](<#function-validpath>)

- [`function walkDir(fsys:stdgo.io.fs.FS, root:String, fn:stdgo.io.fs.WalkDirFunc):stdgo.Error`](<#function-walkdir>)

- [typedef DirEntry](<#typedef-direntry>)

- [typedef DirEntry\_static\_extension](<#typedef-direntry_static_extension>)

- [typedef FS](<#typedef-fs>)

- [typedef FS\_static\_extension](<#typedef-fs_static_extension>)

- [typedef File](<#typedef-file>)

- [typedef FileInfo](<#typedef-fileinfo>)

- [typedef FileInfo\_static\_extension](<#typedef-fileinfo_static_extension>)

- [typedef FileMode](<#typedef-filemode>)

- [typedef FileMode\_asInterface](<#typedef-filemode_asinterface>)

- [typedef FileMode\_static\_extension](<#typedef-filemode_static_extension>)

- [typedef File\_static\_extension](<#typedef-file_static_extension>)

- [typedef GlobFS](<#typedef-globfs>)

- [typedef GlobFS\_static\_extension](<#typedef-globfs_static_extension>)

- [typedef PathError](<#typedef-patherror>)

- [typedef PathError\_asInterface](<#typedef-patherror_asinterface>)

- [typedef PathError\_static\_extension](<#typedef-patherror_static_extension>)

- [typedef ReadDirFS](<#typedef-readdirfs>)

- [typedef ReadDirFS\_static\_extension](<#typedef-readdirfs_static_extension>)

- [typedef ReadDirFile](<#typedef-readdirfile>)

- [typedef ReadDirFile\_static\_extension](<#typedef-readdirfile_static_extension>)

- [typedef ReadFileFS](<#typedef-readfilefs>)

- [typedef ReadFileFS\_static\_extension](<#typedef-readfilefs_static_extension>)

- [typedef StatFS](<#typedef-statfs>)

- [typedef StatFS\_static\_extension](<#typedef-statfs_static_extension>)

- [typedef SubFS](<#typedef-subfs>)

- [typedef SubFS\_static\_extension](<#typedef-subfs_static_extension>)

- [typedef T\_\_interface\_0](<#typedef-t__interface_0>)

- [typedef T\_\_interface\_0\_static\_extension](<#typedef-t__interface_0_static_extension>)

- [typedef T\_dirInfo](<#typedef-t_dirinfo>)

- [typedef T\_dirInfo\_asInterface](<#typedef-t_dirinfo_asinterface>)

- [typedef T\_dirInfo\_static\_extension](<#typedef-t_dirinfo_static_extension>)

- [typedef T\_statDirEntry](<#typedef-t_statdirentry>)

- [typedef T\_statDirEntry\_asInterface](<#typedef-t_statdirentry_asinterface>)

- [typedef T\_statDirEntry\_static\_extension](<#typedef-t_statdirentry_static_extension>)

- [typedef T\_subFS](<#typedef-t_subfs>)

- [typedef T\_subFS\_asInterface](<#typedef-t_subfs_asinterface>)

- [typedef T\_subFS\_static\_extension](<#typedef-t_subfs_static_extension>)

- [typedef WalkDirFunc](<#typedef-walkdirfunc>)

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


# Functions


```haxe
import stdgo.io.fs.Fs
```


## function fileInfoToDirEntry


```haxe
function fileInfoToDirEntry(info:stdgo.io.fs.FileInfo):stdgo.io.fs.DirEntry
```



FileInfoToDirEntry returns a DirEntry that returns information from info.
If info is nil, FileInfoToDirEntry returns nil.  

[\(view code\)](<./Fs.hx#L134>)


## function formatDirEntry


```haxe
function formatDirEntry(dir:stdgo.io.fs.DirEntry):String
```



FormatDirEntry returns a formatted version of dir for human readability.
Implementations of DirEntry can call this from a String method.
The outputs for a directory named subdir and a file named hello.go are:  

```
	d subdir/
	- hello.go
```
[\(view code\)](<./Fs.hx#L89>)


## function formatFileInfo


```haxe
function formatFileInfo(info:stdgo.io.fs.FileInfo):String
```



FormatFileInfo returns a formatted version of info for human readability.
Implementations of FileInfo can call this from a String method.
The output for a file named "hello.go", 100 bytes, mode 0o644, created
January 1, 1970 at noon is  

```
	-rw-r--r-- 100 1970-01-01 12:00:00 hello.go
```
[\(view code\)](<./Fs.hx#L80>)


## function get\_errClosed


```haxe
function get_errClosed():stdgo.Error
```


[\(view code\)](<./Fs.hx#L36>)


## function get\_errExist


```haxe
function get_errExist():stdgo.Error
```


[\(view code\)](<./Fs.hx#L30>)


## function get\_errInvalid


```haxe
function get_errInvalid():stdgo.Error
```


[\(view code\)](<./Fs.hx#L24>)


## function get\_errNotExist


```haxe
function get_errNotExist():stdgo.Error
```


[\(view code\)](<./Fs.hx#L33>)


## function get\_errPermission


```haxe
function get_errPermission():stdgo.Error
```


[\(view code\)](<./Fs.hx#L27>)


## function get\_skipAll


```haxe
function get_skipAll():stdgo.Error
```


[\(view code\)](<./Fs.hx#L42>)


## function get\_skipDir


```haxe
function get_skipDir():stdgo.Error
```


[\(view code\)](<./Fs.hx#L39>)


## function glob


```haxe
function glob(fsys:stdgo.io.fs.FS, pattern:String):stdgo.Tuple<Array<String>, stdgo.Error>
```



Glob returns the names of all files matching pattern or nil
if there is no matching file. The syntax of patterns is the same
as in path.Match. The pattern may describe hierarchical names such as
usr/|\*|/bin/ed.  


Glob ignores file system errors such as I/O errors reading directories.
The only possible returned error is path.ErrBadPattern, reporting that
the pattern is malformed.  


If fs implements GlobFS, Glob calls fs.Glob.
Otherwise, Glob uses ReadDir to traverse the directory tree
and look for matches for the pattern.  

[\(view code\)](<./Fs.hx#L120>)


## function readDir


```haxe
function readDir(fsys:stdgo.io.fs.FS, name:String):stdgo.Tuple<Array<stdgo.io.fs.DirEntry>, stdgo.Error>
```



ReadDir reads the named directory
and returns a list of directory entries sorted by filename.  


If fs implements ReadDirFS, ReadDir calls fs.ReadDir.
Otherwise ReadDir calls fs.Open and uses ReadDir and Close
on the returned file.  

[\(view code\)](<./Fs.hx#L129>)


## function readFile


```haxe
function readFile(fsys:stdgo.io.fs.FS, name:String):stdgo.Tuple<Array<Int>, stdgo.Error>
```



ReadFile reads the named file from the file system fs and returns its contents.
A successful call returns a nil error, not io.EOF.
\(Because ReadFile reads the whole file, the expected EOF
from the final Read is not treated as an error to be reported.\)  


If fs implements ReadFileFS, ReadFile calls fs.ReadFile.
Otherwise ReadFile calls fs.Open and uses Read and Close
on the returned file.  

[\(view code\)](<./Fs.hx#L145>)


## function set\_errClosed


```haxe
function set_errClosed(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Fs.hx#L37>)


## function set\_errExist


```haxe
function set_errExist(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Fs.hx#L31>)


## function set\_errInvalid


```haxe
function set_errInvalid(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Fs.hx#L25>)


## function set\_errNotExist


```haxe
function set_errNotExist(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Fs.hx#L34>)


## function set\_errPermission


```haxe
function set_errPermission(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Fs.hx#L28>)


## function set\_skipAll


```haxe
function set_skipAll(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Fs.hx#L43>)


## function set\_skipDir


```haxe
function set_skipDir(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Fs.hx#L40>)


## function stat


```haxe
function stat(fsys:stdgo.io.fs.FS, name:String):stdgo.Tuple<stdgo.io.fs.FileInfo, stdgo.Error>
```



Stat returns a FileInfo describing the named file from the file system.  


If fs implements StatFS, Stat calls fs.Stat.
Otherwise, Stat opens the file to stat it.  

[\(view code\)](<./Fs.hx#L152>)


## function sub


```haxe
function sub(fsys:stdgo.io.fs.FS, dir:String):stdgo.Tuple<stdgo.io.fs.FS, stdgo.Error>
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

[\(view code\)](<./Fs.hx#L169>)


## function validPath


```haxe
function validPath(name:String):Bool
```



ValidPath reports whether the given path name
is valid for use in a call to Open.  


Path names passed to open are UTF\-8\-encoded,
unrooted, slash\-separated sequences of path elements, like “x/y/z”.
Path names must not contain an element that is “.” or “..” or the empty string,
except for the special case that the root directory is named “.”.
Paths must not start or end with a slash: “/x” and “x/” are invalid.  


Note that paths are slash\-separated on all systems, even Windows.
Paths containing other characters such as backslash and colon
are accepted as valid, but those characters must never be
interpreted by an FS implementation as path element separators.  

[\(view code\)](<./Fs.hx#L105>)


## function walkDir


```haxe
function walkDir(fsys:stdgo.io.fs.FS, root:String, fn:stdgo.io.fs.WalkDirFunc):stdgo.Error
```



WalkDir walks the file tree rooted at root, calling fn for each file or
directory in the tree, including root.  


All errors that arise visiting files and directories are filtered by fn:
see the fs.WalkDirFunc documentation for details.  


The files are walked in lexical order, which makes the output deterministic
but requires WalkDir to read an entire directory into memory before proceeding
to walk that directory.  


WalkDir does not follow symbolic links found in directories,
but if root itself is a symbolic link, its target will be walked.  

[\(view code\)](<./Fs.hx#L184>)


# Typedefs


```haxe
import stdgo.io.fs.*
```


## typedef DirEntry


```haxe
typedef DirEntry = stdgo._internal.io.fs.DirEntry;
```


## typedef DirEntry\_static\_extension


```haxe
typedef DirEntry_static_extension = Dynamic;
```


## typedef FS


```haxe
typedef FS = stdgo._internal.io.fs.FS;
```


## typedef FS\_static\_extension


```haxe
typedef FS_static_extension = Dynamic;
```


## typedef File


```haxe
typedef File = stdgo._internal.io.fs.File;
```


## typedef FileInfo


```haxe
typedef FileInfo = stdgo._internal.io.fs.FileInfo;
```


## typedef FileInfo\_static\_extension


```haxe
typedef FileInfo_static_extension = Dynamic;
```


## typedef FileMode


```haxe
typedef FileMode = stdgo._internal.io.fs.FileMode;
```


## typedef FileMode\_asInterface


```haxe
typedef FileMode_asInterface = Dynamic;
```


## typedef FileMode\_static\_extension


```haxe
typedef FileMode_static_extension = Dynamic;
```


## typedef File\_static\_extension


```haxe
typedef File_static_extension = Dynamic;
```


## typedef GlobFS


```haxe
typedef GlobFS = stdgo._internal.io.fs.GlobFS;
```


## typedef GlobFS\_static\_extension


```haxe
typedef GlobFS_static_extension = Dynamic;
```


## typedef PathError


```haxe
typedef PathError = Dynamic;
```


## typedef PathError\_asInterface


```haxe
typedef PathError_asInterface = Dynamic;
```


## typedef PathError\_static\_extension


```haxe
typedef PathError_static_extension = Dynamic;
```


## typedef ReadDirFS


```haxe
typedef ReadDirFS = stdgo._internal.io.fs.ReadDirFS;
```


## typedef ReadDirFS\_static\_extension


```haxe
typedef ReadDirFS_static_extension = Dynamic;
```


## typedef ReadDirFile


```haxe
typedef ReadDirFile = stdgo._internal.io.fs.ReadDirFile;
```


## typedef ReadDirFile\_static\_extension


```haxe
typedef ReadDirFile_static_extension = Dynamic;
```


## typedef ReadFileFS


```haxe
typedef ReadFileFS = stdgo._internal.io.fs.ReadFileFS;
```


## typedef ReadFileFS\_static\_extension


```haxe
typedef ReadFileFS_static_extension = Dynamic;
```


## typedef StatFS


```haxe
typedef StatFS = stdgo._internal.io.fs.StatFS;
```


## typedef StatFS\_static\_extension


```haxe
typedef StatFS_static_extension = Dynamic;
```


## typedef SubFS


```haxe
typedef SubFS = stdgo._internal.io.fs.SubFS;
```


## typedef SubFS\_static\_extension


```haxe
typedef SubFS_static_extension = Dynamic;
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = stdgo._internal.io.fs.T__interface_0;
```


## typedef T\_\_interface\_0\_static\_extension


```haxe
typedef T__interface_0_static_extension = Dynamic;
```


## typedef T\_dirInfo


```haxe
typedef T_dirInfo = Dynamic;
```


## typedef T\_dirInfo\_asInterface


```haxe
typedef T_dirInfo_asInterface = Dynamic;
```


## typedef T\_dirInfo\_static\_extension


```haxe
typedef T_dirInfo_static_extension = Dynamic;
```


## typedef T\_statDirEntry


```haxe
typedef T_statDirEntry = Dynamic;
```


## typedef T\_statDirEntry\_asInterface


```haxe
typedef T_statDirEntry_asInterface = Dynamic;
```


## typedef T\_statDirEntry\_static\_extension


```haxe
typedef T_statDirEntry_static_extension = Dynamic;
```


## typedef T\_subFS


```haxe
typedef T_subFS = Dynamic;
```


## typedef T\_subFS\_asInterface


```haxe
typedef T_subFS_asInterface = Dynamic;
```


## typedef T\_subFS\_static\_extension


```haxe
typedef T_subFS_static_extension = Dynamic;
```


## typedef WalkDirFunc


```haxe
typedef WalkDirFunc = stdgo._internal.io.fs.WalkDirFunc;
```


