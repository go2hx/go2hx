# Module: `stdgo.path.filepath`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function lstatP()`](<#function-lstatp>)

- [class Filepath](<#class-filepath>)

  - [`function abs(_path:String):stdgo.Tuple<String, stdgo.Error>`](<#filepath-function-abs>)

  - [`function base(_path:String):String`](<#filepath-function-base>)

  - [`function clean(_path:String):String`](<#filepath-function-clean>)

  - [`function dir(_path:String):String`](<#filepath-function-dir>)

  - [`function evalSymlinks(_path:String):stdgo.Tuple<String, stdgo.Error>`](<#filepath-function-evalsymlinks>)

  - [`function ext(_path:String):String`](<#filepath-function-ext>)

  - [`function fromSlash(_path:String):String`](<#filepath-function-fromslash>)

  - [`function glob(_pattern:String):stdgo.Tuple<Array<String>, stdgo.Error>`](<#filepath-function-glob>)

  - [`function hasPrefix(_p:String, _prefix:String):Bool`](<#filepath-function-hasprefix>)

  - [`function isAbs(_path:String):Bool`](<#filepath-function-isabs>)

  - [`function isLocal(_path:String):Bool`](<#filepath-function-islocal>)

  - [`function join(_elem:haxe.Rest<String>):String`](<#filepath-function-join>)

  - [`function match(_pattern:String, _name:String):stdgo.Tuple<Bool, stdgo.Error>`](<#filepath-function-match>)

  - [`function rel(_basepath:String, _targpath:String):stdgo.Tuple<String, stdgo.Error>`](<#filepath-function-rel>)

  - [`function split(_path:String):stdgo.Tuple<String, String>`](<#filepath-function-split>)

  - [`function splitList(_path:String):Array<String>`](<#filepath-function-splitlist>)

  - [`function toSlash(_path:String):String`](<#filepath-function-toslash>)

  - [`function volumeName(_path:String):String`](<#filepath-function-volumename>)

  - [`function walk(_root:String, _fn:stdgo.path.filepath.WalkFunc):stdgo.Error`](<#filepath-function-walk>)

  - [`function walkDir(_root:String, _fn:stdgo._internal.io.fs.WalkDirFunc):stdgo.Error`](<#filepath-function-walkdir>)

- [typedef WalkFunc](<#typedef-walkfunc>)

- [abstract T\_lazybuf](<#abstract-t_lazybuf>)

- [abstract T\_statDirEntry](<#abstract-t_statdirentry>)

# Constants


```haxe
import stdgo.path.filepath.Filepath
```


```haxe
final listSeparator:Int = stdgo._internal.path.filepath.Filepath_listSeparator.listSeparator
```


```haxe
final separator:Int = stdgo._internal.path.filepath.Filepath_separator.separator
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


## function lstatP


```haxe
function lstatP()
```


[\(view code\)](<./Filepath.hx>)


# Classes


```haxe
import stdgo.path.filepath.*
```


## class Filepath


```
{
    	_ = 0
    	gotoNext = 4019577
    	_ = gotoNext == 4019577
    	if len(pattern) > 0 && pattern[0] == 42 {
    		gotoNext = 4019619
    		_ = gotoNext == 4019619
    		pattern = pattern[1:]
    		star = true
    		gotoNext = 4019577
    	} else {
    		gotoNext = 4019663
}
    	_ = gotoNext == 4019663
    	inrange_4019663 = false
    	gotoNext = 4019691
    	_ = gotoNext == 4019691
    	i_4019685 = 0
    	ScanBreak = false
    	gotoNext = 4019698
    	_ = gotoNext == 4019698
    	if !ScanBreak && (i_4019685 < len(pattern)) {
    		gotoNext = 4019731
    		_ = gotoNext == 4019731
    		_ = 0
    		gotoNext = 4019735
    		_ = gotoNext == 4019735
    		switch pattern[i_4019685] {
    		case 92:
    			gotoNext = 4019757
    			_ = gotoNext == 4019757
    			if true {
    				gotoNext = 4019800
    				_ = gotoNext == 4019800
    				if i_4019685+1 < len(pattern) {
    					gotoNext = 4019883
    					_ = gotoNext == 4019883
    					i_4019685++
    					gotoNext = 4019727
    				} else {
    					gotoNext = 4019727
}
    				gotoNext = 4019727
    			} else {
    				gotoNext = 4019727
}
    			gotoNext = 4019727
    		case 91:
    			gotoNext = 4019907
    			_ = gotoNext == 4019907
    			inrange_4019663 = true
    			gotoNext = 4019727
    		case 93:
    			gotoNext = 4019937
    			_ = gotoNext == 4019937
    			inrange_4019663 = false
    			gotoNext = 4019727
    		case 42:
    			gotoNext = 4019968
    			_ = gotoNext == 4019968
    			if !inrange_4019663 {
    				gotoNext = 4019993
    				_ = gotoNext == 4019993
    				ScanBreak = true
    				gotoNext = 4019698
    				gotoNext = 4019727
    			} else {
    				gotoNext = 4019727
}
    			gotoNext = 4019727
    		default:
    			gotoNext = 4019727
}
    		_ = gotoNext == 4019727
    		i_4019685++
    		gotoNext = 4019698
    	} else {
    		gotoNext = 4020023
}
    	_ = gotoNext == 4020023
    	return star, pattern[0:i_4019685], pattern[i_4019685:]
    	gotoNext = -1
    }
```
### Filepath function abs


```haxe
function abs(_path:String):stdgo.Tuple<String, stdgo.Error>
```


```
Abs returns an absolute representation of path.
        If the path is not absolute it will be joined with the current
        working directory to turn it into an absolute path. The absolute
        path name for a given file is not guaranteed to be unique.
        Abs calls Clean on the result.
```
[\(view code\)](<./Filepath.hx#L373>)


### Filepath function base


```haxe
function base(_path:String):String
```


```
Base returns the last element of path.
        Trailing path separators are removed before extracting the last element.
        If the path is empty, Base returns ".".
        If the path consists entirely of separators, Base returns a single separator.
```
[\(view code\)](<./Filepath.hx#L440>)


### Filepath function clean


```haxe
function clean(_path:String):String
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

[\(view code\)](<./Filepath.hx#L272>)


### Filepath function dir


```haxe
function dir(_path:String):String
```


```
Dir returns all but the last element of path, typically the path's directory.
        After dropping the final element, Dir calls Clean on the path and trailing
        slashes are removed.
        If the path is empty, Dir returns ".".
        If the path consists entirely of separators, Dir returns a single separator.
        The returned path does not end in a separator unless it is the root directory.
```
[\(view code\)](<./Filepath.hx#L451>)


### Filepath function evalSymlinks


```haxe
function evalSymlinks(_path:String):stdgo.Tuple<String, stdgo.Error>
```


```
EvalSymlinks returns the path name after the evaluation of any symbolic
        links.
        If path is relative the result will be relative to the current directory,
        unless one of the components is an absolute symbolic link.
        EvalSymlinks calls Clean on the result.
```
[\(view code\)](<./Filepath.hx#L360>)


### Filepath function ext


```haxe
function ext(_path:String):String
```


```
Ext returns the file name extension used by path.
        The extension is the suffix beginning at the final dot
        in the final element of path; it is empty if there is
        no dot.
```
[\(view code\)](<./Filepath.hx#L350>)


### Filepath function fromSlash


```haxe
function fromSlash(_path:String):String
```


```
FromSlash returns the result of replacing each slash ('/') character
        in path with a separator character. Multiple slashes are replaced
        by multiple separators.
```
[\(view code\)](<./Filepath.hx#L307>)


### Filepath function glob


```haxe
function glob(_pattern:String):stdgo.Tuple<Array<String>, stdgo.Error>
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

[\(view code\)](<./Filepath.hx#L237>)


### Filepath function hasPrefix


```haxe
function hasPrefix(_p:String, _prefix:String):Bool
```



HasPrefix exists for historical compatibility and should not be used.  


Deprecated: HasPrefix does not respect path boundaries and
does not ignore case when required.  

[\(view code\)](<./Filepath.hx#L475>)


### Filepath function isAbs


```haxe
function isAbs(_path:String):Bool
```



IsAbs reports whether the path is absolute.  

[\(view code\)](<./Filepath.hx#L466>)


### Filepath function isLocal


```haxe
function isLocal(_path:String):Bool
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

[\(view code\)](<./Filepath.hx#L291>)


### Filepath function join


```haxe
function join(_elem:haxe.Rest<String>):String
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
[\(view code\)](<./Filepath.hx#L341>)


### Filepath function match


```haxe
function match(_pattern:String, _name:String):stdgo.Tuple<Bool, stdgo.Error>
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

[\(view code\)](<./Filepath.hx#L221>)


### Filepath function rel


```haxe
function rel(_basepath:String, _targpath:String):stdgo.Tuple<String, stdgo.Error>
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
[\(view code\)](<./Filepath.hx#L389>)


### Filepath function split


```haxe
function split(_path:String):stdgo.Tuple<String, String>
```


```
Split splits path immediately following the final Separator,
        separating it into a directory and file name component.
        If there is no Separator in path, Split returns an empty dir
        and file set to path.
        The returned values have the property that path = dir+file.
```
[\(view code\)](<./Filepath.hx#L326>)


### Filepath function splitList


```haxe
function splitList(_path:String):Array<String>
```


```
SplitList splits a list of paths joined by the OS-specific ListSeparator,
        usually found in PATH or GOPATH environment variables.
        Unlike strings.Split, SplitList returns an empty slice when passed an empty
        string.
```
[\(view code\)](<./Filepath.hx#L316>)


### Filepath function toSlash


```haxe
function toSlash(_path:String):String
```


```
ToSlash returns the result of replacing each separator character
        in path with a slash ('/') character. Multiple separators are
        replaced by multiple slashes.
```
[\(view code\)](<./Filepath.hx#L299>)


### Filepath function volumeName


```haxe
function volumeName(_path:String):String
```


```
VolumeName returns leading volume name.
        Given "C:\foo\bar" it returns "C:" on Windows.
        Given "\\host\share\foo" it returns "\\host\share".
        On other platforms it returns "".
```
[\(view code\)](<./Filepath.hx#L460>)


### Filepath function walk


```haxe
function walk(_root:String, _fn:stdgo.path.filepath.WalkFunc):stdgo.Error
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

[\(view code\)](<./Filepath.hx#L431>)


### Filepath function walkDir


```haxe
function walkDir(_root:String, _fn:stdgo._internal.io.fs.WalkDirFunc):stdgo.Error
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

[\(view code\)](<./Filepath.hx#L412>)


# Typedefs


```haxe
import stdgo.path.filepath.*
```


## typedef WalkFunc


```haxe
typedef WalkFunc = stdgo._internal.path.filepath.WalkFunc;
```


# Abstracts


## abstract T\_lazybuf


[\(view file containing code\)](<./Filepath.hx>)


## abstract T\_statDirEntry


[\(view file containing code\)](<./Filepath.hx>)


