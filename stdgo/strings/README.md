# Module: `stdgo.strings`

[(view library index)](../stdgo.md)


# Overview



Package strings implements simple functions to manipulate UTF\-8 encoded strings.  


For information about UTF\-8 strings in Go, see https://blog.golang.org/strings.  


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>`](<#function-_explode>)

- [`function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>`](<#function-_gensplit>)

- [`function _getStringWriter(_w:stdgo.io.Writer):stdgo.io.StringWriter`](<#function-_getstringwriter>)

- [`function _indexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt`](<#function-_indexfunc>)

- [`function _isSeparator(_r:stdgo.GoRune):Bool`](<#function-_isseparator>)

- [`function _lastIndexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt`](<#function-_lastindexfunc>)

- [`function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt`](<#function-_longestcommonsuffix>)

- [`function _makeASCIISet(_chars:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.strings.T_asciiSet;
}`](<#function-_makeasciiset>)

- [`function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo.strings.T_genericReplacer>`](<#function-_makegenericreplacer>)

- [`function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):stdgo.Ref<stdgo.strings.T_singleStringReplacer>`](<#function-_makesinglestringreplacer>)

- [`function _makeStringFinder(_pattern:stdgo.GoString):stdgo.Ref<stdgo.strings.T_stringFinder>`](<#function-_makestringfinder>)

- [`function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt`](<#function-_max>)

- [`function _noescape(_p:stdgo.unsafe.UnsafePointer):stdgo.unsafe.UnsafePointer`](<#function-_noescape>)

- [`function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo.strings.T_asciiSet>):stdgo.GoString`](<#function-_trimleftascii>)

- [`function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString`](<#function-_trimleftbyte>)

- [`function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString`](<#function-_trimleftunicode>)

- [`function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo.strings.T_asciiSet>):stdgo.GoString`](<#function-_trimrightascii>)

- [`function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString`](<#function-_trimrightbyte>)

- [`function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString`](<#function-_trimrightunicode>)

- [`function clone(_s:stdgo.GoString):stdgo.GoString`](<#function-clone>)

- [`function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt`](<#function-compare>)

- [`function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool`](<#function-contains>)

- [`function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool`](<#function-containsany>)

- [`function containsFunc(_s:stdgo.GoString, _f:()):Bool`](<#function-containsfunc>)

- [`function containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool`](<#function-containsrune>)

- [`function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt`](<#function-count>)

- [`function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}`](<#function-cut>)

- [`function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoString;
}`](<#function-cutprefix>)

- [`function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoString;
}`](<#function-cutsuffix>)

- [`function dumpTables(_pattern:stdgo.GoString):{
	_1:stdgo.Slice<stdgo.GoInt>;
	_0:stdgo.Slice<stdgo.GoInt>;
}`](<#function-dumptables>)

- [`function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool`](<#function-equalfold>)

- [`function fields(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString>`](<#function-fields>)

- [`function fieldsFunc(_s:stdgo.GoString, _f:()):stdgo.Slice<stdgo.GoString>`](<#function-fieldsfunc>)

- [`function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool`](<#function-hasprefix>)

- [`function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool`](<#function-hassuffix>)

- [`function index(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt`](<#function-index>)

- [`function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt`](<#function-indexany>)

- [`function indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt`](<#function-indexbyte>)

- [`function indexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt`](<#function-indexfunc>)

- [`function indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt`](<#function-indexrune>)

- [`function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString`](<#function-join>)

- [`function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt`](<#function-lastindex>)

- [`function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt`](<#function-lastindexany>)

- [`function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt`](<#function-lastindexbyte>)

- [`function lastIndexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt`](<#function-lastindexfunc>)

- [`function map(_mapping:(), _s:stdgo.GoString):stdgo.GoString`](<#function-map>)

- [`function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo.strings.Reader>`](<#function-newreader>)

- [`function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo.strings.Replacer>`](<#function-newreplacer>)

- [`function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString`](<#function-repeat>)

- [`function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString`](<#function-replace>)

- [`function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):stdgo.GoString`](<#function-replaceall>)

- [`function split(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>`](<#function-split>)

- [`function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>`](<#function-splitafter>)

- [`function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>`](<#function-splitaftern>)

- [`function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>`](<#function-splitn>)

- [`function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt`](<#function-stringfind>)

- [`function title(_s:stdgo.GoString):stdgo.GoString`](<#function-title>)

- [`function toLower(_s:stdgo.GoString):stdgo.GoString`](<#function-tolower>)

- [`function toLowerSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString`](<#function-tolowerspecial>)

- [`function toTitle(_s:stdgo.GoString):stdgo.GoString`](<#function-totitle>)

- [`function toTitleSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString`](<#function-totitlespecial>)

- [`function toUpper(_s:stdgo.GoString):stdgo.GoString`](<#function-toupper>)

- [`function toUpperSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString`](<#function-toupperspecial>)

- [`function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString`](<#function-tovalidutf8>)

- [`function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString`](<#function-trim>)

- [`function trimFunc(_s:stdgo.GoString, _f:()):stdgo.GoString`](<#function-trimfunc>)

- [`function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString`](<#function-trimleft>)

- [`function trimLeftFunc(_s:stdgo.GoString, _f:()):stdgo.GoString`](<#function-trimleftfunc>)

- [`function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString`](<#function-trimprefix>)

- [`function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString`](<#function-trimright>)

- [`function trimRightFunc(_s:stdgo.GoString, _f:()):stdgo.GoString`](<#function-trimrightfunc>)

- [`function trimSpace(_s:stdgo.GoString):stdgo.GoString`](<#function-trimspace>)

- [`function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString`](<#function-trimsuffix>)

- [class Builder](<#class-builder>)

  - [`function new(?_addr:stdgo.Ref<stdgo.strings.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>):Void`](<#builder-function-new>)

  - [`function _copyCheck():Void`](<#builder-function-_copycheck>)

  - [`function _grow( _n:stdgo.GoInt):Void`](<#builder-function-_grow>)

  - [`function cap():stdgo.GoInt`](<#builder-function-cap>)

  - [`function grow( _n:stdgo.GoInt):Void`](<#builder-function-grow>)

  - [`function len():stdgo.GoInt`](<#builder-function-len>)

  - [`function reset():Void`](<#builder-function-reset>)

  - [`function string():stdgo.GoString`](<#builder-function-string>)

  - [`function write( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#builder-function-write>)

  - [`function writeByte( _c:stdgo.GoByte):stdgo.Error`](<#builder-function-writebyte>)

  - [`function writeRune( _r:stdgo.GoRune):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#builder-function-writerune>)

  - [`function writeString( _s:stdgo.GoString):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#builder-function-writestring>)

- [class Reader](<#class-reader>)

  - [`function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt64, ?_prevRune:Null<stdgo.GoInt>):Void`](<#reader-function-new>)

  - [`function len():stdgo.GoInt`](<#reader-function-len>)

  - [`function read( _b:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#reader-function-read>)

  - [`function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#reader-function-readat>)

  - [`function readByte():{ _1:stdgo.Error; _0:stdgo.GoByte;}`](<#reader-function-readbyte>)

  - [`function readRune():{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoRune;}`](<#reader-function-readrune>)

  - [`function reset( _s:stdgo.GoString):Void`](<#reader-function-reset>)

  - [`function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#reader-function-seek>)

  - [`function size():stdgo.GoInt64`](<#reader-function-size>)

  - [`function unreadByte():stdgo.Error`](<#reader-function-unreadbyte>)

  - [`function unreadRune():stdgo.Error`](<#reader-function-unreadrune>)

  - [`function writeTo( _w:stdgo.io.Writer):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#reader-function-writeto>)

- [class Replacer](<#class-replacer>)

  - [`function new(?_once:stdgo.sync.Once, ?_r:Null<stdgo.strings.T_replacer>, ?_oldnew:stdgo.Slice<stdgo.GoString>):Void`](<#replacer-function-new>)

  - [`function _build():stdgo.strings.T_replacer`](<#replacer-function-_build>)

  - [`function _buildOnce():Void`](<#replacer-function-_buildonce>)

  - [`function printTrie():stdgo.GoString`](<#replacer-function-printtrie>)

  - [`function replace( _s:stdgo.GoString):stdgo.GoString`](<#replacer-function-replace>)

  - [`function replacer():stdgo.AnyInterface`](<#replacer-function-replacer>)

  - [`function writeString( _w:stdgo.io.Writer, _s:stdgo.GoString):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#replacer-function-writestring>)

- [class T\_fieldsFunc\_1\_\_\_localname\_\_\_span](<#class-t_fieldsfunc_1localnamespan>)

  - [`function new(?_start:Null<stdgo.GoInt>, ?_end:Null<stdgo.GoInt>):Void`](<#t_fieldsfunc_1localnamespan-function-new>)

- [typedef T\_appendSliceWriter](<#typedef-t_appendslicewriter>)

- [typedef T\_asciiSet](<#typedef-t_asciiset>)

- [typedef T\_byteReplacer](<#typedef-t_bytereplacer>)

- [typedef T\_replacer](<#typedef-t_replacer>)

# Examples


- [`exampleClone`](<#exampleclone>)

- [`exampleCompare`](<#examplecompare>)

- [`exampleContains`](<#examplecontains>)

- [`exampleContainsAny`](<#examplecontainsany>)

- [`exampleContainsRune`](<#examplecontainsrune>)

- [`exampleCount`](<#examplecount>)

- [`exampleCut`](<#examplecut>)

- [`exampleCutPrefix`](<#examplecutprefix>)

- [`exampleCutSuffix`](<#examplecutsuffix>)

- [`exampleEqualFold`](<#exampleequalfold>)

- [`exampleFields`](<#examplefields>)

- [`exampleFieldsFunc`](<#examplefieldsfunc>)

- [`exampleHasPrefix`](<#examplehasprefix>)

- [`exampleHasSuffix`](<#examplehassuffix>)

- [`exampleIndex`](<#exampleindex>)

- [`exampleIndexAny`](<#exampleindexany>)

- [`exampleIndexByte`](<#exampleindexbyte>)

- [`exampleIndexFunc`](<#exampleindexfunc>)

- [`exampleIndexRune`](<#exampleindexrune>)

- [`exampleJoin`](<#examplejoin>)

- [`exampleLastIndex`](<#examplelastindex>)

- [`exampleLastIndexAny`](<#examplelastindexany>)

- [`exampleLastIndexByte`](<#examplelastindexbyte>)

- [`exampleLastIndexFunc`](<#examplelastindexfunc>)

- [`exampleMap`](<#examplemap>)

- [`exampleNewReplacer`](<#examplenewreplacer>)

- [`exampleRepeat`](<#examplerepeat>)

- [`exampleReplace`](<#examplereplace>)

- [`exampleReplaceAll`](<#examplereplaceall>)

- [`exampleSplit`](<#examplesplit>)

- [`exampleSplitAfter`](<#examplesplitafter>)

- [`exampleSplitAfterN`](<#examplesplitaftern>)

- [`exampleSplitN`](<#examplesplitn>)

- [`exampleTitle`](<#exampletitle>)

- [`exampleToLower`](<#exampletolower>)

- [`exampleToLowerSpecial`](<#exampletolowerspecial>)

- [`exampleToTitle`](<#exampletotitle>)

- [`exampleToTitleSpecial`](<#exampletotitlespecial>)

- [`exampleToUpper`](<#exampletoupper>)

- [`exampleToUpperSpecial`](<#exampletoupperspecial>)

- [`exampleToValidUTF8`](<#exampletovalidutf8>)

- [`exampleTrim`](<#exampletrim>)

- [`exampleTrimFunc`](<#exampletrimfunc>)

- [`exampleTrimLeft`](<#exampletrimleft>)

- [`exampleTrimLeftFunc`](<#exampletrimleftfunc>)

- [`exampleTrimPrefix`](<#exampletrimprefix>)

- [`exampleTrimRight`](<#exampletrimright>)

- [`exampleTrimRightFunc`](<#exampletrimrightfunc>)

- [`exampleTrimSpace`](<#exampletrimspace>)

- [`exampleTrimSuffix`](<#exampletrimsuffix>)

# Constants


```haxe
import stdgo.strings.Strings
```


```haxe
final _countCutOff:stdgo.GoUInt64 = ((8i64 : stdgo.StdGoTypes.GoUInt64))
```



countCutOff controls the ratio of a string length to a number of replacements
at which \(\*byteStringReplacer\).Replace switches algorithms.
For strings with higher ration of length to replacements than that value,
we call Count, for each replacement from toReplace.
For strings, with a lower ratio we use simple loop, because of Count overhead.
countCutOff is an empirically determined overhead multiplier.
TODO\(tocarip\) revisit once we have register\-based abi/mid\-stack inlining.  

```haxe
final _maxInt:stdgo.GoInt = ((((2147483647u32 : stdgo.StdGoTypes.GoUInt)) : stdgo.StdGoTypes.GoInt))
```


# Variables


```haxe
import stdgo.strings.Strings
```


```haxe
var _asciiSpace:stdgo.GoArray<stdgo.GoUInt8>
```


# Functions


```haxe
import stdgo.strings.Strings
```


## function \_explode


```haxe
function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```



explode splits s into a slice of UTF\-8 strings,
one string per Unicode character up to a maximum of n \(n \< 0 means no limit\).
Invalid UTF\-8 bytes are sliced individually.  

[\(view code\)](<./Strings.hx#L525>)


## function \_genSplit


```haxe
function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```



Generic split: splits after each instance of sep,
including sepSave bytes of sep in the subarrays.  

[\(view code\)](<./Strings.hx#L779>)


## function \_getStringWriter


```haxe
function _getStringWriter(_w:stdgo.io.Writer):stdgo.io.StringWriter
```


[\(view code\)](<./Strings.hx#L458>)


## function \_indexFunc


```haxe
function _indexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt
```



indexFunc is the same as IndexFunc except that if
truth==false, the sense of the predicate function is
inverted.  

[\(view code\)](<./Strings.hx#L1368>)


## function \_isSeparator


```haxe
function _isSeparator(_r:stdgo.GoRune):Bool
```



isSeparator reports whether the rune could mark a word boundary.
TODO: update when package unicode captures more of the properties.  

[\(view code\)](<./Strings.hx#L1281>)


## function \_lastIndexFunc


```haxe
function _lastIndexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt
```



lastIndexFunc is the same as LastIndexFunc except that if
truth==false, the sense of the predicate function is
inverted.  

[\(view code\)](<./Strings.hx#L1381>)


## function \_longestCommonSuffix


```haxe
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L505>)


## function \_makeASCIISet


```haxe
function _makeASCIISet(_chars:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.strings.T_asciiSet;
}
```



makeASCIISet creates a set of ASCII characters and reports whether all
characters in chars are ASCII.  

[\(view code\)](<./Strings.hx#L1398>)


## function \_makeGenericReplacer


```haxe
function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo.strings.T_genericReplacer>
```


[\(view code\)](<./Strings.hx#L423>)


## function \_makeSingleStringReplacer


```haxe
function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):stdgo.Ref<stdgo.strings.T_singleStringReplacer>
```


[\(view code\)](<./Strings.hx#L469>)


## function \_makeStringFinder


```haxe
function _makeStringFinder(_pattern:stdgo.GoString):stdgo.Ref<stdgo.strings.T_stringFinder>
```


[\(view code\)](<./Strings.hx#L472>)


## function \_max


```haxe
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L514>)


## function \_noescape


```haxe
function _noescape(_p:stdgo.unsafe.UnsafePointer):stdgo.unsafe.UnsafePointer
```



noescape hides a pointer from escape analysis. It is the identity function
but escape analysis doesn't think the output depends on the input.
noescape is inlined and currently compiles down to zero instructions.
USE CAREFULLY\!
This was copied from the runtime; see issues 23382 and 7921.  

```
go:nosplit
go:nocheckptr
```
[\(view code\)](<./Strings.hx#L360>)


## function \_trimLeftASCII


```haxe
function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo.strings.T_asciiSet>):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1458>)


## function \_trimLeftByte


```haxe
function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1452>)


## function \_trimLeftUnicode


```haxe
function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1467>)


## function \_trimRightASCII


```haxe
function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo.strings.T_asciiSet>):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1511>)


## function \_trimRightByte


```haxe
function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1505>)


## function \_trimRightUnicode


```haxe
function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1520>)


## function clone


```haxe
function clone(_s:stdgo.GoString):stdgo.GoString
```



Clone returns a fresh copy of s.
It guarantees to make a copy of s into a new allocation,
which can be important when retaining only a small substring
of a much larger string. Using Clone can help such programs
use less memory. Of course, since using Clone makes a copy,
overuse of Clone can make programs use more memory.
Clone should typically be used only rarely, and only when
profiling indicates that it is needed.
For strings of length zero the string "" will be returned
and no allocation is made.  

### exampleClone


<details><summary></summary>
<p>


```haxe
function exampleClone():Void {
        var _s:stdgo.GoString = ("abc" : stdgo.GoString);
        var _clone:stdgo.GoString = stdgo.strings.Strings.clone(_s?.__copy__())?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s == (_clone)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unsafe.Unsafe.stringData(_s?.__copy__()) == (stdgo.unsafe.Unsafe.stringData(_clone?.__copy__()))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L376>)


## function compare


```haxe
function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```



Compare returns an integer comparing two strings lexicographically.
The result will be 0 if a == b, \-1 if a \< b, and \+1 if a \> b.  


Compare is included only for symmetry with package bytes.
It is usually clearer and always faster to use the built\-in
string comparison operators ==, \<, \>, and so on.  

### exampleCompare


<details><summary></summary>
<p>


```haxe
function exampleCompare():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.compare(("a" : stdgo.GoString), ("b" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.compare(("a" : stdgo.GoString), ("a" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.compare(("b" : stdgo.GoString), ("a" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L385>)


## function contains


```haxe
function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool
```



Contains reports whether substr is within s.  

### exampleContains


<details><summary></summary>
<p>


```haxe
function exampleContains():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.contains(("seafood" : stdgo.GoString), ("foo" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.contains(("seafood" : stdgo.GoString), ("bar" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.contains(("seafood" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.contains(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L568>)


## function containsAny


```haxe
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool
```



ContainsAny reports whether any Unicode code points in chars are within s.  

### exampleContainsAny


<details><summary></summary>
<p>


```haxe
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(("team" : stdgo.GoString), ("i" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(("fail" : stdgo.GoString), ("ui" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(("ure" : stdgo.GoString), ("ui" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(("failure" : stdgo.GoString), ("ui" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(("foo" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L574>)


## function containsFunc


```haxe
function containsFunc(_s:stdgo.GoString, _f:()):Bool
```



ContainsFunc reports whether any Unicode code points r within s satisfy f\(r\).  

[\(view code\)](<./Strings.hx#L586>)


## function containsRune


```haxe
function containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool
```



ContainsRune reports whether the Unicode code point r is within s.  

### exampleContainsRune


<details><summary></summary>
<p>


```haxe
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsRune(("aardvark" : stdgo.GoString), (97 : stdgo.StdGoTypes.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsRune(("timeout" : stdgo.GoString), (97 : stdgo.StdGoTypes.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L580>)


## function count


```haxe
function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```



Count counts the number of non\-overlapping instances of substr in s.
If substr is an empty string, Count returns 1 \+ the number of Unicode code points in s.  

### exampleCount


<details><summary></summary>
<p>


```haxe
function exampleCount():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.count(("cheese" : stdgo.GoString), ("e" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.count(("five" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L548>)


## function cut


```haxe
function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}
```



Cut slices s around the first instance of sep,
returning the text before and after sep.
The found result reports whether sep appears in s.
If sep does not appear in s, cut returns s, "", false.  

### exampleCut


<details><summary></summary>
<p>


```haxe
function exampleCut():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.strings.Strings.cut(_s?.__copy__(), _sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo.fmt.Fmt.printf(("Cut(%q, %q) = %q, %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("Badger" : stdgo.GoString));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1803>)


## function cutPrefix


```haxe
function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoString;
}
```



CutPrefix returns s without the provided leading prefix string
and reports whether it found the prefix.
If s doesn't start with prefix, CutPrefix returns s, false.
If prefix is the empty string, CutPrefix returns s, true.  

### exampleCutPrefix


<details><summary></summary>
<p>


```haxe
function exampleCutPrefix():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.strings.Strings.cutPrefix(_s?.__copy__(), _sep?.__copy__()), _after:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo.fmt.Fmt.printf(("CutPrefix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1819>)


## function cutSuffix


```haxe
function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoString;
}
```



CutSuffix returns s without the provided ending suffix string
and reports whether it found the suffix.
If s doesn't end with suffix, CutSuffix returns s, false.
If suffix is the empty string, CutSuffix returns s, true.  

### exampleCutSuffix


<details><summary></summary>
<p>


```haxe
function exampleCutSuffix():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.strings.Strings.cutSuffix(_s?.__copy__(), _sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo.fmt.Fmt.printf(("CutSuffix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1832>)


## function dumpTables


```haxe
function dumpTables(_pattern:stdgo.GoString):{
	_1:stdgo.Slice<stdgo.GoInt>;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Strings.hx#L397>)


## function equalFold


```haxe
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool
```



EqualFold reports whether s and t, interpreted as UTF\-8 strings,
are equal under simple Unicode case\-folding, which is a more general
form of case\-insensitivity.  

### exampleEqualFold


<details><summary></summary>
<p>


```haxe
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.equalFold(("Go" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.equalFold(("AB" : stdgo.GoString), ("ab" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.equalFold(("ß" : stdgo.GoString), ("ss" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1642>)


## function fields


```haxe
function fields(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```



Fields splits the string s around each instance of one or more consecutive white space
characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an
empty slice if s contains only white space.  

### exampleFields


<details><summary></summary>
<p>


```haxe
function exampleFields():Void {
        stdgo.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.fields(("  foo bar  baz   " : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L878>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.GoString, _f:()):stdgo.Slice<stdgo.GoString>
```



FieldsFunc splits the string s at each run of Unicode code points c satisfying f\(c\)
and returns an array of slices of s. If all code points in s satisfy f\(c\) or the
string is empty, an empty slice is returned.  


FieldsFunc makes no guarantees about the order in which it calls f\(c\)
and assumes that f always returns the same value for a given c.  

### exampleFieldsFunc


<details><summary></summary>
<p>


```haxe
function exampleFieldsFunc():Void {
        var _f:stdgo.StdGoTypes.GoInt32 -> Bool = function(_c:stdgo.StdGoTypes.GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.fieldsFunc(("  foo1;bar2,baz3..." : stdgo.GoString), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L947>)


## function hasPrefix


```haxe
function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool
```



HasPrefix tests whether the string s begins with prefix.  

### exampleHasPrefix


<details><summary></summary>
<p>


```haxe
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString), ("C" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1010>)


## function hasSuffix


```haxe
function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool
```



HasSuffix tests whether the string s ends with suffix.  

### exampleHasSuffix


<details><summary></summary>
<p>


```haxe
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), ("O" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), ("Ami" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1016>)


## function index


```haxe
function index(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```



Index returns the index of the first instance of substr in s, or \-1 if substr is not present in s.  

### exampleIndex


<details><summary></summary>
<p>


```haxe
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.index(("chicken" : stdgo.GoString), ("ken" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.index(("chicken" : stdgo.GoString), ("dmr" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1724>)


## function indexAny


```haxe
function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt
```



IndexAny returns the index of the first instance of any Unicode code point
from chars in s, or \-1 if no Unicode code point from chars is present in s.  

### exampleIndexAny


<details><summary></summary>
<p>


```haxe
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexAny(("chicken" : stdgo.GoString), ("aeiouy" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexAny(("crwth" : stdgo.GoString), ("aeiouy" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L663>)


## function indexByte


```haxe
function indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```



IndexByte returns the index of the first instance of c in s, or \-1 if c is not present in s.  

### exampleIndexByte


<details><summary></summary>
<p>


```haxe
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexByte(("golang" : stdgo.GoString), (103 : stdgo.StdGoTypes.GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexByte(("gophers" : stdgo.GoString), (104 : stdgo.StdGoTypes.GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexByte(("golang" : stdgo.GoString), (120 : stdgo.StdGoTypes.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L634>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt
```



IndexFunc returns the index into s of the first Unicode
code point satisfying f\(c\), or \-1 if none do.  

### exampleIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleIndexFunc():Void {
        var _f:stdgo.StdGoTypes.GoInt32 -> Bool = function(_c:stdgo.StdGoTypes.GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexFunc(("Hello, 世界" : stdgo.GoString), _f)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexFunc(("Hello, world" : stdgo.GoString), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1353>)


## function indexRune


```haxe
function indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt
```



IndexRune returns the index of the first instance of the Unicode code point
r, or \-1 if rune is not present in s.
If r is utf8.RuneError, it returns the first instance of any
invalid UTF\-8 byte sequence.  

### exampleIndexRune


<details><summary></summary>
<p>


```haxe
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexRune(("chicken" : stdgo.GoString), (107 : stdgo.StdGoTypes.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexRune(("chicken" : stdgo.GoString), (100 : stdgo.StdGoTypes.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L643>)


## function join


```haxe
function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString
```



Join concatenates the elements of its first argument to create a single string. The separator
string sep is placed between elements in the resulting string.  

### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
        var _s = (new stdgo.Slice<stdgo.GoString>(3, 3, ("foo" : stdgo.GoString), ("bar" : stdgo.GoString), ("baz" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.join(_s, (", " : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L976>)


## function lastIndex


```haxe
function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```



LastIndex returns the index of the last instance of substr in s, or \-1 if substr is not present in s.  

### exampleLastIndex


<details><summary></summary>
<p>


```haxe
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.index(("go gopher" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndex(("go gopher" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndex(("go gopher" : stdgo.GoString), ("rodent" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L592>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt
```



LastIndexAny returns the index of the last instance of any Unicode code
point from chars in s, or \-1 if no Unicode code point from chars is
present in s.  

### exampleLastIndexAny


<details><summary></summary>
<p>


```haxe
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString), ("rodent" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString), ("fail" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L702>)


## function lastIndexByte


```haxe
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```



LastIndexByte returns the index of the last instance of c in s, or \-1 if c is not present in s.  

### exampleLastIndexByte


<details><summary></summary>
<p>


```haxe
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString), (108 : stdgo.StdGoTypes.GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString), (111 : stdgo.StdGoTypes.GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString), (120 : stdgo.StdGoTypes.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L764>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt
```



LastIndexFunc returns the index into s of the last
Unicode code point satisfying f\(c\), or \-1 if none do.  

### exampleLastIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("go 123" : stdgo.GoString), stdgo.unicode.Unicode.isNumber)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("123 go" : stdgo.GoString), stdgo.unicode.Unicode.isNumber)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("go" : stdgo.GoString), stdgo.unicode.Unicode.isNumber)));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1360>)


## function map


```haxe
function map(_mapping:(), _s:stdgo.GoString):stdgo.GoString
```



Map returns a copy of the string s with all its characters modified
according to the mapping function. If mapping returns a negative value, the character is
dropped from the string with no replacement.  

### exampleMap


<details><summary></summary>
<p>


```haxe
function exampleMap():Void {
        var _rot13:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            if ((_r >= (65 : stdgo.StdGoTypes.GoInt32)) && (_r <= (90 : stdgo.StdGoTypes.GoInt32))) {
                return (65 : stdgo.StdGoTypes.GoInt32) + (((_r - (65 : stdgo.StdGoTypes.GoInt32)) + (13 : stdgo.StdGoTypes.GoInt32)) % (26 : stdgo.StdGoTypes.GoInt32));
            } else if ((_r >= (97 : stdgo.StdGoTypes.GoInt32)) && (_r <= (122 : stdgo.StdGoTypes.GoInt32))) {
                return (97 : stdgo.StdGoTypes.GoInt32) + (((_r - (97 : stdgo.StdGoTypes.GoInt32)) + (13 : stdgo.StdGoTypes.GoInt32)) % (26 : stdgo.StdGoTypes.GoInt32));
            };
            return _r;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.map(_rot13, ("\'Twas brillig and the slithy gopher..." : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1024>)


## function newReader


```haxe
function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo.strings.Reader>
```



NewReader returns a new Reader reading from s.
It is similar to bytes.NewBufferString but more efficient and non\-writable.  

[\(view code\)](<./Strings.hx#L405>)


## function newReplacer


```haxe
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo.strings.Replacer>
```



NewReplacer returns a new Replacer from a list of old, new string
pairs. Replacements are performed in the order they appear in the
target string, without overlapping matches. The old string
comparisons are done in argument order.  


NewReplacer panics if given an odd number of arguments.  

### exampleNewReplacer


<details><summary></summary>
<p>


```haxe
function exampleNewReplacer():Void {
        var _r = stdgo.strings.Strings.newReplacer(("<" : stdgo.GoString), ("&lt;" : stdgo.GoString), (">" : stdgo.GoString), ("&gt;" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_r.replace(("This is <b>HTML</b>!" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L416>)


## function repeat


```haxe
function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString
```



Repeat returns a new string consisting of count copies of the string s.  


It panics if count is negative or if the result of \(len\(s\) \* count\)
overflows.  

### exampleRepeat


<details><summary></summary>
<p>


```haxe
function exampleRepeat():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("ba" : stdgo.GoString) + stdgo.strings.Strings.repeat(("na" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt))?.__copy__()));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1073>)


## function replace


```haxe
function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString
```



Replace returns a copy of the string s with the first n
non\-overlapping instances of old replaced by new.
If old is empty, it matches at the beginning of the string
and after each UTF\-8 sequence, yielding up to k\+1 replacements
for a k\-rune string.
If n \< 0, there is no limit on the number of replacements.  

### exampleReplace


<details><summary></summary>
<p>


```haxe
function exampleReplace():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.replace(("oink oink oink" : stdgo.GoString), ("k" : stdgo.GoString), ("ky" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.replace(("oink oink oink" : stdgo.GoString), ("oink" : stdgo.GoString), ("moo" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1592>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):stdgo.GoString
```



ReplaceAll returns a copy of the string s with all
non\-overlapping instances of old replaced by new.
If old is empty, it matches at the beginning of the string
and after each UTF\-8 sequence, yielding up to k\+1 replacements
for a k\-rune string.  

### exampleReplaceAll


<details><summary></summary>
<p>


```haxe
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.replaceAll(("oink oink oink" : stdgo.GoString), ("oink" : stdgo.GoString), ("moo" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1634>)


## function split


```haxe
function split(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```



Split slices s into all substrings separated by sep and returns a slice of
the substrings between those separators.  


If s does not contain sep and sep is not empty, Split returns a
slice of length 1 whose only element is s.  


If sep is empty, Split splits after each UTF\-8 sequence. If both s
and sep are empty, Split returns an empty slice.  


It is equivalent to SplitN with a count of \-1.  


To split around the first instance of a separator, see Cut.  

### exampleSplit


<details><summary></summary>
<p>


```haxe
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.split(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString))));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.split(("a man a plan a canal panama" : stdgo.GoString), ("a " : stdgo.GoString))));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.split((" xyz " : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.split(stdgo.Go.str()?.__copy__(), ("Bernardo O\'Higgins" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L855>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```



SplitAfter slices s into all substrings after each instance of sep and
returns a slice of those substrings.  


If s does not contain sep and sep is not empty, SplitAfter returns
a slice of length 1 whose only element is s.  


If sep is empty, SplitAfter splits after each UTF\-8 sequence. If
both s and sep are empty, SplitAfter returns an empty slice.  


It is equivalent to SplitAfterN with a count of \-1.  

### exampleSplitAfter


<details><summary></summary>
<p>


```haxe
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.splitAfter(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L870>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```



SplitAfterN slices s into substrings after each instance of sep and
returns a slice of those substrings.  


The count determines the number of substrings to return:  

```
	n > 0: at most n substrings; the last substring will be the unsplit remainder.
	n == 0: the result is nil (zero substrings)
	n < 0: all substrings
```

Edge cases for s and sep \(for example, empty strings\) are handled
as described in the documentation for SplitAfter.  

### exampleSplitAfterN


<details><summary></summary>
<p>


```haxe
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.splitAfterN(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L838>)


## function splitN


```haxe
function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```



SplitN slices s into substrings separated by sep and returns a slice of
the substrings between those separators.  


The count determines the number of substrings to return:  

```
	n > 0: at most n substrings; the last substring will be the unsplit remainder.
	n == 0: the result is nil (zero substrings)
	n < 0: all substrings
```

Edge cases for s and sep \(for example, empty strings\) are handled
as described in the documentation for Split.  


To split around the first instance of a separator, see Cut.  

### exampleSplitN


<details><summary></summary>
<p>


```haxe
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.splitN(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt))));
        var _z = stdgo.strings.Strings.splitN(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.printf(("%q (nil = %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z == null));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L822>)


## function stringFind


```haxe
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L394>)


## function title


```haxe
function title(_s:stdgo.GoString):stdgo.GoString
```



Title returns a copy of the string s with all Unicode letters that begin words
mapped to their Unicode title case.  


Deprecated: The rule Title uses for word boundaries does not handle Unicode
punctuation properly. Use golang.org/x/text/cases instead.  

### exampleTitle


<details><summary></summary>
<p>


```haxe
function exampleTitle():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.title(("her royal highness" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.title(("loud noises" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.title(("хлеб" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1306>)


## function toLower


```haxe
function toLower(_s:stdgo.GoString):stdgo.GoString
```



ToLower returns s with all Unicode letters mapped to their lower case.  

### exampleToLower


<details><summary></summary>
<p>


```haxe
function exampleToLower():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toLower(("Gopher" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1161>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```



ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their
lower case using the case mapping specified by c.  

### exampleToLowerSpecial


<details><summary></summary>
<p>


```haxe
function exampleToLowerSpecial():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toLowerSpecial(stdgo.unicode.Unicode.turkishCase, ("Önnek İş" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1219>)


## function toTitle


```haxe
function toTitle(_s:stdgo.GoString):stdgo.GoString
```



ToTitle returns a copy of the string s with all Unicode letters mapped to
their Unicode title case.  

### exampleToTitle


<details><summary></summary>
<p>


```haxe
function exampleToTitle():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toTitle(("her royal highness" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toTitle(("loud noises" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toTitle(("хлеб" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1205>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```



ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their
Unicode title case, giving priority to the special casing rules.  

### exampleToTitleSpecial


<details><summary></summary>
<p>


```haxe
function exampleToTitleSpecial():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toTitleSpecial(stdgo.unicode.Unicode.turkishCase, ("dünyanın ilk borsa yapısı Aizonai kabul edilir" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1226>)


## function toUpper


```haxe
function toUpper(_s:stdgo.GoString):stdgo.GoString
```



ToUpper returns s with all Unicode letters mapped to their upper case.  

### exampleToUpper


<details><summary></summary>
<p>


```haxe
function exampleToUpper():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toUpper(("Gopher" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1118>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```



ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their
upper case using the case mapping specified by c.  

### exampleToUpperSpecial


<details><summary></summary>
<p>


```haxe
function exampleToUpperSpecial():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toUpperSpecial(stdgo.unicode.Unicode.turkishCase, ("örnek iş" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1212>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString
```



ToValidUTF8 returns a copy of the string s with each run of invalid UTF\-8 byte sequences
replaced by the replacement string, which may be empty.  

### exampleToValidUTF8


<details><summary></summary>
<p>


```haxe
function exampleToValidUTF8():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.toValidUTF8(("abc" : stdgo.GoString), ("�" : stdgo.GoString))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.toValidUTF8(stdgo.Go.str("a", 255, "b", 192, 175, "c", 255)?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.toValidUTF8(stdgo.Go.str(237, 160, 128)?.__copy__(), ("abc" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1233>)


## function trim


```haxe
function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```



Trim returns a slice of the string s with all leading and
trailing Unicode code points contained in cutset removed.  

### exampleTrim


<details><summary></summary>
<p>


```haxe
function exampleTrim():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trim(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), ("!¡" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1416>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```



TrimFunc returns a slice of the string s with all leading
and trailing Unicode code points c satisfying f\(c\) removed.  

### exampleTrimFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trimFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), function(_r:stdgo.StdGoTypes.GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1346>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```



TrimLeft returns a slice of the string s with all leading
Unicode code points contained in cutset removed.  


To remove a prefix, use TrimPrefix instead.  

### exampleTrimLeft


<details><summary></summary>
<p>


```haxe
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trimLeft(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), ("!¡" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1437>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```



TrimLeftFunc returns a slice of the string s with all leading
Unicode code points c satisfying f\(c\) removed.  

### exampleTrimLeftFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trimLeftFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), function(_r:stdgo.StdGoTypes.GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1321>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString
```



TrimPrefix returns s without the provided leading prefix string.
If s doesn't start with prefix, s is returned unchanged.  

### exampleTrimPrefix


<details><summary></summary>
<p>


```haxe
function exampleTrimPrefix():Void {
        var _s:stdgo.GoString = ("¡¡¡Hello, Gophers!!!" : stdgo.GoString);
        _s = stdgo.strings.Strings.trimPrefix(_s?.__copy__(), ("¡¡¡Hello, " : stdgo.GoString))?.__copy__();
        _s = stdgo.strings.Strings.trimPrefix(_s?.__copy__(), ("¡¡¡Howdy, " : stdgo.GoString))?.__copy__();
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1568>)


## function trimRight


```haxe
function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```



TrimRight returns a slice of the string s, with all trailing
Unicode code points contained in cutset removed.  


To remove a suffix, use TrimSuffix instead.  

### exampleTrimRight


<details><summary></summary>
<p>


```haxe
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trimRight(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), ("!¡" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1490>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```



TrimRightFunc returns a slice of the string s with all trailing
Unicode code points c satisfying f\(c\) removed.  

### exampleTrimRightFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trimRightFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), function(_r:stdgo.StdGoTypes.GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1332>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.GoString):stdgo.GoString
```



TrimSpace returns a slice of the string s, with all leading
and trailing white space removed, as defined by Unicode.  

### exampleTrimSpace


<details><summary></summary>
<p>


```haxe
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.trimSpace((" \t\n Hello, Gophers \n\t\r\n" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1541>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString
```



TrimSuffix returns s without the provided trailing suffix string.
If s doesn't end with suffix, s is returned unchanged.  

### exampleTrimSuffix


<details><summary></summary>
<p>


```haxe
function exampleTrimSuffix():Void {
        var _s:stdgo.GoString = ("¡¡¡Hello, Gophers!!!" : stdgo.GoString);
        _s = stdgo.strings.Strings.trimSuffix(_s?.__copy__(), (", Gophers!!!" : stdgo.GoString))?.__copy__();
        _s = stdgo.strings.Strings.trimSuffix(_s?.__copy__(), (", Marmots!!!" : stdgo.GoString))?.__copy__();
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1578>)


# Classes


```haxe
import stdgo.strings.*
```


## class Builder



A Builder is used to efficiently build a string using Write methods.
It minimizes memory copying. The zero value is ready to use.
Do not copy a non\-zero Builder.  

```haxe
var _addr:stdgo.Ref<stdgo.strings.Builder>
```


```haxe
var _buf:stdgo.Slice<stdgo.GoUInt8>
```


### Builder function new


```haxe
function new(?_addr:stdgo.Ref<stdgo.strings.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Strings.hx#L70>)


### Builder function \_copyCheck


```haxe
function _copyCheck():Void
```


[\(view code\)](<./Strings.hx#L2018>)


### Builder function \_grow


```haxe
function _grow( _n:stdgo.GoInt):Void
```



grow copies the buffer to a new, larger buffer so that there are at least n
bytes of capacity beyond len\(b.buf\).  

[\(view code\)](<./Strings.hx#L1976>)


### Builder function cap


```haxe
function cap():stdgo.GoInt
```



Cap returns the capacity of the builder's underlying byte slice. It is the
total space allocated for the string being built and includes any bytes
already written.  

[\(view code\)](<./Strings.hx#L1997>)


### Builder function grow


```haxe
function grow( _n:stdgo.GoInt):Void
```



Grow grows b's capacity, if necessary, to guarantee space for
another n bytes. After Grow\(n\), at least n bytes can be written to b
without another allocation. If n is negative, Grow panics.  

[\(view code\)](<./Strings.hx#L1961>)


### Builder function len


```haxe
function len():stdgo.GoInt
```



Len returns the number of accumulated bytes; b.Len\(\) == len\(b.String\(\)\).  

[\(view code\)](<./Strings.hx#L2005>)


### Builder function reset


```haxe
function reset():Void
```



Reset resets the Builder to be empty.  

[\(view code\)](<./Strings.hx#L1986>)


### Builder function string


```haxe
function string():stdgo.GoString
```



String returns the accumulated string.  

[\(view code\)](<./Strings.hx#L2013>)


### Builder function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Write appends the contents of p to b's buffer.
Write always returns len\(p\), nil.  

[\(view code\)](<./Strings.hx#L1949>)


### Builder function writeByte


```haxe
function writeByte( _c:stdgo.GoByte):stdgo.Error
```



WriteByte appends the byte c to b's buffer.
The returned error is always nil.  

[\(view code\)](<./Strings.hx#L1938>)


### Builder function writeRune


```haxe
function writeRune( _r:stdgo.GoRune):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



WriteRune appends the UTF\-8 encoding of Unicode code point r to b's buffer.
It returns the length of r and a nil error.  

[\(view code\)](<./Strings.hx#L1926>)


### Builder function writeString


```haxe
function writeString( _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



WriteString appends the contents of s to b's buffer.
It returns the length of s and a nil error.  

[\(view code\)](<./Strings.hx#L1915>)


## class Reader



A Reader implements the io.Reader, io.ReaderAt, io.ByteReader, io.ByteScanner,
io.RuneReader, io.RuneScanner, io.Seeker, and io.WriterTo interfaces by reading
from a string.
The zero value for Reader operates like a Reader of an empty string.  

```haxe
var _i:stdgo.GoInt64
```


```haxe
var _prevRune:stdgo.GoInt
```


```haxe
var _s:stdgo.GoString
```


### Reader function new


```haxe
function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt64, ?_prevRune:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Strings.hx#L91>)


### Reader function len


```haxe
function len():stdgo.GoInt
```



Len returns the number of bytes of the unread portion of the
string.  

[\(view code\)](<./Strings.hx#L2271>)


### Reader function read


```haxe
function read( _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Read implements the io.Reader interface.  

[\(view code\)](<./Strings.hx#L2244>)


### Reader function readAt


```haxe
function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



ReadAt implements the io.ReaderAt interface.  

[\(view code\)](<./Strings.hx#L2225>)


### Reader function readByte


```haxe
function readByte():{
	_1:stdgo.Error;
	_0:stdgo.GoByte;
}
```



ReadByte implements the io.ByteReader interface.  

[\(view code\)](<./Strings.hx#L2211>)


### Reader function readRune


```haxe
function readRune():{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```



ReadRune implements the io.RuneReader interface.  

[\(view code\)](<./Strings.hx#L2171>)


### Reader function reset


```haxe
function reset( _s:stdgo.GoString):Void
```



Reset resets the Reader to be reading from s.  

[\(view code\)](<./Strings.hx#L2093>)


### Reader function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



Seek implements the io.Seeker interface.  

[\(view code\)](<./Strings.hx#L2129>)


### Reader function size


```haxe
function size():stdgo.GoInt64
```



Size returns the original length of the underlying string.
Size is the number of bytes available for reading via ReadAt.
The returned value is always the same and is not affected by calls
to any other method.  

[\(view code\)](<./Strings.hx#L2262>)


### Reader function unreadByte


```haxe
function unreadByte():stdgo.Error
```



UnreadByte implements the io.ByteScanner interface.  

[\(view code\)](<./Strings.hx#L2198>)


### Reader function unreadRune


```haxe
function unreadRune():stdgo.Error
```



UnreadRune implements the io.RuneScanner interface.  

[\(view code\)](<./Strings.hx#L2155>)


### Reader function writeTo


```haxe
function writeTo( _w:stdgo.io.Writer):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



WriteTo implements the io.WriterTo interface.  

[\(view code\)](<./Strings.hx#L2106>)


## class Replacer



Replacer replaces a list of strings with replacements.
It is safe for concurrent use by multiple goroutines.  

```haxe
var _oldnew:stdgo.Slice<stdgo.GoString>
```


```haxe
var _once:stdgo.sync.Once
```


```haxe
var _r:stdgo.strings.T_replacer
```


### Replacer function new


```haxe
function new(?_once:stdgo.sync.Once, ?_r:Null<stdgo.strings.T_replacer>, ?_oldnew:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Strings.hx#L111>)


### Replacer function \_build


```haxe
function _build():stdgo.strings.T_replacer
```


[\(view code\)](<./Strings.hx#L2327>)


### Replacer function \_buildOnce


```haxe
function _buildOnce():Void
```


[\(view code\)](<./Strings.hx#L2375>)


### Replacer function printTrie


```haxe
function printTrie():stdgo.GoString
```


[\(view code\)](<./Strings.hx#L2381>)


### Replacer function replace


```haxe
function replace( _s:stdgo.GoString):stdgo.GoString
```



Replace returns a copy of s with all replacements performed.  

[\(view code\)](<./Strings.hx#L2321>)


### Replacer function replacer


```haxe
function replacer():stdgo.AnyInterface
```


[\(view code\)](<./Strings.hx#L2388>)


### Replacer function writeString


```haxe
function writeString( _w:stdgo.io.Writer, _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



WriteString writes s to w with all replacements performed.  

[\(view code\)](<./Strings.hx#L2311>)


## class T\_fieldsFunc\_1\_\_\_localname\_\_\_span



A span is used to record a slice of s of the form s\[start:end\].
The start index is inclusive and the end index is exclusive.  

```haxe
var _end:stdgo.GoInt
```


```haxe
var _start:stdgo.GoInt
```


### T\_fieldsFunc\_1\_\_\_localname\_\_\_span function new


```haxe
function new(?_start:Null<stdgo.GoInt>, ?_end:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Strings.hx#L930>)


# Typedefs


```haxe
import stdgo.strings.*
```


## typedef T\_appendSliceWriter


```haxe
typedef T_appendSliceWriter = stdgo.Slice<stdgo.GoUInt8>;
```


## typedef T\_asciiSet


```haxe
typedef T_asciiSet = stdgo.GoArray<stdgo.GoUInt32>;
```



asciiSet is a 32\-byte value, where each bit represents the presence of a
given ASCII character in the set. The 128\-bits of the lower 16 bytes,
starting with the least\-significant bit of the lowest word to the
most\-significant bit of the highest word, map to the full range of all
128 ASCII characters. The 128\-bits of the upper 16 bytes will be zeroed,
ensuring that any non\-ASCII character will be reported as not in the set.
This allocates a total of 32 bytes even though the upper half
is unused to avoid bounds checks in asciiSet.contains.  

## typedef T\_byteReplacer


```haxe
typedef T_byteReplacer = stdgo.GoArray<stdgo.GoUInt8>;
```



byteReplacer is the implementation that's used when all the "old"
and "new" values are single ASCII bytes.
The array contains replacement bytes indexed by old byte.  

## typedef T\_replacer


```haxe
typedef T_replacer = {
	public function writeString(_w:stdgo.io.Writer, _s:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};
	public function replace(_s:stdgo.GoString):stdgo.GoString;
};
```



replacer is the interface that a replacement algorithm needs to implement.  

