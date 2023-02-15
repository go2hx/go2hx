# Module: `stdgo.path`

[(view library index)](../stdgo.md)


# Overview


Package path implements utility routines for manipulating slash\-separated  
paths.  



The path package should only be used for paths separated by forward  
slashes, such as the paths in URLs. This package does not deal with  
Windows paths with drive letters or backslashes; to manipulate  
operating system paths, use the path/filepath package.  



<details><summary>hl tests passed</summary>
<p>

```
=== RUN  TestMatch
--- PASS: TestMatch (%!s(float64=0.001149892807006836))

=== RUN  TestClean
--- PASS: TestClean (%!s(float64=0.00014901161193847656))

=== RUN  TestCleanMallocs
--- PASS: TestCleanMallocs (%!s(float64=9.059906005859375e-06))

=== RUN  TestSplit
--- PASS: TestSplit (%!s(float64=1.811981201171875e-05))

=== RUN  TestJoin
--- PASS: TestJoin (%!s(float64=5.888938903808594e-05))

=== RUN  TestExt
--- PASS: TestExt (%!s(float64=7.867813110351562e-06))

=== RUN  TestBase
--- PASS: TestBase (%!s(float64=2.288818359375e-05))

=== RUN  TestDir
--- PASS: TestDir (%!s(float64=4.1961669921875e-05))

=== RUN  TestIsAbs
--- PASS: TestIsAbs (%!s(float64=5.0067901611328125e-06))

```
</p>
</details>

<details><summary>interp tests passed</summary>
<p>

```
=== RUN  TestMatch
--- PASS: TestMatch (%!s(float64=0.004240989685058594))

=== RUN  TestClean
--- PASS: TestClean (%!s(float64=0.0010838508605957031))

=== RUN  TestCleanMallocs
--- PASS: TestCleanMallocs (%!s(float64=6.29425048828125e-05))

=== RUN  TestSplit
--- PASS: TestSplit (%!s(float64=3.886222839355469e-05))

=== RUN  TestJoin
--- PASS: TestJoin (%!s(float64=0.0002548694610595703))

=== RUN  TestExt
--- PASS: TestExt (%!s(float64=3.0994415283203125e-05))

=== RUN  TestBase
--- PASS: TestBase (%!s(float64=7.390975952148438e-05))

=== RUN  TestDir
--- PASS: TestDir (%!s(float64=0.0001270771026611328))

=== RUN  TestIsAbs
--- PASS: TestIsAbs (%!s(float64=2.09808349609375e-05))

```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
stdgo/internal/Macro.macro.hx:35: define
```
</p>
</details>


# Index


- [Variables](<#variables>)

- [`function base(_path:stdgo.GoString):stdgo.GoString`](<#function-base>)

- [`function clean(_path:stdgo.GoString):stdgo.GoString`](<#function-clean>)

- [`function dir(_path:stdgo.GoString):stdgo.GoString`](<#function-dir>)

- [`function ext(_path:stdgo.GoString):stdgo.GoString`](<#function-ext>)

- [`function isAbs(_path:stdgo.GoString):Bool`](<#function-isabs>)

- [`function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString`](<#function-join>)

- [`function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{_1:stdgo.Error, _0:Bool}`](<#function-match>)

- [`function split(_path:stdgo.GoString):{_1:stdgo.GoString, _0:stdgo.GoString}`](<#function-split>)

- [class T\_lazybuf](<#class-t_lazybuf>)

  - [`function new(?_s:stdgo.GoString, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_w:Null<stdgo.GoInt>):Void`](<#t_lazybuf-function-new>)

  - [`function _append( _c:stdgo.GoByte):Void`](<#t_lazybuf-function-_append>)

  - [`function _index( _i:stdgo.GoInt):stdgo.GoByte`](<#t_lazybuf-function-_index>)

  - [`function _string():stdgo.GoString`](<#t_lazybuf-function-_string>)

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


## function base


```haxe
function base(_path:stdgo.GoString):stdgo.GoString
```


Base returns the last element of path.  
Trailing slashes are removed before extracting the last element.  
If the path is empty, Base returns ".".  
If the path consists entirely of slashes, Base returns "/".  



### exampleBase


<details><summary></summary>
<p>


```haxe
function exampleBase():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.base(("/a/b" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.base(("/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.base(Go.str())));
    }
```


</p>
</details>


[\(view code\)](<./Path.hx#L460>)


## function clean


```haxe
function clean(_path:stdgo.GoString):stdgo.GoString
```


Clean returns the shortest path name equivalent to path  
by purely lexical processing. It applies the following rules  
iteratively until no further processing can be done:  



1. Replace multiple slashes with a single slash.  
2. Eliminate each . path name element \(the current directory\).  
3. Eliminate each inner .. path name element \(the parent directory\)  
along with the non\-.. element that precedes it.  
4. Eliminate .. elements that begin a rooted path:  
that is, replace "/.." by "/" at the beginning of a path.  



The returned path ends in a slash only if it is the root "/".  



If the result of this process is an empty string, Clean  
returns the string ".".  



See also Rob Pike, “Lexical File Names in Plan 9 or  
Getting Dot\-Dot Right,”  
https://9p.io/sys/doc/lexnames.html  



### exampleClean


<details><summary></summary>
<p>


```haxe
function exampleClean():Void {
        var _paths = (new Slice<GoString>(0, 0, ("a/c" : GoString), ("a//c" : GoString), ("a/c/." : GoString), ("a/c/b/.." : GoString), ("/../a/c" : GoString), ("/../a/b/../././/c" : GoString), Go.str()) : Slice<GoString>);
        for (_0 => _p in _paths) {
            stdgo.fmt.Fmt.printf(("Clean(%q) = %q\n" : GoString), Go.toInterface(_p), Go.toInterface(stdgo.path.Path.clean(_p)));
        };
    }
```


</p>
</details>


[\(view code\)](<./Path.hx#L337>)


## function dir


```haxe
function dir(_path:stdgo.GoString):stdgo.GoString
```


Dir returns all but the last element of path, typically the path's directory.  
After dropping the final element using Split, the path is Cleaned and trailing  
slashes are removed.  
If the path is empty, Dir returns ".".  
If the path consists entirely of slashes followed by non\-slash bytes, Dir  
returns a single slash. In any other case, the returned path does not end in a  
slash.  



### exampleDir


<details><summary></summary>
<p>


```haxe
function exampleDir():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(("/a/b/c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(("a/b/c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(("/a/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(("a/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(("/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(Go.str())));
    }
```


</p>
</details>


[\(view code\)](<./Path.hx#L493>)


## function ext


```haxe
function ext(_path:stdgo.GoString):stdgo.GoString
```


Ext returns the file name extension used by path.  
The extension is the suffix beginning at the final dot  
in the final slash\-separated element of path;  
it is empty if there is no dot.  



### exampleExt


<details><summary></summary>
<p>


```haxe
function exampleExt():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.ext(("/a/b/c/bar.css" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.ext(("/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.ext(Go.str())));
    }
```


</p>
</details>


[\(view code\)](<./Path.hx#L443>)


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
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.isAbs(("/dev/null" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Path.hx#L481>)


## function join


```haxe
function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString
```


Join joins any number of path elements into a single path,  
separating them with slashes. Empty elements are ignored.  
The result is Cleaned. However, if the argument list is  
empty or all its elements are empty, Join returns  
an empty string.  



### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(("a" : GoString), ("b" : GoString), ("c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(("a" : GoString), ("b/c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(("a/b" : GoString), ("c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(("a/b" : GoString), ("../../../xyz" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(Go.str(), Go.str())));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(("a" : GoString), Go.str())));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(Go.str(), ("a" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Path.hx#L417>)


## function match


```haxe
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{_1:stdgo.Error, _0:Bool}
```


Match reports whether name matches the shell pattern.  
The pattern syntax is:  






pattern:  



\{ term \}  



term:  



'\*'         matches any sequence of non\-/ characters  



'?'         matches any single non\-/ character  



'\[' \[ '^' \] \{ character\-range \} '\]'  



character class \(must be non\-empty\)  



c           matches character c \(c \!= '\*', '?', '\\\\', '\['\)  



'\\\\' c      matches character c  






character\-range:  



c           matches character c \(c \!= '\\\\', '\-', '\]'\)  



'\\\\' c      matches character c  



lo '\-' hi   matches character c for lo \<= c \<= hi  



Match requires pattern to match all of name, not just a substring.  
The only possible returned error is ErrBadPattern, when pattern  
is malformed.  



### exampleMatch


<details><summary></summary>
<p>


```haxe
function exampleMatch():Void {
        {
            var __tmp__ = stdgo.path.Path.match(("abc" : GoString), ("abc" : GoString));
            stdgo.fmt.Fmt.println(Go.toInterface((__tmp__._0 : Bool)), Go.toInterface((__tmp__._1 : Error)));
        };
        {
            var __tmp__ = stdgo.path.Path.match(("a*" : GoString), ("abc" : GoString));
            stdgo.fmt.Fmt.println(Go.toInterface((__tmp__._0 : Bool)), Go.toInterface((__tmp__._1 : Error)));
        };
        {
            var __tmp__ = stdgo.path.Path.match(("a*/b" : GoString), ("a/c/b" : GoString));
            stdgo.fmt.Fmt.println(Go.toInterface((__tmp__._0 : Bool)), Go.toInterface((__tmp__._1 : Error)));
        };
    }
```


</p>
</details>


[\(view code\)](<./Path.hx#L72>)


## function split


```haxe
function split(_path:stdgo.GoString):{_1:stdgo.GoString, _0:stdgo.GoString}
```


Split splits path immediately following the final slash,  
separating it into a directory and file name component.  
If there is no slash in path, Split returns an empty dir and  
file set to path.  
The returned values have the property that path = dir\+file.  



### exampleSplit


<details><summary></summary>
<p>


```haxe
function exampleSplit():Void {
        var _split:GoString -> Void = function(_s:GoString):Void {
            var __tmp__ = stdgo.path.Path.split(_s), _dir:GoString = __tmp__._0, _file:GoString = __tmp__._1;
            stdgo.fmt.Fmt.printf(("path.Split(%q) = dir: %q, file: %q\n" : GoString), Go.toInterface(_s), Go.toInterface(_dir), Go.toInterface(_file));
        };
        _split(("static/myfile.css" : GoString));
        _split(("myfile.css" : GoString));
        _split(Go.str());
    }
```


</p>
</details>


[\(view code\)](<./Path.hx#L405>)


# Classes


```haxe
import stdgo.path.*
```


## class T\_lazybuf


A lazybuf is a lazily constructed path buffer.  
It supports append, reading previously appended bytes,  
and retrieving the final string. It does not allocate a buffer  
to hold the output until that output diverges from s.  



```haxe
var _buf:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _s:stdgo.GoString
```


```haxe
var _w:stdgo.GoInt
```


### T\_lazybuf function new


```haxe
function new(?_s:stdgo.GoString, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_w:Null<stdgo.GoInt>):Void
```





[\(view code\)](<./Path.hx#L39>)


### T\_lazybuf function \_append


```haxe
function _append( _c:stdgo.GoByte):Void
```





[\(view code\)](<./Path.hx#L521>)


### T\_lazybuf function \_index


```haxe
function _index( _i:stdgo.GoInt):stdgo.GoByte
```





[\(view code\)](<./Path.hx#L534>)


### T\_lazybuf function \_string


```haxe
function _string():stdgo.GoString
```





[\(view code\)](<./Path.hx#L514>)


