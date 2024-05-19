# Module: `stdgo.bytes`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function indexBytePortable(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.GoUInt8):stdgo.GoInt`](<#function-indexbyteportable>)

- [class Bytes](<#class-bytes>)

  - [`function clone(b:Array<Int>):Array<Int>`](<#bytes-function-clone>)

  - [`function compare(a:Array<Int>, b:Array<Int>):Int`](<#bytes-function-compare>)

  - [`function contains(b:Array<Int>, subslice:Array<Int>):Bool`](<#bytes-function-contains>)

  - [`function containsAny(b:Array<Int>, chars:String):Bool`](<#bytes-function-containsany>)

  - [`function containsFunc(b:Array<Int>, f:()):Bool`](<#bytes-function-containsfunc>)

  - [`function containsRune(b:Array<Int>, r:Int):Bool`](<#bytes-function-containsrune>)

  - [`function count(s:Array<Int>, sep:Array<Int>):Int`](<#bytes-function-count>)

  - [`function cut(s:Array<Int>, sep:Array<Int>):stdgo.Tuple3<Array<Int>, Array<Int>, Bool>`](<#bytes-function-cut>)

  - [`function cutPrefix(s:Array<Int>, prefix:Array<Int>):stdgo.Tuple<Array<Int>, Bool>`](<#bytes-function-cutprefix>)

  - [`function cutSuffix(s:Array<Int>, suffix:Array<Int>):stdgo.Tuple<Array<Int>, Bool>`](<#bytes-function-cutsuffix>)

  - [`function equal(a:Array<Int>, b:Array<Int>):Bool`](<#bytes-function-equal>)

  - [`function equalFold(s:Array<Int>, t:Array<Int>):Bool`](<#bytes-function-equalfold>)

  - [`function fields(s:Array<Int>):Array<Array<Int>>`](<#bytes-function-fields>)

  - [`function fieldsFunc(s:Array<Int>, f:()):Array<Array<Int>>`](<#bytes-function-fieldsfunc>)

  - [`function hasPrefix(s:Array<Int>, prefix:Array<Int>):Bool`](<#bytes-function-hasprefix>)

  - [`function hasSuffix(s:Array<Int>, suffix:Array<Int>):Bool`](<#bytes-function-hassuffix>)

  - [`function index(s:Array<Int>, sep:Array<Int>):Int`](<#bytes-function-index>)

  - [`function indexAny(s:Array<Int>, chars:String):Int`](<#bytes-function-indexany>)

  - [`function indexByte(b:Array<Int>, c:Int):Int`](<#bytes-function-indexbyte>)

  - [`function indexFunc(s:Array<Int>, f:(_r:stdgo.GoRune):Bool):Int`](<#bytes-function-indexfunc>)

  - [`function indexRune(s:Array<Int>, r:Int):Int`](<#bytes-function-indexrune>)

  - [`function join(s:Array<Array<Int>>, sep:Array<Int>):Array<Int>`](<#bytes-function-join>)

  - [`function lastIndex(s:Array<Int>, sep:Array<Int>):Int`](<#bytes-function-lastindex>)

  - [`function lastIndexAny(s:Array<Int>, chars:String):Int`](<#bytes-function-lastindexany>)

  - [`function lastIndexByte(s:Array<Int>, c:Int):Int`](<#bytes-function-lastindexbyte>)

  - [`function lastIndexFunc(s:Array<Int>, f:(_r:stdgo.GoRune):Bool):Int`](<#bytes-function-lastindexfunc>)

  - [`function map_(mapping:(_r:stdgo.GoRune):stdgo.GoRune, s:Array<Int>):Array<Int>`](<#bytes-function-map_>)

  - [`function newBuffer(buf:Array<Int>):stdgo.bytes.Buffer`](<#bytes-function-newbuffer>)

  - [`function newBufferString(s:String):stdgo.bytes.Buffer`](<#bytes-function-newbufferstring>)

  - [`function newReader(b:Array<Int>):stdgo.bytes.Reader`](<#bytes-function-newreader>)

  - [`function repeat(b:Array<Int>, count:Int):Array<Int>`](<#bytes-function-repeat>)

  - [`function replace(s:Array<Int>, old:Array<Int>, _new:Array<Int>, n:Int):Array<Int>`](<#bytes-function-replace>)

  - [`function replaceAll(s:Array<Int>, old:Array<Int>, _new:Array<Int>):Array<Int>`](<#bytes-function-replaceall>)

  - [`function runes(s:Array<Int>):Array<Int>`](<#bytes-function-runes>)

  - [`function split(s:Array<Int>, sep:Array<Int>):Array<Array<Int>>`](<#bytes-function-split>)

  - [`function splitAfter(s:Array<Int>, sep:Array<Int>):Array<Array<Int>>`](<#bytes-function-splitafter>)

  - [`function splitAfterN(s:Array<Int>, sep:Array<Int>, n:Int):Array<Array<Int>>`](<#bytes-function-splitaftern>)

  - [`function splitN(s:Array<Int>, sep:Array<Int>, n:Int):Array<Array<Int>>`](<#bytes-function-splitn>)

  - [`function title(s:Array<Int>):Array<Int>`](<#bytes-function-title>)

  - [`function toLower(s:Array<Int>):Array<Int>`](<#bytes-function-tolower>)

  - [`function toLowerSpecial(c:stdgo._internal.unicode.SpecialCase, s:Array<Int>):Array<Int>`](<#bytes-function-tolowerspecial>)

  - [`function toTitle(s:Array<Int>):Array<Int>`](<#bytes-function-totitle>)

  - [`function toTitleSpecial(c:stdgo._internal.unicode.SpecialCase, s:Array<Int>):Array<Int>`](<#bytes-function-totitlespecial>)

  - [`function toUpper(s:Array<Int>):Array<Int>`](<#bytes-function-toupper>)

  - [`function toUpperSpecial(c:stdgo._internal.unicode.SpecialCase, s:Array<Int>):Array<Int>`](<#bytes-function-toupperspecial>)

  - [`function toValidUTF8(s:Array<Int>, replacement:Array<Int>):Array<Int>`](<#bytes-function-tovalidutf8>)

  - [`function trim(s:Array<Int>, cutset:String):Array<Int>`](<#bytes-function-trim>)

  - [`function trimFunc(s:Array<Int>, f:(_r:stdgo.GoRune):Bool):Array<Int>`](<#bytes-function-trimfunc>)

  - [`function trimLeft(s:Array<Int>, cutset:String):Array<Int>`](<#bytes-function-trimleft>)

  - [`function trimLeftFunc(s:Array<Int>, f:(_r:stdgo.GoRune):Bool):Array<Int>`](<#bytes-function-trimleftfunc>)

  - [`function trimPrefix(s:Array<Int>, prefix:Array<Int>):Array<Int>`](<#bytes-function-trimprefix>)

  - [`function trimRight(s:Array<Int>, cutset:String):Array<Int>`](<#bytes-function-trimright>)

  - [`function trimRightFunc(s:Array<Int>, f:(_r:stdgo.GoRune):Bool):Array<Int>`](<#bytes-function-trimrightfunc>)

  - [`function trimSpace(s:Array<Int>):Array<Int>`](<#bytes-function-trimspace>)

  - [`function trimSuffix(s:Array<Int>, suffix:Array<Int>):Array<Int>`](<#bytes-function-trimsuffix>)

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
final minRead:haxe.UInt64 = stdgo._internal.bytes.Bytes.minRead
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
Package bytes implements functions for the manipulation of byte slices.
    It is analogous to the facilities of the [strings] package.
```
### Bytes function clone


```haxe
function clone(b:Array<Int>):Array<Int>
```


```
Clone returns a copy of b[:len(b)].
        The result may have additional unused capacity.
        Clone(nil) returns nil.
```
[\(view code\)](<./Bytes.hx#L769>)


### Bytes function compare


```haxe
function compare(a:Array<Int>, b:Array<Int>):Int
```


```
Compare returns an integer comparing two byte slices lexicographically.
        The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
        A nil argument is equivalent to an empty slice.
```
[\(view code\)](<./Bytes.hx#L308>)


### Bytes function contains


```haxe
function contains(b:Array<Int>, subslice:Array<Int>):Bool
```



Contains reports whether subslice is within b.  

[\(view code\)](<./Bytes.hx#L325>)


### Bytes function containsAny


```haxe
function containsAny(b:Array<Int>, chars:String):Bool
```



ContainsAny reports whether any of the UTF\-8\-encoded code points in chars are within b.  

[\(view code\)](<./Bytes.hx#L333>)


### Bytes function containsFunc


```haxe
function containsFunc(b:Array<Int>, f:()):Bool
```



ContainsFunc reports whether any of the UTF\-8\-encoded code points r within b satisfy f\(r\).  

[\(view code\)](<./Bytes.hx#L347>)


### Bytes function containsRune


```haxe
function containsRune(b:Array<Int>, r:Int):Bool
```



ContainsRune reports whether the rune is contained in the UTF\-8\-encoded byte slice b.  

[\(view code\)](<./Bytes.hx#L340>)


### Bytes function count


```haxe
function count(s:Array<Int>, sep:Array<Int>):Int
```


```
Count counts the number of non-overlapping instances of sep in s.
        If sep is an empty slice, Count returns 1 + the number of UTF-8-encoded code points in s.
```
[\(view code\)](<./Bytes.hx#L317>)


### Bytes function cut


```haxe
function cut(s:Array<Int>, sep:Array<Int>):stdgo.Tuple3<Array<Int>, Array<Int>, Bool>
```


```
Cut slices s around the first instance of sep,
        returning the text before and after sep.
        The found result reports whether sep appears in s.
        If sep does not appear in s, cut returns s, nil, false.
```

Cut returns slices of the original slice s, not copies.  

[\(view code\)](<./Bytes.hx#L756>)


### Bytes function cutPrefix


```haxe
function cutPrefix(s:Array<Int>, prefix:Array<Int>):stdgo.Tuple<Array<Int>, Bool>
```


```
CutPrefix returns s without the provided leading prefix byte slice
        and reports whether it found the prefix.
        If s doesn't start with prefix, CutPrefix returns s, false.
        If prefix is the empty byte slice, CutPrefix returns s, true.
```

CutPrefix returns slices of the original slice s, not copies.  

[\(view code\)](<./Bytes.hx#L781>)


### Bytes function cutSuffix


```haxe
function cutSuffix(s:Array<Int>, suffix:Array<Int>):stdgo.Tuple<Array<Int>, Bool>
```


```
CutSuffix returns s without the provided ending suffix byte slice
        and reports whether it found the suffix.
        If s doesn't end with suffix, CutSuffix returns s, false.
        If suffix is the empty byte slice, CutSuffix returns s, true.
```

CutSuffix returns slices of the original slice s, not copies.  

[\(view code\)](<./Bytes.hx#L797>)


### Bytes function equal


```haxe
function equal(a:Array<Int>, b:Array<Int>):Bool
```


```
Equal reports whether a and b
        are the same length and contain the same bytes.
        A nil argument is equivalent to an empty slice.
```
[\(view code\)](<./Bytes.hx#L298>)


### Bytes function equalFold


```haxe
function equalFold(s:Array<Int>, t:Array<Int>):Bool
```


```
EqualFold reports whether s and t, interpreted as UTF-8 strings,
        are equal under simple Unicode case-folding, which is a more general
        form of case-insensitivity.
```
[\(view code\)](<./Bytes.hx#L735>)


### Bytes function fields


```haxe
function fields(s:Array<Int>):Array<Array<Int>>
```


```
Fields interprets s as a sequence of UTF-8-encoded code points.
        It splits the slice s around each instance of one or more consecutive white space
        characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
        empty slice if s contains only white space.
```
[\(view code\)](<./Bytes.hx#L467>)


### Bytes function fieldsFunc


```haxe
function fieldsFunc(s:Array<Int>, f:()):Array<Array<Int>>
```


```
FieldsFunc interprets s as a sequence of UTF-8-encoded code points.
        It splits the slice s at each run of code points c satisfying f(c) and
        returns a slice of subslices of s. If all code points in s satisfy f(c), or
        len(s) == 0, an empty slice is returned.
```

FieldsFunc makes no guarantees about the order in which it calls f\(c\)
and assumes that f always returns the same value for a given c.  

[\(view code\)](<./Bytes.hx#L480>)


### Bytes function hasPrefix


```haxe
function hasPrefix(s:Array<Int>, prefix:Array<Int>):Bool
```



HasPrefix tests whether the byte slice s begins with prefix.  

[\(view code\)](<./Bytes.hx#L497>)


### Bytes function hasSuffix


```haxe
function hasSuffix(s:Array<Int>, suffix:Array<Int>):Bool
```



HasSuffix tests whether the byte slice s ends with suffix.  

[\(view code\)](<./Bytes.hx#L505>)


### Bytes function index


```haxe
function index(s:Array<Int>, sep:Array<Int>):Int
```



Index returns the index of the first instance of sep in s, or \-1 if sep is not present in s.  

[\(view code\)](<./Bytes.hx#L743>)


### Bytes function indexAny


```haxe
function indexAny(s:Array<Int>, chars:String):Int
```


```
IndexAny interprets s as a sequence of UTF-8-encoded Unicode code points.
        It returns the byte index of the first occurrence in s of any of the Unicode
        code points in chars. It returns -1 if chars is empty or if there is no code
        point in common.
```
[\(view code\)](<./Bytes.hx#L391>)


### Bytes function indexByte


```haxe
function indexByte(b:Array<Int>, c:Int):Int
```



IndexByte returns the index of the first instance of c in b, or \-1 if c is not present in b.  

[\(view code\)](<./Bytes.hx#L355>)


### Bytes function indexFunc


```haxe
function indexFunc(s:Array<Int>, f:(_r:stdgo.GoRune):Bool):Int
```


```
IndexFunc interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index in s of the first Unicode
        code point satisfying f(c), or -1 if none do.
```
[\(view code\)](<./Bytes.hx#L648>)


### Bytes function indexRune


```haxe
function indexRune(s:Array<Int>, r:Int):Int
```


```
IndexRune interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index of the first occurrence in s of the given rune.
        It returns -1 if rune is not present in s.
        If r is utf8.RuneError, it returns the first instance of any
        invalid UTF-8 byte sequence.
```
[\(view code\)](<./Bytes.hx#L381>)


### Bytes function join


```haxe
function join(s:Array<Array<Int>>, sep:Array<Int>):Array<Int>
```


```
Join concatenates the elements of s to create a new byte slice. The separator
        sep is placed between elements in the resulting slice.
```
[\(view code\)](<./Bytes.hx#L489>)


### Bytes function lastIndex


```haxe
function lastIndex(s:Array<Int>, sep:Array<Int>):Int
```



LastIndex returns the index of the last instance of sep in s, or \-1 if sep is not present in s.  

[\(view code\)](<./Bytes.hx#L362>)


### Bytes function lastIndexAny


```haxe
function lastIndexAny(s:Array<Int>, chars:String):Int
```


```
LastIndexAny interprets s as a sequence of UTF-8-encoded Unicode code
        points. It returns the byte index of the last occurrence in s of any of
        the Unicode code points in chars. It returns -1 if chars is empty or if
        there is no code point in common.
```
[\(view code\)](<./Bytes.hx#L401>)


### Bytes function lastIndexByte


```haxe
function lastIndexByte(s:Array<Int>, c:Int):Int
```



LastIndexByte returns the index of the last instance of c in s, or \-1 if c is not present in s.  

[\(view code\)](<./Bytes.hx#L370>)


### Bytes function lastIndexFunc


```haxe
function lastIndexFunc(s:Array<Int>, f:(_r:stdgo.GoRune):Bool):Int
```


```
LastIndexFunc interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index in s of the last Unicode
        code point satisfying f(c), or -1 if none do.
```
[\(view code\)](<./Bytes.hx#L658>)


### Bytes function map\_


```haxe
function map_(mapping:(_r:stdgo.GoRune):stdgo.GoRune, s:Array<Int>):Array<Int>
```


```
Map returns a copy of the byte slice s with all its characters modified
        according to the mapping function. If mapping returns a negative value, the character is
        dropped from the byte slice with no replacement. The characters in s and the
        output are interpreted as UTF-8-encoded code points.
```
[\(view code\)](<./Bytes.hx#L516>)


### Bytes function newBuffer


```haxe
function newBuffer(buf:Array<Int>):stdgo.bytes.Buffer
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

[\(view code\)](<./Bytes.hx#L278>)


### Bytes function newBufferString


```haxe
function newBufferString(s:String):stdgo.bytes.Buffer
```


```
NewBufferString creates and initializes a new Buffer using string s as its
        initial contents. It is intended to prepare a buffer to read an existing
        string.
```

In most cases, new\(Buffer\) \(or just declaring a Buffer variable\) is
sufficient to initialize a Buffer.  

[\(view code\)](<./Bytes.hx#L290>)


### Bytes function newReader


```haxe
function newReader(b:Array<Int>):stdgo.bytes.Reader
```



NewReader returns a new Reader reading from b.  

[\(view code\)](<./Bytes.hx#L808>)


### Bytes function repeat


```haxe
function repeat(b:Array<Int>, count:Int):Array<Int>
```



Repeat returns a new byte slice consisting of count copies of b.  


It panics if count is negative or if the result of \(len\(b\) \* count\)
overflows.  

[\(view code\)](<./Bytes.hx#L527>)


### Bytes function replace


```haxe
function replace(s:Array<Int>, old:Array<Int>, _new:Array<Int>, n:Int):Array<Int>
```


```
Replace returns a copy of the slice s with the first n
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the slice
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune slice.
        If n < 0, there is no limit on the number of replacements.
```
[\(view code\)](<./Bytes.hx#L711>)


### Bytes function replaceAll


```haxe
function replaceAll(s:Array<Int>, old:Array<Int>, _new:Array<Int>):Array<Int>
```


```
ReplaceAll returns a copy of the slice s with all
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the slice
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune slice.
```
[\(view code\)](<./Bytes.hx#L724>)


### Bytes function runes


```haxe
function runes(s:Array<Int>):Array<Int>
```


```
Runes interprets s as a sequence of UTF-8-encoded code points.
        It returns a slice of runes (Unicode code points) equivalent to s.
```
[\(view code\)](<./Bytes.hx#L699>)


### Bytes function split


```haxe
function split(s:Array<Int>, sep:Array<Int>):Array<Array<Int>>
```


```
Split slices s into all subslices separated by sep and returns a slice of
        the subslices between those separators.
        If sep is empty, Split splits after each UTF-8 sequence.
        It is equivalent to SplitN with a count of -1.
```

To split around the first instance of a separator, see Cut.  

[\(view code\)](<./Bytes.hx#L445>)


### Bytes function splitAfter


```haxe
function splitAfter(s:Array<Int>, sep:Array<Int>):Array<Array<Int>>
```


```
SplitAfter slices s into all subslices after each instance of sep and
        returns a slice of those subslices.
        If sep is empty, SplitAfter splits after each UTF-8 sequence.
        It is equivalent to SplitAfterN with a count of -1.
```
[\(view code\)](<./Bytes.hx#L456>)


### Bytes function splitAfterN


```haxe
function splitAfterN(s:Array<Int>, sep:Array<Int>, n:Int):Array<Array<Int>>
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
[\(view code\)](<./Bytes.hx#L432>)


### Bytes function splitN


```haxe
function splitN(s:Array<Int>, sep:Array<Int>, n:Int):Array<Array<Int>>
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

[\(view code\)](<./Bytes.hx#L417>)


### Bytes function title


```haxe
function title(s:Array<Int>):Array<Int>
```


```
Title treats s as UTF-8-encoded bytes and returns a copy with all Unicode letters that begin
        words mapped to their title case.
```

Deprecated: The rule Title uses for word boundaries does not handle Unicode
punctuation properly. Use golang.org/x/text/cases instead.  

[\(view code\)](<./Bytes.hx#L594>)


### Bytes function toLower


```haxe
function toLower(s:Array<Int>):Array<Int>
```


```
ToLower returns a copy of the byte slice s with all Unicode letters mapped to
        their lower case.
```
[\(view code\)](<./Bytes.hx#L543>)


### Bytes function toLowerSpecial


```haxe
function toLowerSpecial(c:stdgo._internal.unicode.SpecialCase, s:Array<Int>):Array<Int>
```


```
ToLowerSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        lower case, giving priority to the special casing rules.
```
[\(view code\)](<./Bytes.hx#L566>)


### Bytes function toTitle


```haxe
function toTitle(s:Array<Int>):Array<Int>
```



ToTitle treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.  

[\(view code\)](<./Bytes.hx#L550>)


### Bytes function toTitleSpecial


```haxe
function toTitleSpecial(c:stdgo._internal.unicode.SpecialCase, s:Array<Int>):Array<Int>
```


```
ToTitleSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        title case, giving priority to the special casing rules.
```
[\(view code\)](<./Bytes.hx#L574>)


### Bytes function toUpper


```haxe
function toUpper(s:Array<Int>):Array<Int>
```


```
ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
        their upper case.
```
[\(view code\)](<./Bytes.hx#L535>)


### Bytes function toUpperSpecial


```haxe
function toUpperSpecial(c:stdgo._internal.unicode.SpecialCase, s:Array<Int>):Array<Int>
```


```
ToUpperSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        upper case, giving priority to the special casing rules.
```
[\(view code\)](<./Bytes.hx#L558>)


### Bytes function toValidUTF8


```haxe
function toValidUTF8(s:Array<Int>, replacement:Array<Int>):Array<Int>
```


```
ToValidUTF8 treats s as UTF-8-encoded bytes and returns a copy with each run of bytes
        representing invalid UTF-8 replaced with the bytes in replacement, which may be empty.
```
[\(view code\)](<./Bytes.hx#L582>)


### Bytes function trim


```haxe
function trim(s:Array<Int>, cutset:String):Array<Int>
```


```
Trim returns a subslice of s by slicing off all leading and
        trailing UTF-8-encoded code points contained in cutset.
```
[\(view code\)](<./Bytes.hx#L667>)


### Bytes function trimFunc


```haxe
function trimFunc(s:Array<Int>, f:(_r:stdgo.GoRune):Bool):Array<Int>
```


```
TrimFunc returns a subslice of s by slicing off all leading and trailing
        UTF-8-encoded code points c that satisfy f(c).
```
[\(view code\)](<./Bytes.hx#L620>)


### Bytes function trimLeft


```haxe
function trimLeft(s:Array<Int>, cutset:String):Array<Int>
```


```
TrimLeft returns a subslice of s by slicing off all leading
        UTF-8-encoded code points contained in cutset.
```
[\(view code\)](<./Bytes.hx#L675>)


### Bytes function trimLeftFunc


```haxe
function trimLeftFunc(s:Array<Int>, f:(_r:stdgo.GoRune):Bool):Array<Int>
```


```
TrimLeftFunc treats s as UTF-8-encoded bytes and returns a subslice of s by slicing off
        all leading UTF-8-encoded code points c that satisfy f(c).
```
[\(view code\)](<./Bytes.hx#L602>)


### Bytes function trimPrefix


```haxe
function trimPrefix(s:Array<Int>, prefix:Array<Int>):Array<Int>
```


```
TrimPrefix returns s without the provided leading prefix string.
        If s doesn't start with prefix, s is returned unchanged.
```
[\(view code\)](<./Bytes.hx#L629>)


### Bytes function trimRight


```haxe
function trimRight(s:Array<Int>, cutset:String):Array<Int>
```


```
TrimRight returns a subslice of s by slicing off all trailing
        UTF-8-encoded code points that are contained in cutset.
```
[\(view code\)](<./Bytes.hx#L683>)


### Bytes function trimRightFunc


```haxe
function trimRightFunc(s:Array<Int>, f:(_r:stdgo.GoRune):Bool):Array<Int>
```


```
TrimRightFunc returns a subslice of s by slicing off all trailing
        UTF-8-encoded code points c that satisfy f(c).
```
[\(view code\)](<./Bytes.hx#L611>)


### Bytes function trimSpace


```haxe
function trimSpace(s:Array<Int>):Array<Int>
```


```
TrimSpace returns a subslice of s by slicing off all leading and
        trailing white space, as defined by Unicode.
```
[\(view code\)](<./Bytes.hx#L691>)


### Bytes function trimSuffix


```haxe
function trimSuffix(s:Array<Int>, suffix:Array<Int>):Array<Int>
```


```
TrimSuffix returns s without the provided trailing suffix string.
        If s doesn't end with suffix, s is returned unchanged.
```
[\(view code\)](<./Bytes.hx#L638>)


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


