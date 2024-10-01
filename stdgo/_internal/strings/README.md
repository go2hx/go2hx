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

- [`function _isSeparator(_r:stdgo.GoInt32):Bool`](<#function-_isseparator>)

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

- [`function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoString`](<#function-_trimleftbyte>)

- [`function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString`](<#function-_trimleftunicode>)

- [`function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.T_asciiSet>):stdgo.GoString`](<#function-_trimrightascii>)

- [`function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoString`](<#function-_trimrightbyte>)

- [`function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString`](<#function-_trimrightunicode>)

- [`function clone(_s:stdgo.GoString):stdgo.GoString`](<#function-clone>)

- [`function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt`](<#function-compare>)

- [`function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool`](<#function-contains>)

- [`function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool`](<#function-containsany>)

- [`function containsFunc(_s:stdgo.GoString, _f:()):Bool`](<#function-containsfunc>)

- [`function containsRune(_s:stdgo.GoString, _r:stdgo.GoInt32):Bool`](<#function-containsrune>)

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

- [`function indexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt`](<#function-indexbyte>)

- [`function indexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt`](<#function-indexfunc>)

- [`function indexRune(_s:stdgo.GoString, _r:stdgo.GoInt32):stdgo.GoInt`](<#function-indexrune>)

- [`function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString`](<#function-join>)

- [`function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt`](<#function-lastindex>)

- [`function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt`](<#function-lastindexany>)

- [`function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt`](<#function-lastindexbyte>)

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

- [class Reader](<#class-reader>)

  - [`function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt64, ?_prevRune:stdgo.GoInt):Void`](<#reader-function-new>)

- [class Replacer](<#class-replacer>)

  - [`function new(?_once:stdgo._internal.sync.Once, ?_r:Null<stdgo._internal.strings.T_replacer>, ?_oldnew:stdgo.Slice<stdgo.GoString>):Void`](<#replacer-function-new>)

- [class T\_byteStringReplacer](<#class-t_bytestringreplacer>)

  - [`function new(?_replacements:stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>, ?_toReplace:stdgo.Slice<stdgo.GoString>):Void`](<#t_bytestringreplacer-function-new>)

- [class T\_fieldsFunc\_\_\_localname\_\_\_span\_9921](<#class-t_fieldsfunclocalnamespan_9921>)

  - [`function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt):Void`](<#t_fieldsfunclocalnamespan_9921-function-new>)

- [class T\_genericReplacer](<#class-t_genericreplacer>)

  - [`function new(?_root:stdgo._internal.strings.T_trieNode, ?_tableSize:stdgo.GoInt, ?_mapping:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#t_genericreplacer-function-new>)

- [class T\_singleStringReplacer](<#class-t_singlestringreplacer>)

  - [`function new(?_finder:stdgo.Ref<stdgo._internal.strings.T_stringFinder>, ?_value:stdgo.GoString):Void`](<#t_singlestringreplacer-function-new>)

- [class T\_stringFinder](<#class-t_stringfinder>)

  - [`function new(?_pattern:stdgo.GoString, ?_badCharSkip:stdgo.GoArray<stdgo.GoInt>, ?_goodSuffixSkip:stdgo.Slice<stdgo.GoInt>):Void`](<#t_stringfinder-function-new>)

- [class T\_stringWriter](<#class-t_stringwriter>)

  - [`function new(?_w:Null<stdgo._internal.io.Writer>):Void`](<#t_stringwriter-function-new>)

- [class T\_trieNode](<#class-t_trienode>)

  - [`function new(?_value:stdgo.GoString, ?_priority:stdgo.GoInt, ?_prefix:stdgo.GoString, ?_next:stdgo.Ref<stdgo._internal.strings.T_trieNode>, ?_table:stdgo.Slice<stdgo.Ref<stdgo._internal.strings.T_trieNode>>):Void`](<#t_trienode-function-new>)

- [typedef T\_appendSliceWriter](<#typedef-t_appendslicewriter>)

- [typedef T\_asciiSet](<#typedef-t_asciiset>)

- [typedef T\_byteReplacer](<#typedef-t_bytereplacer>)

- [typedef T\_replacer](<#typedef-t_replacer>)

# Constants


```haxe
import stdgo._internal.strings.Strings_trimSuffix
```


```haxe
final _countCutOff:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final _maxInt:stdgo.GoInt = ((((2147483647u32 : stdgo.GoUInt)) : stdgo.GoInt))
```


# Variables


```haxe
import stdgo._internal.strings.Strings_trimSuffix
```


```haxe
var _asciiSpace:stdgo.GoArray<stdgo.GoUInt8>
```


# Functions


```haxe
import stdgo._internal.strings.Strings_trimSuffix
```


## function \_explode


```haxe
function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_genSplit


```haxe
function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_getStringWriter


```haxe
function _getStringWriter(_w:stdgo._internal.io.Writer):stdgo._internal.io.StringWriter
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_indexFunc


```haxe
function _indexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_isSeparator


```haxe
function _isSeparator(_r:stdgo.GoInt32):Bool
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_lastIndexFunc


```haxe
function _lastIndexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_longestCommonSuffix


```haxe
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_makeASCIISet


```haxe
function _makeASCIISet(_chars:stdgo.GoString):{
	_1:Bool;
	_0:stdgo._internal.strings.T_asciiSet;
}
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_makeGenericReplacer


```haxe
function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.T_genericReplacer>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_makeSingleStringReplacer


```haxe
function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.T_singleStringReplacer>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_makeStringFinder


```haxe
function _makeStringFinder(_pattern:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.T_stringFinder>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_max


```haxe
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_noescape


```haxe
function _noescape(_p:stdgo._internal.unsafe.UnsafePointer):stdgo._internal.unsafe.UnsafePointer
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_trimLeftASCII


```haxe
function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.T_asciiSet>):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_trimLeftByte


```haxe
function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_trimLeftUnicode


```haxe
function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_trimRightASCII


```haxe
function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.T_asciiSet>):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_trimRightByte


```haxe
function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function \_trimRightUnicode


```haxe
function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function clone


```haxe
function clone(_s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function compare


```haxe
function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function contains


```haxe
function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function containsAny


```haxe
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function containsFunc


```haxe
function containsFunc(_s:stdgo.GoString, _f:()):Bool
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function containsRune


```haxe
function containsRune(_s:stdgo.GoString, _r:stdgo.GoInt32):Bool
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function count


```haxe
function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function cut


```haxe
function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function cutPrefix


```haxe
function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function cutSuffix


```haxe
function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function dumpTables


```haxe
function dumpTables(_pattern:stdgo.GoString):{
	_1:stdgo.Slice<stdgo.GoInt>;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function equalFold


```haxe
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function fields


```haxe
function fields(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.GoString, _f:()):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function hasPrefix


```haxe
function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function hasSuffix


```haxe
function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function index


```haxe
function index(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function indexAny


```haxe
function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function indexByte


```haxe
function indexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function indexRune


```haxe
function indexRune(_s:stdgo.GoString, _r:stdgo.GoInt32):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function join


```haxe
function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function lastIndex


```haxe
function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function lastIndexByte


```haxe
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.GoString, _f:()):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function map\_


```haxe
function map_(_mapping:(), _s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function newReader


```haxe
function newReader(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Reader>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function newReplacer


```haxe
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.Replacer>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function repeat


```haxe
function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function replace


```haxe
function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function split


```haxe
function split(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function splitN


```haxe
function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function stringFind


```haxe
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function title


```haxe
function title(_s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function toLower


```haxe
function toLower(_s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function toTitle


```haxe
function toTitle(_s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function toUpper


```haxe
function toUpper(_s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function trim


```haxe
function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function trimRight


```haxe
function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.GoString, _f:()):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strings_trimSuffix.hx#L2>)


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


[\(view code\)](<./Strings_Builder.hx#L5>)


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


[\(view code\)](<./Strings_Reader.hx#L6>)


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


[\(view code\)](<./Strings_Replacer.hx#L6>)


## class T\_byteStringReplacer


```haxe
var _replacements:stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>
```


```haxe
var _toReplace:stdgo.Slice<stdgo.GoString>
```


### T\_byteStringReplacer function new


```haxe
function new(?_replacements:stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>, ?_toReplace:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Strings_T_byteStringReplacer.hx#L5>)


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


[\(view code\)](<./Strings_T_fieldsFunc___localname___span_9921.hx#L5>)


## class T\_genericReplacer


```haxe
var _mapping:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _root:stdgo._internal.strings.T_trieNode
```


```haxe
var _tableSize:stdgo.GoInt
```


### T\_genericReplacer function new


```haxe
function new(?_root:stdgo._internal.strings.T_trieNode, ?_tableSize:stdgo.GoInt, ?_mapping:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Strings_T_genericReplacer.hx#L6>)


## class T\_singleStringReplacer


```haxe
var _finder:stdgo.Ref<stdgo._internal.strings.T_stringFinder>
```


```haxe
var _value:stdgo.GoString
```


### T\_singleStringReplacer function new


```haxe
function new(?_finder:stdgo.Ref<stdgo._internal.strings.T_stringFinder>, ?_value:stdgo.GoString):Void
```


[\(view code\)](<./Strings_T_singleStringReplacer.hx#L5>)


## class T\_stringFinder


```haxe
var _badCharSkip:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var _goodSuffixSkip:stdgo.Slice<stdgo.GoInt>
```


```haxe
var _pattern:stdgo.GoString
```


### T\_stringFinder function new


```haxe
function new(?_pattern:stdgo.GoString, ?_badCharSkip:stdgo.GoArray<stdgo.GoInt>, ?_goodSuffixSkip:stdgo.Slice<stdgo.GoInt>):Void
```


[\(view code\)](<./Strings_T_stringFinder.hx#L6>)


## class T\_stringWriter


```haxe
var _w:stdgo._internal.io.Writer
```


### T\_stringWriter function new


```haxe
function new(?_w:Null<stdgo._internal.io.Writer>):Void
```


[\(view code\)](<./Strings_T_stringWriter.hx#L4>)


## class T\_trieNode


```haxe
var _next:stdgo.Ref<stdgo._internal.strings.T_trieNode>
```


```haxe
var _prefix:stdgo.GoString
```


```haxe
var _priority:stdgo.GoInt
```


```haxe
var _table:stdgo.Slice<stdgo.Ref<stdgo._internal.strings.T_trieNode>>
```


```haxe
var _value:stdgo.GoString
```


### T\_trieNode function new


```haxe
function new(?_value:stdgo.GoString, ?_priority:stdgo.GoInt, ?_prefix:stdgo.GoString, ?_next:stdgo.Ref<stdgo._internal.strings.T_trieNode>, ?_table:stdgo.Slice<stdgo.Ref<stdgo._internal.strings.T_trieNode>>):Void
```


[\(view code\)](<./Strings_T_trieNode.hx#L8>)


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


