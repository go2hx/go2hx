# Module: `stdgo.path`

[(view library index)](../stdgo.md)


# Overview



Package path implements utility routines for manipulating slash\-separated
paths.  


The path package should only be used for paths separated by forward
slashes, such as the paths in URLs. This package does not deal with
Windows paths with drive letters or backslashes; to manipulate
operating system paths, use the path/filepath package.  

# Index


- [Variables](<#variables>)

- [`function base(path:String):String`](<#function-base>)

- [`function clean(path:String):String`](<#function-clean>)

- [`function dir(path:String):String`](<#function-dir>)

- [`function ext(path:String):String`](<#function-ext>)

- [`function get_errBadPattern():stdgo.Error`](<#function-get_errbadpattern>)

- [`function isAbs(path:String):Bool`](<#function-isabs>)

- [`function join(elem:haxe.Rest<stdgo.GoString>):String`](<#function-join>)

- [`function match(pattern:String, name:String):stdgo.Tuple<Bool, stdgo.Error>`](<#function-match>)

- [`function set_errBadPattern(v:stdgo.Error):stdgo.Error`](<#function-set_errbadpattern>)

- [`function split(path:String):stdgo.Tuple<String, String>`](<#function-split>)

- [typedef T\_lazybuf](<#typedef-t_lazybuf>)

- [typedef T\_lazybuf\_asInterface](<#typedef-t_lazybuf_asinterface>)

- [typedef T\_lazybuf\_static\_extension](<#typedef-t_lazybuf_static_extension>)

# Variables


```haxe
import stdgo.path.Path
```


```haxe
var errBadPattern:stdgo.Error
```


# Functions


```haxe
import stdgo.path.Path
```


## function base


```haxe
function base(path:String):String
```



Base returns the last element of path.
Trailing slashes are removed before extracting the last element.
If the path is empty, Base returns ".".
If the path consists entirely of slashes, Base returns "/".  

[\(view code\)](<./Path.hx#L91>)


## function clean


```haxe
function clean(path:String):String
```



Clean returns the shortest path name equivalent to path
by purely lexical processing. It applies the following rules
iteratively until no further processing can be done:  

```
  1. Replace multiple slashes with a single slash.
  2. Eliminate each . path name element (the current directory).
  3. Eliminate each inner .. path name element (the parent directory)
     along with the non-.. element that precedes it.
  4. Eliminate .. elements that begin a rooted path:
     that is, replace "/.." by "/" at the beginning of a path.
```

The returned path ends in a slash only if it is the root "/".  


If the result of this process is an empty string, Clean
returns the string ".".  


See also Rob Pike, “Lexical File Names in Plan 9 or
Getting Dot\-Dot Right,”
https://9p.io/sys/doc/lexnames.html  

[\(view code\)](<./Path.hx#L61>)


## function dir


```haxe
function dir(path:String):String
```



Dir returns all but the last element of path, typically the path's directory.
After dropping the final element using Split, the path is Cleaned and trailing
slashes are removed.
If the path is empty, Dir returns ".".
If the path consists entirely of slashes followed by non\-slash bytes, Dir
returns a single slash. In any other case, the returned path does not end in a
slash.  

[\(view code\)](<./Path.hx#L105>)


## function ext


```haxe
function ext(path:String):String
```



Ext returns the file name extension used by path.
The extension is the suffix beginning at the final dot
in the final slash\-separated element of path;
it is empty if there is no dot.  

[\(view code\)](<./Path.hx#L84>)


## function get\_errBadPattern


```haxe
function get_errBadPattern():stdgo.Error
```


[\(view code\)](<./Path.hx#L13>)


## function isAbs


```haxe
function isAbs(path:String):Bool
```



IsAbs reports whether the path is absolute.  

[\(view code\)](<./Path.hx#L95>)


## function join


```haxe
function join(elem:haxe.Rest<stdgo.GoString>):String
```



Join joins any number of path elements into a single path,
separating them with slashes. Empty elements are ignored.
The result is Cleaned. However, if the argument list is
empty or all its elements are empty, Join returns
an empty string.  

[\(view code\)](<./Path.hx#L77>)


## function match


```haxe
function match(pattern:String, name:String):stdgo.Tuple<Bool, stdgo.Error>
```



Match reports whether name matches the shell pattern.
The pattern syntax is:  

```
	pattern:
		{ term }
	term:
		'*'         matches any sequence of non-/ characters
		'?'         matches any single non-/ character
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

[\(view code\)](<./Path.hx#L39>)


## function set\_errBadPattern


```haxe
function set_errBadPattern(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Path.hx#L14>)


## function split


```haxe
function split(path:String):stdgo.Tuple<String, String>
```



Split splits path immediately following the final slash,
separating it into a directory and file name component.
If there is no slash in path, Split returns an empty dir and
file set to path.
The returned values have the property that path = dir\+file.  

[\(view code\)](<./Path.hx#L69>)


# Typedefs


```haxe
import stdgo.path.*
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


