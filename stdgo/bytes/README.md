# Module: `stdgo.bytes`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function indexBytePortable(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.GoUInt8):stdgo.GoInt`](<#function-indexbyteportable>)

- [class Bytes](<#class-bytes>)

  - [`function clone(_b:Array<UInt>):Array<UInt>`](<#bytes-function-clone>)

  - [`function compare(_a:Array<UInt>, _b:Array<UInt>):Int`](<#bytes-function-compare>)

  - [`function contains(_b:Array<UInt>, _subslice:Array<UInt>):Bool`](<#bytes-function-contains>)

  - [`function containsAny(_b:Array<UInt>, _chars:String):Bool`](<#bytes-function-containsany>)

  - [`function containsFunc(_b:Array<UInt>, _f:()):Bool`](<#bytes-function-containsfunc>)

  - [`function containsRune(_b:Array<UInt>, _r:Int):Bool`](<#bytes-function-containsrune>)

  - [`function count(_s:Array<UInt>, _sep:Array<UInt>):Int`](<#bytes-function-count>)

  - [`function cut(_s:Array<UInt>, _sep:Array<UInt>):stdgo.Tuple3<Array<UInt>, Array<UInt>, Bool>`](<#bytes-function-cut>)

  - [`function cutPrefix(_s:Array<UInt>, _prefix:Array<UInt>):stdgo.Tuple<Array<UInt>, Bool>`](<#bytes-function-cutprefix>)

  - [`function cutSuffix(_s:Array<UInt>, _suffix:Array<UInt>):stdgo.Tuple<Array<UInt>, Bool>`](<#bytes-function-cutsuffix>)

  - [`function equal(_a:Array<UInt>, _b:Array<UInt>):Bool`](<#bytes-function-equal>)

  - [`function equalFold(_s:Array<UInt>, _t:Array<UInt>):Bool`](<#bytes-function-equalfold>)

  - [`function fields(_s:Array<UInt>):Array<Array<UInt>>`](<#bytes-function-fields>)

  - [`function fieldsFunc(_s:Array<UInt>, _f:()):Array<Array<UInt>>`](<#bytes-function-fieldsfunc>)

  - [`function hasPrefix(_s:Array<UInt>, _prefix:Array<UInt>):Bool`](<#bytes-function-hasprefix>)

  - [`function hasSuffix(_s:Array<UInt>, _suffix:Array<UInt>):Bool`](<#bytes-function-hassuffix>)

  - [`function index(_s:Array<UInt>, _sep:Array<UInt>):Int`](<#bytes-function-index>)

  - [`function indexAny(_s:Array<UInt>, _chars:String):Int`](<#bytes-function-indexany>)

  - [`function indexByte(_b:Array<UInt>, _c:UInt):Int`](<#bytes-function-indexbyte>)

  - [`function indexFunc(_s:Array<UInt>, _f:()):Int`](<#bytes-function-indexfunc>)

  - [`function indexRune(_s:Array<UInt>, _r:Int):Int`](<#bytes-function-indexrune>)

  - [`function join(_s:Array<Array<UInt>>, _sep:Array<UInt>):Array<UInt>`](<#bytes-function-join>)

  - [`function lastIndex(_s:Array<UInt>, _sep:Array<UInt>):Int`](<#bytes-function-lastindex>)

  - [`function lastIndexAny(_s:Array<UInt>, _chars:String):Int`](<#bytes-function-lastindexany>)

  - [`function lastIndexByte(_s:Array<UInt>, _c:UInt):Int`](<#bytes-function-lastindexbyte>)

  - [`function lastIndexFunc(_s:Array<UInt>, _f:()):Int`](<#bytes-function-lastindexfunc>)

  - [`function map_(_mapping:(), _s:Array<UInt>):Array<UInt>`](<#bytes-function-map_>)

  - [`function newBuffer(_buf:Array<UInt>):stdgo.bytes.Buffer`](<#bytes-function-newbuffer>)

  - [`function newBufferString(_s:String):stdgo.bytes.Buffer`](<#bytes-function-newbufferstring>)

  - [`function newReader(_b:Array<UInt>):stdgo.bytes.Reader`](<#bytes-function-newreader>)

  - [`function repeat(_b:Array<UInt>, _count:Int):Array<UInt>`](<#bytes-function-repeat>)

  - [`function replace(_s:Array<UInt>, _old:Array<UInt>, _new:Array<UInt>, _n:Int):Array<UInt>`](<#bytes-function-replace>)

  - [`function replaceAll(_s:Array<UInt>, _old:Array<UInt>, _new:Array<UInt>):Array<UInt>`](<#bytes-function-replaceall>)

  - [`function runes(_s:Array<UInt>):Array<Int>`](<#bytes-function-runes>)

  - [`function split(_s:Array<UInt>, _sep:Array<UInt>):Array<Array<UInt>>`](<#bytes-function-split>)

  - [`function splitAfter(_s:Array<UInt>, _sep:Array<UInt>):Array<Array<UInt>>`](<#bytes-function-splitafter>)

  - [`function splitAfterN(_s:Array<UInt>, _sep:Array<UInt>, _n:Int):Array<Array<UInt>>`](<#bytes-function-splitaftern>)

  - [`function splitN(_s:Array<UInt>, _sep:Array<UInt>, _n:Int):Array<Array<UInt>>`](<#bytes-function-splitn>)

  - [`function title(_s:Array<UInt>):Array<UInt>`](<#bytes-function-title>)

  - [`function toLower(_s:Array<UInt>):Array<UInt>`](<#bytes-function-tolower>)

  - [`function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:Array<UInt>):Array<UInt>`](<#bytes-function-tolowerspecial>)

  - [`function toTitle(_s:Array<UInt>):Array<UInt>`](<#bytes-function-totitle>)

  - [`function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:Array<UInt>):Array<UInt>`](<#bytes-function-totitlespecial>)

  - [`function toUpper(_s:Array<UInt>):Array<UInt>`](<#bytes-function-toupper>)

  - [`function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:Array<UInt>):Array<UInt>`](<#bytes-function-toupperspecial>)

  - [`function toValidUTF8(_s:Array<UInt>, _replacement:Array<UInt>):Array<UInt>`](<#bytes-function-tovalidutf8>)

  - [`function trim(_s:Array<UInt>, _cutset:String):Array<UInt>`](<#bytes-function-trim>)

  - [`function trimFunc(_s:Array<UInt>, _f:()):Array<UInt>`](<#bytes-function-trimfunc>)

  - [`function trimLeft(_s:Array<UInt>, _cutset:String):Array<UInt>`](<#bytes-function-trimleft>)

  - [`function trimLeftFunc(_s:Array<UInt>, _f:()):Array<UInt>`](<#bytes-function-trimleftfunc>)

  - [`function trimPrefix(_s:Array<UInt>, _prefix:Array<UInt>):Array<UInt>`](<#bytes-function-trimprefix>)

  - [`function trimRight(_s:Array<UInt>, _cutset:String):Array<UInt>`](<#bytes-function-trimright>)

  - [`function trimRightFunc(_s:Array<UInt>, _f:()):Array<UInt>`](<#bytes-function-trimrightfunc>)

  - [`function trimSpace(_s:Array<UInt>):Array<UInt>`](<#bytes-function-trimspace>)

  - [`function trimSuffix(_s:Array<UInt>, _suffix:Array<UInt>):Array<UInt>`](<#bytes-function-trimsuffix>)

- [typedef T\_asciiSet](<#typedef-t_asciiset>)

- [typedef T\_readOp](<#typedef-t_readop>)

- [abstract Buffer](<#abstract-buffer>)

- [abstract Reader](<#abstract-reader>)

- [abstract T\_fieldsFunc\_\_\_localname\_\_\_span\_11914](<#abstract-t_fieldsfunclocalnamespan_11914>)

# Constants


```haxe
import stdgo.bytes.Bytes
```


```haxe
final minRead:haxe.UInt64 = stdgo._internal.bytes.Bytes_minRead.minRead
```


# Variables


```haxe
import stdgo.bytes.Bytes
```


```haxe
var errTooLarge:stdgo.Error
```


# Functions


```haxe
import stdgo.bytes.Bytes
```


## function indexBytePortable


```haxe
function indexBytePortable(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Bytes.hx>)


# Classes


```haxe
import stdgo.bytes.*
```


## class Bytes


```
{
    	i_3048939 = 0
    	_ = 0
    	gotoNext = 3048947
    	_ = gotoNext == 3048947
    	if i_3048939 < len(s) && i_3048939 < len(t) {
    		gotoNext = 3048983
    		_ = gotoNext == 3048983
    		sr_3048987 = s[i_3048939]
    		tr_3049000 = t[i_3048939]
    		if sr_3048987|tr_3049000 >= 128 {
    			gotoNext = 3049039
    			_ = gotoNext == 3049039
    			gotoNext = 3049397
    			gotoNext = 3049083
    		} else {
    			gotoNext = 3049083
}
    		_ = gotoNext == 3049083
    		if tr_3049000 == sr_3048987 {
    			gotoNext = 3049095
    			_ = gotoNext == 3049095
    			i_3048939++
    			gotoNext = 3048947
    			gotoNext = 3049160
    		} else {
    			gotoNext = 3049160
}
    		_ = gotoNext == 3049160
    		if tr_3049000 < sr_3048987 {
    			gotoNext = 3049171
    			_ = gotoNext == 3049171
    			tr_3049000, sr_3048987 = sr_3048987, tr_3049000
    			gotoNext = 3049246
    		} else {
    			gotoNext = 3049246
}
    		_ = gotoNext == 3049246
    		if 65 <= sr_3048987 && sr_3048987 <= 90 && tr_3049000 == sr_3048987+97-65 {
    			gotoNext = 3049292
    			_ = gotoNext == 3049292
    			i_3048939++
    			gotoNext = 3048947
    			gotoNext = 3049312
    		} else {
    			gotoNext = 3049312
}
    		_ = gotoNext == 3049312
    		return false
    		i_3048939++
    		gotoNext = 3048947
    	} else {
    		gotoNext = 3049372
}
    	_ = gotoNext == 3049372
    	return len(s) == len(t)
    	gotoNext = 3049397
    	_ = gotoNext == 3049397
    	s = s[i_3048939:]
    	t = t[i_3048939:]
    	_ = 0
    	gotoNext = 3049432
    	_ = gotoNext == 3049432
    	if len(s) != 0 && len(t) != 0 {
    		gotoNext = 3049463
    		_ = gotoNext == 3049463
    		if s[0] < 128 {
    			gotoNext = 3049544
    			_ = gotoNext == 3049544
    			sr_3049506, s = rune(s[0]), s[1:]
    			gotoNext = 3049648
    		} else {
    			gotoNext = 3049584
    			_ = gotoNext == 3049584
    			r_3049589, size_3049592 = utf8.DecodeRune(s)
    			sr_3049506, s = r_3049589, s[size_3049592:]
    			gotoNext = 3049648
}
    		_ = gotoNext == 3049648
    		if t[0] < 128 {
    			gotoNext = 3049672
    			_ = gotoNext == 3049672
    			tr_3049510, t = rune(t[0]), t[1:]
    			gotoNext = 3049848
    		} else {
    			gotoNext = 3049712
    			_ = gotoNext == 3049712
    			r_3049717, size_3049720 = utf8.DecodeRune(t)
    			tr_3049510, t = r_3049717, t[size_3049720:]
    			gotoNext = 3049848
}
    		_ = gotoNext == 3049848
    		if tr_3049510 == sr_3049506 {
    			gotoNext = 3049860
    			_ = gotoNext == 3049860
    			_ = 0
    			gotoNext = 3049432
    			gotoNext = 3049925
    		} else {
    			gotoNext = 3049925
}
    		_ = gotoNext == 3049925
    		if tr_3049510 < sr_3049506 {
    			gotoNext = 3049936
    			_ = gotoNext == 3049936
    			tr_3049510, sr_3049506 = sr_3049506, tr_3049510
    			gotoNext = 3049990
    		} else {
    			gotoNext = 3049990
}
    		_ = gotoNext == 3049990
    		if tr_3049510 < 128 {
    			gotoNext = 3050012
    			_ = gotoNext == 3050012
    			if 65 <= sr_3049506 && sr_3049506 <= 90 && tr_3049510 == sr_3049506+97-65 {
    				gotoNext = 3050112
    				_ = gotoNext == 3050112
    				_ = 0
    				gotoNext = 3049432
    				gotoNext = 3050135
    			} else {
    				gotoNext = 3050135
}
    			_ = gotoNext == 3050135
    			return false
    			gotoNext = 3050265
    		} else {
    			gotoNext = 3050265
}
    		_ = gotoNext == 3050265
    		r_3050265 = unicode.SimpleFold(sr_3049506)
    		_ = 0
    		gotoNext = 3050295
    		_ = gotoNext == 3050295
    		if r_3050265 != sr_3049506 && r_3050265 < tr_3049510 {
    			gotoNext = 3050317
    			_ = gotoNext == 3050317
    			r_3050265 = unicode.SimpleFold(r_3050265)
    			gotoNext = 3050295
    		} else {
    			gotoNext = 3050354
}
    		_ = gotoNext == 3050354
    		if r_3050265 == tr_3049510 {
    			gotoNext = 3050365
    			_ = gotoNext == 3050365
    			_ = 0
    			gotoNext = 3049432
    			gotoNext = 3050385
    		} else {
    			gotoNext = 3050385
}
    		_ = gotoNext == 3050385
    		return false
    		gotoNext = 3049432
    	} else {
    		gotoNext = 3050438
}
    	_ = gotoNext == 3050438
    	return len(s) == len(t)
    	gotoNext = -1
    }
```
### Bytes function clone


```haxe
function clone(_b:Array<UInt>):Array<UInt>
```


```
Clone returns a copy of b[:len(b)].
        The result may have additional unused capacity.
        Clone(nil) returns nil.
```
[\(view code\)](<./Bytes.hx#L929>)


### Bytes function compare


```haxe
function compare(_a:Array<UInt>, _b:Array<UInt>):Int
```


```
Compare returns an integer comparing two byte slices lexicographically.
        The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
        A nil argument is equivalent to an empty slice.
```
[\(view code\)](<./Bytes.hx#L468>)


### Bytes function contains


```haxe
function contains(_b:Array<UInt>, _subslice:Array<UInt>):Bool
```



Contains reports whether subslice is within b.  

[\(view code\)](<./Bytes.hx#L485>)


### Bytes function containsAny


```haxe
function containsAny(_b:Array<UInt>, _chars:String):Bool
```



ContainsAny reports whether any of the UTF\-8\-encoded code points in chars are within b.  

[\(view code\)](<./Bytes.hx#L493>)


### Bytes function containsFunc


```haxe
function containsFunc(_b:Array<UInt>, _f:()):Bool
```



ContainsFunc reports whether any of the UTF\-8\-encoded code points r within b satisfy f\(r\).  

[\(view code\)](<./Bytes.hx#L507>)


### Bytes function containsRune


```haxe
function containsRune(_b:Array<UInt>, _r:Int):Bool
```



ContainsRune reports whether the rune is contained in the UTF\-8\-encoded byte slice b.  

[\(view code\)](<./Bytes.hx#L500>)


### Bytes function count


```haxe
function count(_s:Array<UInt>, _sep:Array<UInt>):Int
```


```
Count counts the number of non-overlapping instances of sep in s.
        If sep is an empty slice, Count returns 1 + the number of UTF-8-encoded code points in s.
```
[\(view code\)](<./Bytes.hx#L477>)


### Bytes function cut


```haxe
function cut(_s:Array<UInt>, _sep:Array<UInt>):stdgo.Tuple3<Array<UInt>, Array<UInt>, Bool>
```


```
Cut slices s around the first instance of sep,
        returning the text before and after sep.
        The found result reports whether sep appears in s.
        If sep does not appear in s, cut returns s, nil, false.
```

Cut returns slices of the original slice s, not copies.  

[\(view code\)](<./Bytes.hx#L916>)


### Bytes function cutPrefix


```haxe
function cutPrefix(_s:Array<UInt>, _prefix:Array<UInt>):stdgo.Tuple<Array<UInt>, Bool>
```


```
CutPrefix returns s without the provided leading prefix byte slice
        and reports whether it found the prefix.
        If s doesn't start with prefix, CutPrefix returns s, false.
        If prefix is the empty byte slice, CutPrefix returns s, true.
```

CutPrefix returns slices of the original slice s, not copies.  

[\(view code\)](<./Bytes.hx#L941>)


### Bytes function cutSuffix


```haxe
function cutSuffix(_s:Array<UInt>, _suffix:Array<UInt>):stdgo.Tuple<Array<UInt>, Bool>
```


```
CutSuffix returns s without the provided ending suffix byte slice
        and reports whether it found the suffix.
        If s doesn't end with suffix, CutSuffix returns s, false.
        If suffix is the empty byte slice, CutSuffix returns s, true.
```

CutSuffix returns slices of the original slice s, not copies.  

[\(view code\)](<./Bytes.hx#L957>)


### Bytes function equal


```haxe
function equal(_a:Array<UInt>, _b:Array<UInt>):Bool
```


```
Equal reports whether a and b
        are the same length and contain the same bytes.
        A nil argument is equivalent to an empty slice.
```
[\(view code\)](<./Bytes.hx#L458>)


### Bytes function equalFold


```haxe
function equalFold(_s:Array<UInt>, _t:Array<UInt>):Bool
```


```
EqualFold reports whether s and t, interpreted as UTF-8 strings,
        are equal under simple Unicode case-folding, which is a more general
        form of case-insensitivity.
```
[\(view code\)](<./Bytes.hx#L895>)


### Bytes function fields


```haxe
function fields(_s:Array<UInt>):Array<Array<UInt>>
```


```
Fields interprets s as a sequence of UTF-8-encoded code points.
        It splits the slice s around each instance of one or more consecutive white space
        characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
        empty slice if s contains only white space.
```
[\(view code\)](<./Bytes.hx#L627>)


### Bytes function fieldsFunc


```haxe
function fieldsFunc(_s:Array<UInt>, _f:()):Array<Array<UInt>>
```


```
FieldsFunc interprets s as a sequence of UTF-8-encoded code points.
        It splits the slice s at each run of code points c satisfying f(c) and
        returns a slice of subslices of s. If all code points in s satisfy f(c), or
        len(s) == 0, an empty slice is returned.
```

FieldsFunc makes no guarantees about the order in which it calls f\(c\)
and assumes that f always returns the same value for a given c.  

[\(view code\)](<./Bytes.hx#L640>)


### Bytes function hasPrefix


```haxe
function hasPrefix(_s:Array<UInt>, _prefix:Array<UInt>):Bool
```



HasPrefix tests whether the byte slice s begins with prefix.  

[\(view code\)](<./Bytes.hx#L657>)


### Bytes function hasSuffix


```haxe
function hasSuffix(_s:Array<UInt>, _suffix:Array<UInt>):Bool
```



HasSuffix tests whether the byte slice s ends with suffix.  

[\(view code\)](<./Bytes.hx#L665>)


### Bytes function index


```haxe
function index(_s:Array<UInt>, _sep:Array<UInt>):Int
```



Index returns the index of the first instance of sep in s, or \-1 if sep is not present in s.  

[\(view code\)](<./Bytes.hx#L903>)


### Bytes function indexAny


```haxe
function indexAny(_s:Array<UInt>, _chars:String):Int
```


```
IndexAny interprets s as a sequence of UTF-8-encoded Unicode code points.
        It returns the byte index of the first occurrence in s of any of the Unicode
        code points in chars. It returns -1 if chars is empty or if there is no code
        point in common.
```
[\(view code\)](<./Bytes.hx#L551>)


### Bytes function indexByte


```haxe
function indexByte(_b:Array<UInt>, _c:UInt):Int
```



IndexByte returns the index of the first instance of c in b, or \-1 if c is not present in b.  

[\(view code\)](<./Bytes.hx#L515>)


### Bytes function indexFunc


```haxe
function indexFunc(_s:Array<UInt>, _f:()):Int
```


```
IndexFunc interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index in s of the first Unicode
        code point satisfying f(c), or -1 if none do.
```
[\(view code\)](<./Bytes.hx#L808>)


### Bytes function indexRune


```haxe
function indexRune(_s:Array<UInt>, _r:Int):Int
```


```
IndexRune interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index of the first occurrence in s of the given rune.
        It returns -1 if rune is not present in s.
        If r is utf8.RuneError, it returns the first instance of any
        invalid UTF-8 byte sequence.
```
[\(view code\)](<./Bytes.hx#L541>)


### Bytes function join


```haxe
function join(_s:Array<Array<UInt>>, _sep:Array<UInt>):Array<UInt>
```


```
Join concatenates the elements of s to create a new byte slice. The separator
        sep is placed between elements in the resulting slice.
```
[\(view code\)](<./Bytes.hx#L649>)


### Bytes function lastIndex


```haxe
function lastIndex(_s:Array<UInt>, _sep:Array<UInt>):Int
```



LastIndex returns the index of the last instance of sep in s, or \-1 if sep is not present in s.  

[\(view code\)](<./Bytes.hx#L522>)


### Bytes function lastIndexAny


```haxe
function lastIndexAny(_s:Array<UInt>, _chars:String):Int
```


```
LastIndexAny interprets s as a sequence of UTF-8-encoded Unicode code
        points. It returns the byte index of the last occurrence in s of any of
        the Unicode code points in chars. It returns -1 if chars is empty or if
        there is no code point in common.
```
[\(view code\)](<./Bytes.hx#L561>)


### Bytes function lastIndexByte


```haxe
function lastIndexByte(_s:Array<UInt>, _c:UInt):Int
```



LastIndexByte returns the index of the last instance of c in s, or \-1 if c is not present in s.  

[\(view code\)](<./Bytes.hx#L530>)


### Bytes function lastIndexFunc


```haxe
function lastIndexFunc(_s:Array<UInt>, _f:()):Int
```


```
LastIndexFunc interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index in s of the last Unicode
        code point satisfying f(c), or -1 if none do.
```
[\(view code\)](<./Bytes.hx#L818>)


### Bytes function map\_


```haxe
function map_(_mapping:(), _s:Array<UInt>):Array<UInt>
```


```
Map returns a copy of the byte slice s with all its characters modified
        according to the mapping function. If mapping returns a negative value, the character is
        dropped from the byte slice with no replacement. The characters in s and the
        output are interpreted as UTF-8-encoded code points.
```
[\(view code\)](<./Bytes.hx#L676>)


### Bytes function newBuffer


```haxe
function newBuffer(_buf:Array<UInt>):stdgo.bytes.Buffer
```


```
NewBuffer creates and initializes a new Buffer using buf as its
        initial contents. The new Buffer takes ownership of buf, and the
        caller should not use buf after this call. NewBuffer is intended to
        prepare a Buffer to read existing data. It can also be used to set
        the initial size of the internal buffer for writing. To do that,
        buf should have the desired capacity but a length of zero.
```

In most cases, new\(Buffer\) \(or just declaring a Buffer variable\) is
sufficient to initialize a Buffer.  

[\(view code\)](<./Bytes.hx#L438>)


### Bytes function newBufferString


```haxe
function newBufferString(_s:String):stdgo.bytes.Buffer
```


```
NewBufferString creates and initializes a new Buffer using string s as its
        initial contents. It is intended to prepare a buffer to read an existing
        string.
```

In most cases, new\(Buffer\) \(or just declaring a Buffer variable\) is
sufficient to initialize a Buffer.  

[\(view code\)](<./Bytes.hx#L450>)


### Bytes function newReader


```haxe
function newReader(_b:Array<UInt>):stdgo.bytes.Reader
```



NewReader returns a new Reader reading from b.  

[\(view code\)](<./Bytes.hx#L968>)


### Bytes function repeat


```haxe
function repeat(_b:Array<UInt>, _count:Int):Array<UInt>
```



Repeat returns a new byte slice consisting of count copies of b.  


It panics if count is negative or if the result of \(len\(b\) \* count\)
overflows.  

[\(view code\)](<./Bytes.hx#L687>)


### Bytes function replace


```haxe
function replace(_s:Array<UInt>, _old:Array<UInt>, _new:Array<UInt>, _n:Int):Array<UInt>
```


```
Replace returns a copy of the slice s with the first n
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the slice
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune slice.
        If n < 0, there is no limit on the number of replacements.
```
[\(view code\)](<./Bytes.hx#L871>)


### Bytes function replaceAll


```haxe
function replaceAll(_s:Array<UInt>, _old:Array<UInt>, _new:Array<UInt>):Array<UInt>
```


```
ReplaceAll returns a copy of the slice s with all
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the slice
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune slice.
```
[\(view code\)](<./Bytes.hx#L884>)


### Bytes function runes


```haxe
function runes(_s:Array<UInt>):Array<Int>
```


```
Runes interprets s as a sequence of UTF-8-encoded code points.
        It returns a slice of runes (Unicode code points) equivalent to s.
```
[\(view code\)](<./Bytes.hx#L859>)


### Bytes function split


```haxe
function split(_s:Array<UInt>, _sep:Array<UInt>):Array<Array<UInt>>
```


```
Split slices s into all subslices separated by sep and returns a slice of
        the subslices between those separators.
        If sep is empty, Split splits after each UTF-8 sequence.
        It is equivalent to SplitN with a count of -1.
```

To split around the first instance of a separator, see Cut.  

[\(view code\)](<./Bytes.hx#L605>)


### Bytes function splitAfter


```haxe
function splitAfter(_s:Array<UInt>, _sep:Array<UInt>):Array<Array<UInt>>
```


```
SplitAfter slices s into all subslices after each instance of sep and
        returns a slice of those subslices.
        If sep is empty, SplitAfter splits after each UTF-8 sequence.
        It is equivalent to SplitAfterN with a count of -1.
```
[\(view code\)](<./Bytes.hx#L616>)


### Bytes function splitAfterN


```haxe
function splitAfterN(_s:Array<UInt>, _sep:Array<UInt>, _n:Int):Array<Array<UInt>>
```


```
SplitAfterN slices s into subslices after each instance of sep and
        returns a slice of those subslices.
        If sep is empty, SplitAfterN splits after each UTF-8 sequence.
        The count determines the number of subslices to return:
```
```
        	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
        	n == 0: the result is nil (zero subslices)
        	n < 0: all subslices
```
[\(view code\)](<./Bytes.hx#L592>)


### Bytes function splitN


```haxe
function splitN(_s:Array<UInt>, _sep:Array<UInt>, _n:Int):Array<Array<UInt>>
```


```
SplitN slices s into subslices separated by sep and returns a slice of
        the subslices between those separators.
        If sep is empty, SplitN splits after each UTF-8 sequence.
        The count determines the number of subslices to return:
```
```
        	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
        	n == 0: the result is nil (zero subslices)
        	n < 0: all subslices
```

To split around the first instance of a separator, see Cut.  

[\(view code\)](<./Bytes.hx#L577>)


### Bytes function title


```haxe
function title(_s:Array<UInt>):Array<UInt>
```


```
Title treats s as UTF-8-encoded bytes and returns a copy with all Unicode letters that begin
        words mapped to their title case.
```

Deprecated: The rule Title uses for word boundaries does not handle Unicode
punctuation properly. Use golang.org/x/text/cases instead.  

[\(view code\)](<./Bytes.hx#L754>)


### Bytes function toLower


```haxe
function toLower(_s:Array<UInt>):Array<UInt>
```


```
ToLower returns a copy of the byte slice s with all Unicode letters mapped to
        their lower case.
```
[\(view code\)](<./Bytes.hx#L703>)


### Bytes function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:Array<UInt>):Array<UInt>
```


```
ToLowerSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        lower case, giving priority to the special casing rules.
```
[\(view code\)](<./Bytes.hx#L726>)


### Bytes function toTitle


```haxe
function toTitle(_s:Array<UInt>):Array<UInt>
```



ToTitle treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.  

[\(view code\)](<./Bytes.hx#L710>)


### Bytes function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:Array<UInt>):Array<UInt>
```


```
ToTitleSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        title case, giving priority to the special casing rules.
```
[\(view code\)](<./Bytes.hx#L734>)


### Bytes function toUpper


```haxe
function toUpper(_s:Array<UInt>):Array<UInt>
```


```
ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
        their upper case.
```
[\(view code\)](<./Bytes.hx#L695>)


### Bytes function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:Array<UInt>):Array<UInt>
```


```
ToUpperSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        upper case, giving priority to the special casing rules.
```
[\(view code\)](<./Bytes.hx#L718>)


### Bytes function toValidUTF8


```haxe
function toValidUTF8(_s:Array<UInt>, _replacement:Array<UInt>):Array<UInt>
```


```
ToValidUTF8 treats s as UTF-8-encoded bytes and returns a copy with each run of bytes
        representing invalid UTF-8 replaced with the bytes in replacement, which may be empty.
```
[\(view code\)](<./Bytes.hx#L742>)


### Bytes function trim


```haxe
function trim(_s:Array<UInt>, _cutset:String):Array<UInt>
```


```
Trim returns a subslice of s by slicing off all leading and
        trailing UTF-8-encoded code points contained in cutset.
```
[\(view code\)](<./Bytes.hx#L827>)


### Bytes function trimFunc


```haxe
function trimFunc(_s:Array<UInt>, _f:()):Array<UInt>
```


```
TrimFunc returns a subslice of s by slicing off all leading and trailing
        UTF-8-encoded code points c that satisfy f(c).
```
[\(view code\)](<./Bytes.hx#L780>)


### Bytes function trimLeft


```haxe
function trimLeft(_s:Array<UInt>, _cutset:String):Array<UInt>
```


```
TrimLeft returns a subslice of s by slicing off all leading
        UTF-8-encoded code points contained in cutset.
```
[\(view code\)](<./Bytes.hx#L835>)


### Bytes function trimLeftFunc


```haxe
function trimLeftFunc(_s:Array<UInt>, _f:()):Array<UInt>
```


```
TrimLeftFunc treats s as UTF-8-encoded bytes and returns a subslice of s by slicing off
        all leading UTF-8-encoded code points c that satisfy f(c).
```
[\(view code\)](<./Bytes.hx#L762>)


### Bytes function trimPrefix


```haxe
function trimPrefix(_s:Array<UInt>, _prefix:Array<UInt>):Array<UInt>
```


```
TrimPrefix returns s without the provided leading prefix string.
        If s doesn't start with prefix, s is returned unchanged.
```
[\(view code\)](<./Bytes.hx#L789>)


### Bytes function trimRight


```haxe
function trimRight(_s:Array<UInt>, _cutset:String):Array<UInt>
```


```
TrimRight returns a subslice of s by slicing off all trailing
        UTF-8-encoded code points that are contained in cutset.
```
[\(view code\)](<./Bytes.hx#L843>)


### Bytes function trimRightFunc


```haxe
function trimRightFunc(_s:Array<UInt>, _f:()):Array<UInt>
```


```
TrimRightFunc returns a subslice of s by slicing off all trailing
        UTF-8-encoded code points c that satisfy f(c).
```
[\(view code\)](<./Bytes.hx#L771>)


### Bytes function trimSpace


```haxe
function trimSpace(_s:Array<UInt>):Array<UInt>
```


```
TrimSpace returns a subslice of s by slicing off all leading and
        trailing white space, as defined by Unicode.
```
[\(view code\)](<./Bytes.hx#L851>)


### Bytes function trimSuffix


```haxe
function trimSuffix(_s:Array<UInt>, _suffix:Array<UInt>):Array<UInt>
```


```
TrimSuffix returns s without the provided trailing suffix string.
        If s doesn't end with suffix, s is returned unchanged.
```
[\(view code\)](<./Bytes.hx#L798>)


# Typedefs


```haxe
import stdgo.bytes.*
```


## typedef T\_asciiSet


```haxe
typedef T_asciiSet = stdgo._internal.bytes.T_asciiSet;
```


## typedef T\_readOp


```haxe
typedef T_readOp = stdgo._internal.bytes.T_readOp;
```


# Abstracts


## abstract Buffer


[\(view file containing code\)](<./Bytes.hx>)


## abstract Reader


[\(view file containing code\)](<./Bytes.hx>)


## abstract T\_fieldsFunc\_\_\_localname\_\_\_span\_11914


[\(view file containing code\)](<./Bytes.hx>)


