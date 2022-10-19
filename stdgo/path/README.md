# Module: `stdgo.path`

[(view library index)](../stdgo.md)


# Overview


Package path implements utility routines for manipulating slash\-separated paths.  The path package should only be used for paths separated by forward slashes, such as the paths in URLs. This package does not deal with Windows paths with drive letters or backslashes; to manipulate operating system paths, use the path/filepath package. 


<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
=== RUN   TestMatch
Match(*c, abc) = false, null want true, null
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
=== RUN   TestMatch
Match(*c, abc) = false, null want true, null
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


- [Variables](<#variables>)

- [`function _getEsc(_chunk:stdgo.GoString):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.GoRune}`](<#function-_getesc>)

- [`function _lastSlash(_s:stdgo.GoString):stdgo.GoInt`](<#function-_lastslash>)

- [`function _matchChunk(_chunk:stdgo.GoString, _s:stdgo.GoString):{_2:stdgo.Error, _1:Bool, _0:stdgo.GoString}`](<#function-_matchchunk>)

- [`function _scanChunk(_pattern:stdgo.GoString):{_2:stdgo.GoString, _1:stdgo.GoString, _0:Bool}`](<#function-_scanchunk>)

- [`function base(_path:stdgo.GoString):stdgo.GoString`](<#function-base>)

- [`function clean(_path:stdgo.GoString):stdgo.GoString`](<#function-clean>)

- [`function dir(_path:stdgo.GoString):stdgo.GoString`](<#function-dir>)

- [`function ext(_path:stdgo.GoString):stdgo.GoString`](<#function-ext>)

- [`function isAbs(_path:stdgo.GoString):Bool`](<#function-isabs>)

- [`function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString`](<#function-join>)

- [`function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{_1:stdgo.Error, _0:Bool}`](<#function-match>)

- [`function split(_path:stdgo.GoString):{_1:stdgo.GoString, _0:stdgo.GoString}`](<#function-split>)

- [class T\_lazybuf\_static\_extension](<#class-t_lazybuf_static_extension>)

  - [`function _append(_b:stdgo.Ref<stdgo.path._Path.T_lazybuf>, _c:stdgo.GoByte):Void`](<#t_lazybuf_static_extension-function-_append>)

  - [`function _index(_b:stdgo.Ref<stdgo.path._Path.T_lazybuf>, _i:stdgo.GoInt):stdgo.GoByte`](<#t_lazybuf_static_extension-function-_index>)

  - [`function _string(_b:stdgo.Ref<stdgo.path._Path.T_lazybuf>):stdgo.GoString`](<#t_lazybuf_static_extension-function-_string>)

# Examples


- [`exampleBase`](<#examplebase>)

- [`exampleClean`](<#exampleclean>)

- [`exampleDir`](<#exampledir>)

- [`exampleExt`](<#exampleext>)

- [`exampleIsAbs`](<#exampleisabs>)

- [`exampleJoin`](<#examplejoin>)

- [`exampleMatch`](<#examplematch>)

- [`exampleSplit`](<#examplesplit>)

# Variables


```haxe
import stdgo.path.Path
```


```haxe
var errBadPattern:stdgo.Error
```


ErrBadPattern indicates a pattern was malformed. 


# Functions


```haxe
import stdgo.path.Path
```


## function \_getEsc


```haxe
function _getEsc(_chunk:stdgo.GoString):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.GoRune}
```


getEsc gets a possibly\-escaped character from chunk, for a character class. 


[\(view code\)](<./Path.hx#L324>)


## function \_lastSlash


```haxe
function _lastSlash(_s:stdgo.GoString):stdgo.GoInt
```


lastSlash\(s\) is strings.LastIndex\(s, "/"\) but we can't import strings. 


[\(view code\)](<./Path.hx#L430>)


## function \_matchChunk


```haxe
function _matchChunk(_chunk:stdgo.GoString, _s:stdgo.GoString):{_2:stdgo.Error, _1:Bool, _0:stdgo.GoString}
```


matchChunk checks whether chunk matches the beginning of s. If so, it returns the remainder of s \(after the match\). Chunk is all single\-character operators: literals, char classes, and ?. 


[\(view code\)](<./Path.hx#L205>)


## function \_scanChunk


```haxe
function _scanChunk(_pattern:stdgo.GoString):{_2:stdgo.GoString, _1:stdgo.GoString, _0:Bool}
```


scanChunk gets the next segment of pattern, which is a non\-star string possibly preceded by a star. 


[\(view code\)](<./Path.hx#L153>)


## function base


```haxe
function base(_path:stdgo.GoString):stdgo.GoString
```


Base returns the last element of path. Trailing slashes are removed before extracting the last element. If the path is empty, Base returns ".". If the path consists entirely of slashes, Base returns "/". 


### exampleBase


<details><summary></summary>
<p>


```haxe
function exampleBase():Void {
	stdgo.fmt.Fmt.println(stdgo.path.Path.base(Go.str("/a/b")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.base(Go.str("/")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.base(Go.str()));
}
```


</p>
</details>


[\(view code\)](<./Path.hx#L503>)


## function clean


```haxe
function clean(_path:stdgo.GoString):stdgo.GoString
```


Clean returns the shortest path name equivalent to path by purely lexical processing. It applies the following rules iteratively until no further processing can be done:  1. Replace multiple slashes with a single slash. 2. Eliminate each . path name element \(the current directory\). 3. Eliminate each inner .. path name element \(the parent directory\) along with the non\-.. element that precedes it. 4. Eliminate .. elements that begin a rooted path: that is, replace "/.." by "/" at the beginning of a path.  The returned path ends in a slash only if it is the root "/".  If the result of this process is an empty string, Clean returns the string ".".  See also Rob Pike, “Lexical File Names in Plan 9 or Getting Dot\-Dot Right,” https://9p.io/sys/doc/lexnames.html 


### exampleClean


<details><summary></summary>
<p>


```haxe
function exampleClean():Void {
	var _paths = (new Slice<GoString>(0, 0, Go.str("a/c"), Go.str("a//c"), Go.str("a/c/."), Go.str("a/c/b/.."), Go.str("/../a/c"),
		Go.str("/../a/b/../././/c"), Go.str()) : Slice<GoString>);
	for (_0 => _p in _paths) {
		stdgo.fmt.Fmt.printf(Go.str("Clean(%q) = %q\n"), Go.toInterface(_p), Go.toInterface(stdgo.path.Path.clean(_p)));
	};
}
```


</p>
</details>


[\(view code\)](<./Path.hx#L373>)


## function dir


```haxe
function dir(_path:stdgo.GoString):stdgo.GoString
```


Dir returns all but the last element of path, typically the path's directory. After dropping the final element using Split, the path is Cleaned and trailing slashes are removed. If the path is empty, Dir returns ".". If the path consists entirely of slashes followed by non\-slash bytes, Dir returns a single slash. In any other case, the returned path does not end in a slash. 


### exampleDir


<details><summary></summary>
<p>


```haxe
function exampleDir():Void {
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir(Go.str("/a/b/c")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir(Go.str("a/b/c")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir(Go.str("/a/")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir(Go.str("a/")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir(Go.str("/")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir(Go.str()));
}
```


</p>
</details>


[\(view code\)](<./Path.hx#L538>)


## function ext


```haxe
function ext(_path:stdgo.GoString):stdgo.GoString
```


Ext returns the file name extension used by path. The extension is the suffix beginning at the final dot in the final slash\-separated element of path; it is empty if there is no dot. 


### exampleExt


<details><summary></summary>
<p>


```haxe
function exampleExt():Void {
	stdgo.fmt.Fmt.println(stdgo.path.Path.ext(Go.str("/a/b/c/bar.css")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.ext(Go.str("/")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.ext(Go.str()));
}
```


</p>
</details>


[\(view code\)](<./Path.hx#L485>)


## function isAbs


```haxe
function isAbs(_path:stdgo.GoString):Bool
```


IsAbs reports whether the path is absolute. 


### exampleIsAbs


<details><summary></summary>
<p>


```haxe
function exampleIsAbs():Void {
	stdgo.fmt.Fmt.println(stdgo.path.Path.isAbs(Go.str("/dev/null")));
}
```


</p>
</details>


[\(view code\)](<./Path.hx#L525>)


## function join


```haxe
function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString
```


Join joins any number of path elements into a single path, separating them with slashes. Empty elements are ignored. The result is Cleaned. However, if the argument list is empty or all its elements are empty, Join returns an empty string. 


### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
	stdgo.fmt.Fmt.println(stdgo.path.Path.join(Go.str("a"), Go.str("b"), Go.str("c")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join(Go.str("a"), Go.str("b/c")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join(Go.str("a/b"), Go.str("c")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join(Go.str("a/b"), Go.str("../../../xyz")));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join(Go.str(), Go.str()));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join(Go.str("a"), Go.str()));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join(Go.str(), Go.str("a")));
}
```


</p>
</details>


[\(view code\)](<./Path.hx#L458>)


## function match


```haxe
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{_1:stdgo.Error, _0:Bool}
```


Match reports whether name matches the shell pattern. The pattern syntax is:  pattern: \{ term \} term: '\*'         matches any sequence of non\-/ characters '?'         matches any single non\-/ character '\[' \[ '^' \] \{ character\-range \} '\]' character class \(must be non\-empty\) c           matches character c \(c \!= '\*', '?', '\\\\', '\['\) '\\\\' c      matches character c  character\-range: c           matches character c \(c \!= '\\\\', '\-', '\]'\) '\\\\' c      matches character c lo '\-' hi   matches character c for lo \<= c \<= hi  Match requires pattern to match all of name, not just a substring. The only possible returned error is ErrBadPattern, when pattern is malformed. 


### exampleMatch


<details><summary></summary>
<p>


```haxe
function exampleMatch():Void {
	{
		var __tmp__ = stdgo.path.Path.match(Go.str("abc"), Go.str("abc"));
		stdgo.fmt.Fmt.println((__tmp__._0 : Bool), (__tmp__._1 : Error));
	};
	{
		var __tmp__ = stdgo.path.Path.match(Go.str("a*"), Go.str("abc"));
		stdgo.fmt.Fmt.println((__tmp__._0 : Bool), (__tmp__._1 : Error));
	};
	{
		var __tmp__ = stdgo.path.Path.match(Go.str("a*/b"), Go.str("a/c/b"));
		stdgo.fmt.Fmt.println((__tmp__._0 : Bool), (__tmp__._1 : Error));
	};
}
```


</p>
</details>


[\(view code\)](<./Path.hx#L80>)


## function split


```haxe
function split(_path:stdgo.GoString):{_1:stdgo.GoString, _0:stdgo.GoString}
```


Split splits path immediately following the final slash, separating it into a directory and file name component. If there is no slash in path, Split returns an empty dir and file set to path. The returned values have the property that path = dir\+file. 


### exampleSplit


<details><summary></summary>
<p>


```haxe
function exampleSplit():Void {
	var _split:GoString->Void = function(_s:GoString):Void {
		var __tmp__ = stdgo.path.Path.split(_s), _dir:GoString = __tmp__._0, _file:GoString = __tmp__._1;
		stdgo.fmt.Fmt.printf(Go.str("path.Split(%q) = dir: %q, file: %q\n"), Go.toInterface(_s), Go.toInterface(_dir), Go.toInterface(_file));
	};
	_split(Go.str("static/myfile.css"));
	_split(Go.str("myfile.css"));
	_split(Go.str());
}
```


</p>
</details>


[\(view code\)](<./Path.hx#L445>)


# Classes


```haxe
import stdgo.path.*
```


## class T\_lazybuf\_static\_extension


 


### T\_lazybuf\_static\_extension function \_append


```haxe
function _append(_b:stdgo.Ref<stdgo.path._Path.T_lazybuf>, _c:stdgo.GoByte):Void
```


 


[\(view code\)](<./Path.hx#L581>)


### T\_lazybuf\_static\_extension function \_index


```haxe
function _index(_b:stdgo.Ref<stdgo.path._Path.T_lazybuf>, _i:stdgo.GoInt):stdgo.GoByte
```


 


[\(view code\)](<./Path.hx#L595>)


### T\_lazybuf\_static\_extension function \_string


```haxe
function _string(_b:stdgo.Ref<stdgo.path._Path.T_lazybuf>):stdgo.GoString
```


 


[\(view code\)](<./Path.hx#L573>)


