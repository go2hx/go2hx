# Module: `stdgo.path`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [class Path](<#class-path>)

  - [`function base(_path:String):String`](<#path-function-base>)

  - [`function clean(_path:String):String`](<#path-function-clean>)

  - [`function dir(_path:String):String`](<#path-function-dir>)

  - [`function ext(_path:String):String`](<#path-function-ext>)

  - [`function isAbs(_path:String):Bool`](<#path-function-isabs>)

  - [`function join(_elem:haxe.Rest<String>):String`](<#path-function-join>)

  - [`function match(_pattern:String, _name:String):stdgo.Tuple<Bool, stdgo.Error>`](<#path-function-match>)

  - [`function split(_path:String):stdgo.Tuple<String, String>`](<#path-function-split>)

- [abstract T\_lazybuf](<#abstract-t_lazybuf>)

# Variables


```haxe
import stdgo.path.Path
```


```haxe
var errBadPattern:stdgo.Error
```


# Classes


```haxe
import stdgo.path.*
```


## class Path


```
{
    	_ = 0
    	gotoNext = 2579565
    	_ = gotoNext == 2579565
    	if len(pattern) > 0 && pattern[0] == 42 {
    		gotoNext = 2579607
    		_ = gotoNext == 2579607
    		pattern = pattern[1:]
    		star = true
    		gotoNext = 2579565
    	} else {
    		gotoNext = 2579651
}
    	_ = gotoNext == 2579651
    	inrange_2579651 = false
    	gotoNext = 2579679
    	_ = gotoNext == 2579679
    	i_2579673 = 0
    	ScanBreak = false
    	gotoNext = 2579686
    	_ = gotoNext == 2579686
    	if !ScanBreak && (i_2579673 < len(pattern)) {
    		gotoNext = 2579719
    		_ = gotoNext == 2579719
    		_ = 0
    		gotoNext = 2579723
    		_ = gotoNext == 2579723
    		switch pattern[i_2579673] {
    		case 92:
    			gotoNext = 2579745
    			_ = gotoNext == 2579745
    			if i_2579673+1 < len(pattern) {
    				gotoNext = 2579835
    				_ = gotoNext == 2579835
    				i_2579673++
    				gotoNext = 2579715
    			} else {
    				gotoNext = 2579715
}
    			gotoNext = 2579715
    		case 91:
    			gotoNext = 2579852
    			_ = gotoNext == 2579852
    			inrange_2579651 = true
    			gotoNext = 2579715
    		case 93:
    			gotoNext = 2579882
    			_ = gotoNext == 2579882
    			inrange_2579651 = false
    			gotoNext = 2579715
    		case 42:
    			gotoNext = 2579913
    			_ = gotoNext == 2579913
    			if !inrange_2579651 {
    				gotoNext = 2579938
    				_ = gotoNext == 2579938
    				ScanBreak = true
    				gotoNext = 2579686
    				gotoNext = 2579715
    			} else {
    				gotoNext = 2579715
}
    			gotoNext = 2579715
    		default:
    			gotoNext = 2579715
}
    		_ = gotoNext == 2579715
    		i_2579673++
    		gotoNext = 2579686
    	} else {
    		gotoNext = 2579968
}
    	_ = gotoNext == 2579968
    	return star, pattern[0:i_2579673], pattern[i_2579673:]
    	gotoNext = -1
    }
```
### Path function base


```haxe
function base(_path:String):String
```


```
Base returns the last element of path.
        Trailing slashes are removed before extracting the last element.
        If the path is empty, Base returns ".".
        If the path consists entirely of slashes, Base returns "/".
```
[\(view code\)](<./Path.hx#L212>)


### Path function clean


```haxe
function clean(_path:String):String
```


```
Clean returns the shortest path name equivalent to path
        by purely lexical processing. It applies the following rules
        iteratively until no further processing can be done:
```
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

[\(view code\)](<./Path.hx#L171>)


### Path function dir


```haxe
function dir(_path:String):String
```


```
Dir returns all but the last element of path, typically the path's directory.
        After dropping the final element using Split, the path is Cleaned and trailing
        slashes are removed.
        If the path is empty, Dir returns ".".
        If the path consists entirely of slashes followed by non-slash bytes, Dir
        returns a single slash. In any other case, the returned path does not end in a
        slash.
```
[\(view code\)](<./Path.hx#L230>)


### Path function ext


```haxe
function ext(_path:String):String
```


```
Ext returns the file name extension used by path.
        The extension is the suffix beginning at the final dot
        in the final slash-separated element of path;
        it is empty if there is no dot.
```
[\(view code\)](<./Path.hx#L203>)


### Path function isAbs


```haxe
function isAbs(_path:String):Bool
```



IsAbs reports whether the path is absolute.  

[\(view code\)](<./Path.hx#L218>)


### Path function join


```haxe
function join(_elem:haxe.Rest<String>):String
```


```
Join joins any number of path elements into a single path,
        separating them with slashes. Empty elements are ignored.
        The result is Cleaned. However, if the argument list is
        empty or all its elements are empty, Join returns
        an empty string.
```
[\(view code\)](<./Path.hx#L194>)


### Path function match


```haxe
function match(_pattern:String, _name:String):stdgo.Tuple<Bool, stdgo.Error>
```


```
Match reports whether name matches the shell pattern.
        The pattern syntax is:
```
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

[\(view code\)](<./Path.hx#L144>)


### Path function split


```haxe
function split(_path:String):stdgo.Tuple<String, String>
```


```
Split splits path immediately following the final slash,
        separating it into a directory and file name component.
        If there is no slash in path, Split returns an empty dir and
        file set to path.
        The returned values have the property that path = dir+file.
```
[\(view code\)](<./Path.hx#L181>)


# Abstracts


## abstract T\_lazybuf


[\(view file containing code\)](<./Path.hx>)


