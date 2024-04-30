# Module: `stdgo.path.filepath`

[(view library index)](../../stdgo.md)


# Overview


```
Package filepath implements utility routines for manipulating filename paths
    in a way compatible with the target operating system-defined file paths.
```

The filepath package uses either forward slashes or backslashes,
depending on the operating system. To process paths such as URLs
that always use forward slashes regardless of the operating
system, see the \[path\] package.  

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function abs(path:String):stdgo.Tuple<String, stdgo.Error>`](<#function-abs>)

- [`function base(path:String):String`](<#function-base>)

- [`function clean(path:String):String`](<#function-clean>)

- [`function dir(path:String):String`](<#function-dir>)

- [`function evalSymlinks(path:String):stdgo.Tuple<String, stdgo.Error>`](<#function-evalsymlinks>)

- [`function ext(path:String):String`](<#function-ext>)

- [`function fromSlash(path:String):String`](<#function-fromslash>)

- [`function get_errBadPattern():stdgo.Error`](<#function-get_errbadpattern>)

- [`function get_lstatP():()`](<#function-get_lstatp>)

- [`function get_skipAll():stdgo.Error`](<#function-get_skipall>)

- [`function get_skipDir():stdgo.Error`](<#function-get_skipdir>)

- [`function glob(pattern:String):stdgo.Tuple<Array<String>, stdgo.Error>`](<#function-glob>)

- [`function hasPrefix(p:String, prefix:String):Bool`](<#function-hasprefix>)

- [`function isAbs(path:String):Bool`](<#function-isabs>)

- [`function isLocal(path:String):Bool`](<#function-islocal>)

- [`function join(elem:haxe.Rest<stdgo.GoString>):String`](<#function-join>)

- [`function lstatP()`](<#function-lstatp>)

- [`function match(pattern:String, name:String):stdgo.Tuple<Bool, stdgo.Error>`](<#function-match>)

- [`function rel(basepath:String, targpath:String):stdgo.Tuple<String, stdgo.Error>`](<#function-rel>)

- [`function set_errBadPattern(v:stdgo.Error):stdgo.Error`](<#function-set_errbadpattern>)

- [`function set_lstatP(v:()):()`](<#function-set_lstatp>)

- [`function set_skipAll(v:stdgo.Error):stdgo.Error`](<#function-set_skipall>)

- [`function set_skipDir(v:stdgo.Error):stdgo.Error`](<#function-set_skipdir>)

- [`function split(path:String):stdgo.Tuple<String, String>`](<#function-split>)

- [`function splitList(path:String):Array<String>`](<#function-splitlist>)

- [`function toSlash(path:String):String`](<#function-toslash>)

- [`function volumeName(path:String):String`](<#function-volumename>)

- [`function walk(root:String, fn:stdgo.path.filepath.WalkFunc):stdgo.Error`](<#function-walk>)

- [`function walkDir(root:String, fn:stdgo._internal.io.fs.WalkDirFunc):stdgo.Error`](<#function-walkdir>)

- [typedef T\_lazybuf](<#typedef-t_lazybuf>)

- [typedef T\_lazybuf\_asInterface](<#typedef-t_lazybuf_asinterface>)

- [typedef T\_lazybuf\_static\_extension](<#typedef-t_lazybuf_static_extension>)

- [typedef T\_statDirEntry](<#typedef-t_statdirentry>)

- [typedef T\_statDirEntry\_asInterface](<#typedef-t_statdirentry_asinterface>)

- [typedef T\_statDirEntry\_static\_extension](<#typedef-t_statdirentry_static_extension>)

- [typedef WalkFunc](<#typedef-walkfunc>)

# Constants


```haxe
import stdgo.path.filepath.Filepath
```


```haxe
final listSeparator:Int = stdgo._internal.path.filepath.Filepath.listSeparator
```


```haxe
final separator:Int = stdgo._internal.path.filepath.Filepath.separator
```


# Variables


```haxe
import stdgo.path.filepath.Filepath
```


```haxe
var errBadPattern:stdgo.Error
```


```haxe
var skipAll:stdgo.Error
```


```haxe
var skipDir:stdgo.Error
```


# Functions


```haxe
import stdgo.path.filepath.Filepath
```


## function abs


```haxe
function abs(path:String):stdgo.Tuple<String, stdgo.Error>
```


```
Abs returns an absolute representation of path.
    If the path is not absolute it will be joined with the current
    working directory to turn it into an absolute path. The absolute
    path name for a given file is not guaranteed to be unique.
    Abs calls Clean on the result.
```
[\(view code\)](<./Filepath.hx#L173>)


## function base


```haxe
function base(path:String):String
```


```
Base returns the last element of path.
    Trailing path separators are removed before extracting the last element.
    If the path is empty, Base returns ".".
    If the path consists entirely of separators, Base returns a single separator.
```
[\(view code\)](<./Filepath.hx#L226>)


## function clean


```haxe
function clean(path:String):String
```


```
Clean returns the shortest path name equivalent to path
    by purely lexical processing. It applies the following rules
    iteratively until no further processing can be done:
```
```
     1. Replace multiple Separator elements with a single one.
     2. Eliminate each . path name element (the current directory).
     3. Eliminate each inner .. path name element (the parent directory)
        along with the non-.. element that precedes it.
     4. Eliminate .. elements that begin a rooted path:
        that is, replace "/.." by "/" at the beginning of a path,
        assuming Separator is '/'.
```

The returned path ends in a slash only if it represents a root directory,
such as "/" on Unix or \`C:\\\` on Windows.  


Finally, any occurrences of slash are replaced by Separator.  


If the result of this process is an empty string, Clean
returns the string ".".  


On Windows, Clean does not modify the volume name other than to replace
occurrences of "/" with \`\\\`.
For example, Clean\("//host/share/../x"\) returns \`\\\\host\\share\\x\`.  


See also Rob Pike, “Lexical File Names in Plan 9 or
Getting Dot\-Dot Right,”
https://9p.io/sys/doc/lexnames.html  

[\(view code\)](<./Filepath.hx#L96>)


## function dir


```haxe
function dir(path:String):String
```


```
Dir returns all but the last element of path, typically the path's directory.
    After dropping the final element, Dir calls Clean on the path and trailing
    slashes are removed.
    If the path is empty, Dir returns ".".
    If the path consists entirely of separators, Dir returns a single separator.
    The returned path does not end in a separator unless it is the root directory.
```
[\(view code\)](<./Filepath.hx#L235>)


## function evalSymlinks


```haxe
function evalSymlinks(path:String):stdgo.Tuple<String, stdgo.Error>
```


```
EvalSymlinks returns the path name after the evaluation of any symbolic
    links.
    If path is relative the result will be relative to the current directory,
    unless one of the components is an absolute symbolic link.
    EvalSymlinks calls Clean on the result.
```
[\(view code\)](<./Filepath.hx#L165>)


## function ext


```haxe
function ext(path:String):String
```


```
Ext returns the file name extension used by path.
    The extension is the suffix beginning at the final dot
    in the final element of path; it is empty if there is
    no dot.
```
[\(view code\)](<./Filepath.hx#L157>)


## function fromSlash


```haxe
function fromSlash(path:String):String
```


```
FromSlash returns the result of replacing each slash ('/') character
    in path with a separator character. Multiple slashes are replaced
    by multiple separators.
```
[\(view code\)](<./Filepath.hx#L125>)


## function get\_errBadPattern


```haxe
function get_errBadPattern():stdgo.Error
```


[\(view code\)](<./Filepath.hx#L15>)


## function get\_lstatP


```haxe
function get_lstatP():()
```


[\(view code\)](<./Filepath.hx#L24>)


## function get\_skipAll


```haxe
function get_skipAll():stdgo.Error
```


[\(view code\)](<./Filepath.hx#L21>)


## function get\_skipDir


```haxe
function get_skipDir():stdgo.Error
```


[\(view code\)](<./Filepath.hx#L18>)


## function glob


```haxe
function glob(pattern:String):stdgo.Tuple<Array<String>, stdgo.Error>
```


```
Glob returns the names of all files matching pattern or nil
    if there is no matching file. The syntax of patterns is the same
    as in Match. The pattern may describe hierarchical names such as
    /usr/|*|/bin/ed (assuming the Separator is '/').
```

Glob ignores file system errors such as I/O errors reading directories.
The only possible returned error is ErrBadPattern, when pattern
is malformed.  

[\(view code\)](<./Filepath.hx#L66>)


## function hasPrefix


```haxe
function hasPrefix(p:String, prefix:String):Bool
```



HasPrefix exists for historical compatibility and should not be used.  


Deprecated: HasPrefix does not respect path boundaries and
does not ignore case when required.  

[\(view code\)](<./Filepath.hx#L253>)


## function isAbs


```haxe
function isAbs(path:String):Bool
```



IsAbs reports whether the path is absolute.  

[\(view code\)](<./Filepath.hx#L246>)


## function isLocal


```haxe
function isLocal(path:String):Bool
```



IsLocal reports whether path, using lexical analysis only, has all of these properties:  


\- is within the subtree rooted at the directory in which path is evaluated
\- is not an absolute path
\- is not empty
\- on Windows, is not a reserved name such as "NUL"  

```
    If IsLocal(path) returns true, then
    Join(base, path) will always produce a path contained within base and
    Clean(path) will always produce an unrooted path with no ".." path elements.
```

IsLocal is a purely lexical operation.
In particular, it does not account for the effect of any symbolic links
that may exist in the filesystem.  

[\(view code\)](<./Filepath.hx#L113>)


## function join


```haxe
function join(elem:haxe.Rest<stdgo.GoString>):String
```


```
Join joins any number of path elements into a single path,
    separating them with an OS specific Separator. Empty elements
    are ignored. The result is Cleaned. However, if the argument
    list is empty or all its elements are empty, Join returns
    an empty string.
    On Windows, the result will only be a UNC path if the first
    non-empty element is a UNC path.
```
[\(view code\)](<./Filepath.hx#L150>)


## function lstatP


```haxe
function lstatP()
```


[\(view code\)](<./Filepath.hx>)


## function match


```haxe
function match(pattern:String, name:String):stdgo.Tuple<Bool, stdgo.Error>
```


```
Match reports whether name matches the shell file name pattern.
    The pattern syntax is:
```
```
    	pattern:
    		{ term }
    	term:
    		'*'         matches any sequence of non-Separator characters
    		'?'         matches any single non-Separator character
    		'[' [ '^' ] { character-range } ']'
    		            character class (must be non-empty)
    		c           matches character c (c != '*', '?', '\\', '[')
    		'\\' c      matches character c
```
```
    	character-range:
    		c           matches character c (c != '\\', '-', ']')
    		'\\' c      matches character c
    		lo '-' hi   matches character c for lo <= c <= hi
```

Match requires pattern to match all of name, not just a substring.
The only possible returned error is ErrBadPattern, when pattern
is malformed.  


On Windows, escaping is disabled. Instead, '\\\\' is treated as
path separator.  

[\(view code\)](<./Filepath.hx#L55>)


## function rel


```haxe
function rel(basepath:String, targpath:String):stdgo.Tuple<String, stdgo.Error>
```


```
Rel returns a relative path that is lexically equivalent to targpath when
    joined to basepath with an intervening separator. That is,
    Join(basepath, Rel(basepath, targpath)) is equivalent to targpath itself.
    On success, the returned path will always be relative to basepath,
    even if basepath and targpath share no elements.
    An error is returned if targpath can't be made relative to basepath or if
    knowing the current working directory would be necessary to compute it.
    Rel calls Clean on the result.
```
[\(view code\)](<./Filepath.hx#L184>)


## function set\_errBadPattern


```haxe
function set_errBadPattern(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Filepath.hx#L16>)


## function set\_lstatP


```haxe
function set_lstatP(v:()):()
```


[\(view code\)](<./Filepath.hx#L25>)


## function set\_skipAll


```haxe
function set_skipAll(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Filepath.hx#L22>)


## function set\_skipDir


```haxe
function set_skipDir(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Filepath.hx#L19>)


## function split


```haxe
function split(path:String):stdgo.Tuple<String, String>
```


```
Split splits path immediately following the final Separator,
    separating it into a directory and file name component.
    If there is no Separator in path, Split returns an empty dir
    and file set to path.
    The returned values have the property that path = dir+file.
```
[\(view code\)](<./Filepath.hx#L140>)


## function splitList


```haxe
function splitList(path:String):Array<String>
```


```
SplitList splits a list of paths joined by the OS-specific ListSeparator,
    usually found in PATH or GOPATH environment variables.
    Unlike strings.Split, SplitList returns an empty slice when passed an empty
    string.
```
[\(view code\)](<./Filepath.hx#L132>)


## function toSlash


```haxe
function toSlash(path:String):String
```


```
ToSlash returns the result of replacing each separator character
    in path with a slash ('/') character. Multiple separators are
    replaced by multiple slashes.
```
[\(view code\)](<./Filepath.hx#L119>)


## function volumeName


```haxe
function volumeName(path:String):String
```


```
VolumeName returns leading volume name.
    Given "C:\foo\bar" it returns "C:" on Windows.
    Given "\\host\share\foo" it returns "\\host\share".
    On other platforms it returns "".
```
[\(view code\)](<./Filepath.hx#L242>)


## function walk


```haxe
function walk(root:String, fn:stdgo.path.filepath.WalkFunc):stdgo.Error
```


```
Walk walks the file tree rooted at root, calling fn for each file or
    directory in the tree, including root.
```

All errors that arise visiting files and directories are filtered by fn:
see the WalkFunc documentation for details.  


The files are walked in lexical order, which makes the output deterministic
but requires Walk to read an entire directory into memory before proceeding
to walk that directory.  


Walk does not follow symbolic links.  


Walk is less efficient than WalkDir, introduced in Go 1.16,
which avoids calling os.Lstat on every visited file or directory.  

[\(view code\)](<./Filepath.hx#L219>)


## function walkDir


```haxe
function walkDir(root:String, fn:stdgo._internal.io.fs.WalkDirFunc):stdgo.Error
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


WalkDir does not follow symbolic links.  


WalkDir calls fn with paths that use the separator character appropriate
for the operating system. This is unlike \[io/fs.WalkDir\], which always
uses slash separated paths.  

[\(view code\)](<./Filepath.hx#L202>)


# Typedefs


```haxe
import stdgo.path.filepath.*
```


## typedef T\_lazybuf


```haxe
typedef T_lazybuf = Dynamic;
```


## typedef T\_lazybuf\_asInterface


```haxe
typedef T_lazybuf_asInterface = Dynamic;
```


## typedef T\_lazybuf\_static\_extension


```haxe
typedef T_lazybuf_static_extension = Dynamic;
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


## typedef WalkFunc


```haxe
typedef WalkFunc = stdgo._internal.path.filepath.WalkFunc;
```


