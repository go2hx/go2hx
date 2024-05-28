# Module: `stdgo._internal.strings`

[(view library index)](../../stdgo.md)


# Overview



# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>`](<#function-_explode>)

- [`function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>`](<#function-_gensplit>)

- [`function _getStringWriter(_w:stdgo._internal.io.Writer):stdgo._internal.io.StringWriter`](<#function-_getstringwriter>)

- [`function _indexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt`](<#function-_indexfunc>)

- [`function _isSeparator(_r:stdgo.GoRune):Bool`](<#function-_isseparator>)

- [`function _lastIndexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt`](<#function-_lastindexfunc>)

- [`function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt`](<#function-_longestcommonsuffix>)

- [`function _makeASCIISet(_chars:stdgo.GoString):{
	_1:Bool;
	_0:stdgo._internal.strings.T_asciiSet;
}`](<#function-_makeasciiset>)

- [`function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.T_genericReplacer>`](<#function-_makegenericreplacer>)

- [`function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.T_singleStringReplacer>`](<#function-_makesinglestringreplacer>)

- [`function _makeStringFinder(_pattern:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.T_stringFinder>`](<#function-_makestringfinder>)

- [`function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt`](<#function-_max>)

- [`function _noescape(_p:stdgo._internal.unsafe.UnsafePointer):stdgo._internal.unsafe.UnsafePointer`](<#function-_noescape>)

- [`function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.T_asciiSet>):stdgo.GoString`](<#function-_trimleftascii>)

- [`function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString`](<#function-_trimleftbyte>)

- [`function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString`](<#function-_trimleftunicode>)

- [`function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.T_asciiSet>):stdgo.GoString`](<#function-_trimrightascii>)

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

- [`function map_(_mapping:(), _s:stdgo.GoString):stdgo.GoString`](<#function-map_>)

- [`function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Reader>`](<#function-newreader>)

- [`function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.Replacer>`](<#function-newreplacer>)

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

- [`function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString`](<#function-tolowerspecial>)

- [`function toTitle(_s:stdgo.GoString):stdgo.GoString`](<#function-totitle>)

- [`function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString`](<#function-totitlespecial>)

- [`function toUpper(_s:stdgo.GoString):stdgo.GoString`](<#function-toupper>)

- [`function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString`](<#function-toupperspecial>)

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

  - [`function new(?_addr:stdgo.Ref<stdgo._internal.strings.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>):Void`](<#builder-function-new>)

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

  - [`function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt64, ?_prevRune:stdgo.GoInt):Void`](<#reader-function-new>)

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

  - [`function writeTo( _w:stdgo._internal.io.Writer):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#reader-function-writeto>)

- [class Replacer](<#class-replacer>)

  - [`function new(?_once:stdgo._internal.sync.Once, ?_r:Null<stdgo._internal.strings.T_replacer>, ?_oldnew:stdgo.Slice<stdgo.GoString>):Void`](<#replacer-function-new>)

  - [`function _build():stdgo._internal.strings.T_replacer`](<#replacer-function-_build>)

  - [`function _buildOnce():Void`](<#replacer-function-_buildonce>)

  - [`function printTrie():stdgo.GoString`](<#replacer-function-printtrie>)

  - [`function replace( _s:stdgo.GoString):stdgo.GoString`](<#replacer-function-replace>)

  - [`function replacer():stdgo.AnyInterface`](<#replacer-function-replacer>)

  - [`function writeString( _w:stdgo._internal.io.Writer, _s:stdgo.GoString):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#replacer-function-writestring>)

- [class T\_fieldsFunc\_\_\_localname\_\_\_span\_9921](<#class-t_fieldsfunclocalnamespan_9921>)

  - [`function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt):Void`](<#t_fieldsfunclocalnamespan_9921-function-new>)

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
import stdgo._internal.strings.Strings
```


```haxe
final _countCutOff:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final _maxInt:stdgo.GoInt = ((((2147483647u32 : stdgo.GoUInt)) : stdgo.GoInt))
```


# Variables


```haxe
import stdgo._internal.strings.Strings
```


```haxe
var _asciiSpace:stdgo.GoArray<stdgo.GoUInt8>
```


# Functions


```haxe
import stdgo._internal.strings.Strings
```


## function \_explode


```haxe
function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Strings.hx#L284>)


## function \_genSplit


```haxe
function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Strings.hx#L494>)


## function \_getStringWriter


```haxe
function _getStringWriter(_w:stdgo._internal.io.Writer):stdgo._internal.io.StringWriter
```


[\(view code\)](<./Strings.hx#L222>)


## function \_indexFunc


```haxe
function _indexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L927>)


## function \_isSeparator


```haxe
function _isSeparator(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Strings.hx#L872>)


## function \_lastIndexFunc


```haxe
function _lastIndexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L935>)


## function \_longestCommonSuffix


```haxe
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L269>)


## function \_makeASCIISet


```haxe
function _makeASCIISet(_chars:stdgo.GoString):{
	_1:Bool;
	_0:stdgo._internal.strings.T_asciiSet;
}
```


[\(view code\)](<./Strings.hx#L948>)


## function \_makeGenericReplacer


```haxe
function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.T_genericReplacer>
```


[\(view code\)](<./Strings.hx#L187>)


## function \_makeSingleStringReplacer


```haxe
function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.T_singleStringReplacer>
```


[\(view code\)](<./Strings.hx#L233>)


## function \_makeStringFinder


```haxe
function _makeStringFinder(_pattern:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.T_stringFinder>
```


[\(view code\)](<./Strings.hx#L236>)


## function \_max


```haxe
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L278>)


## function \_noescape


```haxe
function _noescape(_p:stdgo._internal.unsafe.UnsafePointer):stdgo._internal.unsafe.UnsafePointer
```


[\(view code\)](<./Strings.hx#L156>)


## function \_trimLeftASCII


```haxe
function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.T_asciiSet>):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L998>)


## function \_trimLeftByte


```haxe
function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L992>)


## function \_trimLeftUnicode


```haxe
function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1007>)


## function \_trimRightASCII


```haxe
function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.T_asciiSet>):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1045>)


## function \_trimRightByte


```haxe
function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1039>)


## function \_trimRightUnicode


```haxe
function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1054>)


## function clone


```haxe
function clone(_s:stdgo.GoString):stdgo.GoString
```


### exampleClone


<details><summary></summary>
<p>


```haxe
function exampleClone():Void {
        var _s:stdgo.GoString = ("abc" : stdgo.GoString);
        var _clone:stdgo.GoString = stdgo._internal.strings.Strings.clone(_s?.__copy__())?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s == (_clone)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unsafe.Unsafe.stringData(_s?.__copy__()) == (stdgo._internal.unsafe.Unsafe.stringData(_clone?.__copy__()))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L160>)


## function compare


```haxe
function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


### exampleCompare


<details><summary></summary>
<p>


```haxe
function exampleCompare():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.compare(("a" : stdgo.GoString), ("b" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.compare(("a" : stdgo.GoString), ("a" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.compare(("b" : stdgo.GoString), ("a" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L161>)


## function contains


```haxe
function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool
```


### exampleContains


<details><summary></summary>
<p>


```haxe
function exampleContains():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.contains(("seafood" : stdgo.GoString), ("foo" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.contains(("seafood" : stdgo.GoString), ("bar" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.contains(("seafood" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.contains(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L320>)


## function containsAny


```haxe
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool
```


### exampleContainsAny


<details><summary></summary>
<p>


```haxe
function exampleContainsAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(("team" : stdgo.GoString), ("i" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(("fail" : stdgo.GoString), ("ui" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(("ure" : stdgo.GoString), ("ui" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(("failure" : stdgo.GoString), ("ui" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(("foo" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L323>)


## function containsFunc


```haxe
function containsFunc(_s:stdgo.GoString, _f:()):Bool
```


[\(view code\)](<./Strings.hx#L329>)


## function containsRune


```haxe
function containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool
```


### exampleContainsRune


<details><summary></summary>
<p>


```haxe
function exampleContainsRune():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsRune(("aardvark" : stdgo.GoString), (97 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsRune(("timeout" : stdgo.GoString), (97 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L326>)


## function count


```haxe
function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


### exampleCount


<details><summary></summary>
<p>


```haxe
function exampleCount():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.count(("cheese" : stdgo.GoString), ("e" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.count(("five" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L303>)


## function cut


```haxe
function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}
```


### exampleCut


<details><summary></summary>
<p>


```haxe
function exampleCut():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.strings.Strings.cut(_s?.__copy__(), _sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo._internal.fmt.Fmt.printf(("Cut(%q, %q) = %q, %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("Badger" : stdgo.GoString));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1296>)


## function cutPrefix


```haxe
function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoString;
}
```


### exampleCutPrefix


<details><summary></summary>
<p>


```haxe
function exampleCutPrefix():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.strings.Strings.cutPrefix(_s?.__copy__(), _sep?.__copy__()), _after:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("CutPrefix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1306>)


## function cutSuffix


```haxe
function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoString;
}
```


### exampleCutSuffix


<details><summary></summary>
<p>


```haxe
function exampleCutSuffix():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.strings.Strings.cutSuffix(_s?.__copy__(), _sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("CutSuffix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1313>)


## function dumpTables


```haxe
function dumpTables(_pattern:stdgo.GoString):{
	_1:stdgo.Slice<stdgo.GoInt>;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Strings.hx#L173>)


## function equalFold


```haxe
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool
```


### exampleEqualFold


<details><summary></summary>
<p>


```haxe
function exampleEqualFold():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.equalFold(("Go" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.equalFold(("AB" : stdgo.GoString), ("ab" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.equalFold(("ß" : stdgo.GoString), ("ss" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1144>)


## function fields


```haxe
function fields(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


### exampleFields


<details><summary></summary>
<p>


```haxe
function exampleFields():Void {
        stdgo._internal.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.fields(("  foo bar  baz   " : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L534>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.GoString, _f:()):stdgo.Slice<stdgo.GoString>
```


### exampleFieldsFunc


<details><summary></summary>
<p>


```haxe
function exampleFieldsFunc():Void {
        var _f:stdgo.GoInt32 -> Bool = function(_c:stdgo.GoRune):Bool {
            return (!stdgo._internal.unicode.Unicode.isLetter(_c) && !stdgo._internal.unicode.Unicode.isNumber(_c) : Bool);
        };
        stdgo._internal.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.fieldsFunc(("  foo1;bar2,baz3..." : stdgo.GoString), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L589>)


## function hasPrefix


```haxe
function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool
```


### exampleHasPrefix


<details><summary></summary>
<p>


```haxe
function exampleHasPrefix():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString), ("C" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L645>)


## function hasSuffix


```haxe
function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool
```


### exampleHasSuffix


<details><summary></summary>
<p>


```haxe
function exampleHasSuffix():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), ("O" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), ("Ami" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L648>)


## function index


```haxe
function index(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


### exampleIndex


<details><summary></summary>
<p>


```haxe
function exampleIndex():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.index(("chicken" : stdgo.GoString), ("ken" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.index(("chicken" : stdgo.GoString), ("dmr" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1223>)


## function indexAny


```haxe
function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt
```


### exampleIndexAny


<details><summary></summary>
<p>


```haxe
function exampleIndexAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexAny(("chicken" : stdgo.GoString), ("aeiouy" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexAny(("crwth" : stdgo.GoString), ("aeiouy" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L390>)


## function indexByte


```haxe
function indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```


### exampleIndexByte


<details><summary></summary>
<p>


```haxe
function exampleIndexByte():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexByte(("golang" : stdgo.GoString), (103 : stdgo.GoUInt8))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexByte(("gophers" : stdgo.GoString), (104 : stdgo.GoUInt8))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexByte(("golang" : stdgo.GoString), (120 : stdgo.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L371>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt
```


### exampleIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleIndexFunc():Void {
        var _f:stdgo.GoInt32 -> Bool = function(_c:stdgo.GoRune):Bool {
            return stdgo._internal.unicode.Unicode.is_(stdgo._internal.unicode.Unicode.han, _c);
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexFunc(("Hello, 世界" : stdgo.GoString), _f)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexFunc(("Hello, world" : stdgo.GoString), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L921>)


## function indexRune


```haxe
function indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt
```


### exampleIndexRune


<details><summary></summary>
<p>


```haxe
function exampleIndexRune():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexRune(("chicken" : stdgo.GoString), (107 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexRune(("chicken" : stdgo.GoString), (100 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L374>)


## function join


```haxe
function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString
```


### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
        var _s = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("foo" : stdgo.GoString), ("bar" : stdgo.GoString), ("baz" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.join(_s, (", " : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L614>)


## function lastIndex


```haxe
function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


### exampleLastIndex


<details><summary></summary>
<p>


```haxe
function exampleLastIndex():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.index(("go gopher" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndex(("go gopher" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndex(("go gopher" : stdgo.GoString), ("rodent" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L332>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt
```


### exampleLastIndexAny


<details><summary></summary>
<p>


```haxe
function exampleLastIndexAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString), ("rodent" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString), ("fail" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L424>)


## function lastIndexByte


```haxe
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```


### exampleLastIndexByte


<details><summary></summary>
<p>


```haxe
function exampleLastIndexByte():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString), (108 : stdgo.GoUInt8))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString), (111 : stdgo.GoUInt8))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString), (120 : stdgo.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L483>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt
```


### exampleLastIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleLastIndexFunc():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexFunc(("go 123" : stdgo.GoString), stdgo._internal.unicode.Unicode.isNumber)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexFunc(("123 go" : stdgo.GoString), stdgo._internal.unicode.Unicode.isNumber)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexFunc(("go" : stdgo.GoString), stdgo._internal.unicode.Unicode.isNumber)));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L924>)


## function map\_


```haxe
function map_(_mapping:(), _s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L651>)


## function newReader


```haxe
function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Reader>
```


[\(view code\)](<./Strings.hx#L177>)


## function newReplacer


```haxe
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.Replacer>
```


### exampleNewReplacer


<details><summary></summary>
<p>


```haxe
function exampleNewReplacer():Void {
        var _r = stdgo._internal.strings.Strings.newReplacer(("<" : stdgo.GoString), ("&lt;" : stdgo.GoString), (">" : stdgo.GoString), ("&gt;" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_r.replace(("This is <b>HTML</b>!" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L180>)


## function repeat


```haxe
function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString
```


### exampleRepeat


<details><summary></summary>
<p>


```haxe
function exampleRepeat():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("ba" : stdgo.GoString) + stdgo._internal.strings.Strings.repeat(("na" : stdgo.GoString), (2 : stdgo.GoInt))?.__copy__() : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L694>)


## function replace


```haxe
function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString
```


### exampleReplace


<details><summary></summary>
<p>


```haxe
function exampleReplace():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.replace(("oink oink oink" : stdgo.GoString), ("k" : stdgo.GoString), ("ky" : stdgo.GoString), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.replace(("oink oink oink" : stdgo.GoString), ("oink" : stdgo.GoString), ("moo" : stdgo.GoString), (-1 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1106>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):stdgo.GoString
```


### exampleReplaceAll


<details><summary></summary>
<p>


```haxe
function exampleReplaceAll():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.replaceAll(("oink oink oink" : stdgo.GoString), ("oink" : stdgo.GoString), ("moo" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1141>)


## function split


```haxe
function split(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


### exampleSplit


<details><summary></summary>
<p>


```haxe
function exampleSplit():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.split(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.split(("a man a plan a canal panama" : stdgo.GoString), ("a " : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.split((" xyz " : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.split(stdgo.Go.str()?.__copy__(), ("Bernardo O\'Higgins" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L528>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


### exampleSplitAfter


<details><summary></summary>
<p>


```haxe
function exampleSplitAfter():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.splitAfter(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L531>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


### exampleSplitAfterN


<details><summary></summary>
<p>


```haxe
function exampleSplitAfterN():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.splitAfterN(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString), (2 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L525>)


## function splitN


```haxe
function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


### exampleSplitN


<details><summary></summary>
<p>


```haxe
function exampleSplitN():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.splitN(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString), (2 : stdgo.GoInt))));
        var _z = stdgo._internal.strings.Strings.splitN(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString), (0 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.printf(("%q (nil = %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z == null));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L522>)


## function stringFind


```haxe
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L170>)


## function title


```haxe
function title(_s:stdgo.GoString):stdgo.GoString
```


### exampleTitle


<details><summary></summary>
<p>


```haxe
function exampleTitle():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.title(("her royal highness" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.title(("loud noises" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.title(("хлеб" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L890>)


## function toLower


```haxe
function toLower(_s:stdgo.GoString):stdgo.GoString
```


### exampleToLower


<details><summary></summary>
<p>


```haxe
function exampleToLower():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toLower(("Gopher" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L776>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


### exampleToLowerSpecial


<details><summary></summary>
<p>


```haxe
function exampleToLowerSpecial():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toLowerSpecial(stdgo._internal.unicode.Unicode.turkishCase, ("Önnek İş" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L822>)


## function toTitle


```haxe
function toTitle(_s:stdgo.GoString):stdgo.GoString
```


### exampleToTitle


<details><summary></summary>
<p>


```haxe
function exampleToTitle():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toTitle(("her royal highness" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toTitle(("loud noises" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toTitle(("хлеб" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L816>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


### exampleToTitleSpecial


<details><summary></summary>
<p>


```haxe
function exampleToTitleSpecial():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toTitleSpecial(stdgo._internal.unicode.Unicode.turkishCase, ("dünyanın ilk borsa yapısı Aizonai kabul edilir" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L825>)


## function toUpper


```haxe
function toUpper(_s:stdgo.GoString):stdgo.GoString
```


### exampleToUpper


<details><summary></summary>
<p>


```haxe
function exampleToUpper():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toUpper(("Gopher" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L736>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


### exampleToUpperSpecial


<details><summary></summary>
<p>


```haxe
function exampleToUpperSpecial():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toUpperSpecial(stdgo._internal.unicode.Unicode.turkishCase, ("örnek iş" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L819>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString
```


### exampleToValidUTF8


<details><summary></summary>
<p>


```haxe
function exampleToValidUTF8():Void {
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.toValidUTF8(("abc" : stdgo.GoString), ("�" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.toValidUTF8(stdgo.Go.str("a", 255, "b", 192, 175, "c", 255)?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.toValidUTF8(stdgo.Go.str(237, 160, 128)?.__copy__(), ("abc" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L828>)


## function trim


```haxe
function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


### exampleTrim


<details><summary></summary>
<p>


```haxe
function exampleTrim():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trim(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), ("!¡" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L962>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


### exampleTrimFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimFunc():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), function(_r:stdgo.GoRune):Bool {
            return (!stdgo._internal.unicode.Unicode.isLetter(_r) && !stdgo._internal.unicode.Unicode.isNumber(_r) : Bool);
        })));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L918>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


### exampleTrimLeft


<details><summary></summary>
<p>


```haxe
function exampleTrimLeft():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimLeft(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), ("!¡" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L977>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


### exampleTrimLeftFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimLeftFunc():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimLeftFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), function(_r:stdgo.GoRune):Bool {
            return (!stdgo._internal.unicode.Unicode.isLetter(_r) && !stdgo._internal.unicode.Unicode.isNumber(_r) : Bool);
        })));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L901>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString
```


### exampleTrimPrefix


<details><summary></summary>
<p>


```haxe
function exampleTrimPrefix():Void {
        var _s:stdgo.GoString = ("¡¡¡Hello, Gophers!!!" : stdgo.GoString);
        _s = stdgo._internal.strings.Strings.trimPrefix(_s?.__copy__(), ("¡¡¡Hello, " : stdgo.GoString))?.__copy__();
        _s = stdgo._internal.strings.Strings.trimPrefix(_s?.__copy__(), ("¡¡¡Howdy, " : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1094>)


## function trimRight


```haxe
function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


### exampleTrimRight


<details><summary></summary>
<p>


```haxe
function exampleTrimRight():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimRight(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), ("!¡" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1024>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


### exampleTrimRightFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimRightFunc():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimRightFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), function(_r:stdgo.GoRune):Bool {
            return (!stdgo._internal.unicode.Unicode.isLetter(_r) && !stdgo._internal.unicode.Unicode.isNumber(_r) : Bool);
        })));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L908>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.GoString):stdgo.GoString
```


### exampleTrimSpace


<details><summary></summary>
<p>


```haxe
function exampleTrimSpace():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimSpace((" \t\n Hello, Gophers \n\t\r\n" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1071>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString
```


### exampleTrimSuffix


<details><summary></summary>
<p>


```haxe
function exampleTrimSuffix():Void {
        var _s:stdgo.GoString = ("¡¡¡Hello, Gophers!!!" : stdgo.GoString);
        _s = stdgo._internal.strings.Strings.trimSuffix(_s?.__copy__(), (", Gophers!!!" : stdgo.GoString))?.__copy__();
        _s = stdgo._internal.strings.Strings.trimSuffix(_s?.__copy__(), (", Marmots!!!" : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strings.hx#L1100>)


# Classes


```haxe
import stdgo._internal.strings.*
```


## class Builder


```haxe
var _addr:stdgo.Ref<stdgo._internal.strings.Builder>
```


```haxe
var _buf:stdgo.Slice<stdgo.GoUInt8>
```


### Builder function new


```haxe
function new(?_addr:stdgo.Ref<stdgo._internal.strings.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Strings.hx#L36>)


### Builder function \_copyCheck


```haxe
function _copyCheck():Void
```


[\(view code\)](<./Strings.hx#L1421>)


### Builder function \_grow


```haxe
function _grow( _n:stdgo.GoInt):Void
```


[\(view code\)](<./Strings.hx#L1393>)


### Builder function cap


```haxe
function cap():stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L1406>)


### Builder function grow


```haxe
function grow( _n:stdgo.GoInt):Void
```


[\(view code\)](<./Strings.hx#L1382>)


### Builder function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L1411>)


### Builder function reset


```haxe
function reset():Void
```


[\(view code\)](<./Strings.hx#L1400>)


### Builder function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1416>)


### Builder function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Strings.hx#L1375>)


### Builder function writeByte


```haxe
function writeByte( _c:stdgo.GoByte):stdgo.Error
```


[\(view code\)](<./Strings.hx#L1368>)


### Builder function writeRune


```haxe
function writeRune( _r:stdgo.GoRune):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Strings.hx#L1360>)


### Builder function writeString


```haxe
function writeString( _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Strings.hx#L1353>)


## class Reader


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
function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt64, ?_prevRune:stdgo.GoInt):Void
```


[\(view code\)](<./Strings.hx#L49>)


### Reader function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L1600>)


### Reader function read


```haxe
function read( _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Strings.hx#L1583>)


### Reader function readAt


```haxe
function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Strings.hx#L1567>)


### Reader function readByte


```haxe
function readByte():{
	_1:stdgo.Error;
	_0:stdgo.GoByte;
}
```


[\(view code\)](<./Strings.hx#L1556>)


### Reader function readRune


```haxe
function readRune():{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Strings.hx#L1522>)


### Reader function reset


```haxe
function reset( _s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L1456>)


### Reader function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Strings.hx#L1486>)


### Reader function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Strings.hx#L1595>)


### Reader function unreadByte


```haxe
function unreadByte():stdgo.Error
```


[\(view code\)](<./Strings.hx#L1546>)


### Reader function unreadRune


```haxe
function unreadRune():stdgo.Error
```


[\(view code\)](<./Strings.hx#L1509>)


### Reader function writeTo


```haxe
function writeTo( _w:stdgo._internal.io.Writer):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Strings.hx#L1466>)


## class Replacer


```haxe
var _oldnew:stdgo.Slice<stdgo.GoString>
```


```haxe
var _once:stdgo._internal.sync.Once
```


```haxe
var _r:stdgo._internal.strings.T_replacer
```


### Replacer function new


```haxe
function new(?_once:stdgo._internal.sync.Once, ?_r:Null<stdgo._internal.strings.T_replacer>, ?_oldnew:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Strings.hx#L63>)


### Replacer function \_build


```haxe
function _build():stdgo._internal.strings.T_replacer
```


[\(view code\)](<./Strings.hx#L1644>)


### Replacer function \_buildOnce


```haxe
function _buildOnce():Void
```


[\(view code\)](<./Strings.hx#L1692>)


### Replacer function printTrie


```haxe
function printTrie():stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1698>)


### Replacer function replace


```haxe
function replace( _s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L1638>)


### Replacer function replacer


```haxe
function replacer():stdgo.AnyInterface
```


[\(view code\)](<./Strings.hx#L1705>)


### Replacer function writeString


```haxe
function writeString( _w:stdgo._internal.io.Writer, _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Strings.hx#L1631>)


## class T\_fieldsFunc\_\_\_localname\_\_\_span\_9921


```haxe
var _end:stdgo.GoInt
```


```haxe
var _start:stdgo.GoInt
```


### T\_fieldsFunc\_\_\_localname\_\_\_span\_9921 function new


```haxe
function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt):Void
```


[\(view code\)](<./Strings.hx#L580>)


# Typedefs


```haxe
import stdgo._internal.strings.*
```


## typedef T\_appendSliceWriter


```haxe
typedef T_appendSliceWriter = stdgo.Slice<stdgo.GoUInt8>;
```


## typedef T\_asciiSet


```haxe
typedef T_asciiSet = stdgo.GoArray<stdgo.GoUInt32>;
```


## typedef T\_byteReplacer


```haxe
typedef T_byteReplacer = stdgo.GoArray<stdgo.GoUInt8>;
```


## typedef T\_replacer


```haxe
typedef T_replacer = {
	public function writeString(_w:stdgo._internal.io.Writer, _s:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};
	public function replace(_s:stdgo.GoString):stdgo.GoString;
};
```


