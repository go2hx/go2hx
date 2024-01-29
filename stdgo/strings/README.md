# Module: `stdgo.strings`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):Void`](<#function-_explode>)

- [`function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):Void`](<#function-_gensplit>)

- [`function _getStringWriter(_w:stdgo._internal.io.Writer):Void`](<#function-_getstringwriter>)

- [`function _indexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):Void`](<#function-_indexfunc>)

- [`function _isSeparator(_r:stdgo.GoRune):Void`](<#function-_isseparator>)

- [`function _lastIndexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):Void`](<#function-_lastindexfunc>)

- [`function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):Void`](<#function-_longestcommonsuffix>)

- [`function _makeASCIISet(_chars:stdgo.GoString):Void`](<#function-_makeasciiset>)

- [`function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):Void`](<#function-_makegenericreplacer>)

- [`function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):Void`](<#function-_makesinglestringreplacer>)

- [`function _makeStringFinder(_pattern:stdgo.GoString):Void`](<#function-_makestringfinder>)

- [`function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_max>)

- [`function _noescape(_p:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-_noescape>)

- [`function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo.strings.T_asciiSet>):Void`](<#function-_trimleftascii>)

- [`function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void`](<#function-_trimleftbyte>)

- [`function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):Void`](<#function-_trimleftunicode>)

- [`function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo.strings.T_asciiSet>):Void`](<#function-_trimrightascii>)

- [`function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void`](<#function-_trimrightbyte>)

- [`function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):Void`](<#function-_trimrightunicode>)

- [`function clone(_s:stdgo.GoString):Void`](<#function-clone>)

- [`function compare(_a:stdgo.GoString, _b:stdgo.GoString):Void`](<#function-compare>)

- [`function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Void`](<#function-contains>)

- [`function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void`](<#function-containsany>)

- [`function containsFunc(_s:stdgo.GoString, _f:()):Void`](<#function-containsfunc>)

- [`function containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void`](<#function-containsrune>)

- [`function count(_s:stdgo.GoString, _substr:stdgo.GoString):Void`](<#function-count>)

- [`function cut(_s:stdgo.GoString, _sep:stdgo.GoString):Void`](<#function-cut>)

- [`function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Void`](<#function-cutprefix>)

- [`function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Void`](<#function-cutsuffix>)

- [`function dumpTables(_pattern:stdgo.GoString):Void`](<#function-dumptables>)

- [`function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Void`](<#function-equalfold>)

- [`function fields(_s:stdgo.GoString):Void`](<#function-fields>)

- [`function fieldsFunc(_s:stdgo.GoString, _f:()):Void`](<#function-fieldsfunc>)

- [`function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Void`](<#function-hasprefix>)

- [`function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Void`](<#function-hassuffix>)

- [`function index(_s:stdgo.GoString, _substr:stdgo.GoString):Void`](<#function-index>)

- [`function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void`](<#function-indexany>)

- [`function indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void`](<#function-indexbyte>)

- [`function indexFunc(_s:stdgo.GoString, _f:()):Void`](<#function-indexfunc>)

- [`function indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void`](<#function-indexrune>)

- [`function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):Void`](<#function-join>)

- [`function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):Void`](<#function-lastindex>)

- [`function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void`](<#function-lastindexany>)

- [`function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void`](<#function-lastindexbyte>)

- [`function lastIndexFunc(_s:stdgo.GoString, _f:()):Void`](<#function-lastindexfunc>)

- [`function map_(_mapping:(), _s:stdgo.GoString):Void`](<#function-map_>)

- [`function newReader(_s:stdgo.GoString):Void`](<#function-newreader>)

- [`function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):Void`](<#function-newreplacer>)

- [`function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):Void`](<#function-repeat>)

- [`function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):Void`](<#function-replace>)

- [`function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):Void`](<#function-replaceall>)

- [`function split(_s:stdgo.GoString, _sep:stdgo.GoString):Void`](<#function-split>)

- [`function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):Void`](<#function-splitafter>)

- [`function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):Void`](<#function-splitaftern>)

- [`function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):Void`](<#function-splitn>)

- [`function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):Void`](<#function-stringfind>)

- [`function title(_s:stdgo.GoString):Void`](<#function-title>)

- [`function toLower(_s:stdgo.GoString):Void`](<#function-tolower>)

- [`function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):Void`](<#function-tolowerspecial>)

- [`function toTitle(_s:stdgo.GoString):Void`](<#function-totitle>)

- [`function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):Void`](<#function-totitlespecial>)

- [`function toUpper(_s:stdgo.GoString):Void`](<#function-toupper>)

- [`function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):Void`](<#function-toupperspecial>)

- [`function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):Void`](<#function-tovalidutf8>)

- [`function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):Void`](<#function-trim>)

- [`function trimFunc(_s:stdgo.GoString, _f:()):Void`](<#function-trimfunc>)

- [`function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):Void`](<#function-trimleft>)

- [`function trimLeftFunc(_s:stdgo.GoString, _f:()):Void`](<#function-trimleftfunc>)

- [`function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Void`](<#function-trimprefix>)

- [`function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):Void`](<#function-trimright>)

- [`function trimRightFunc(_s:stdgo.GoString, _f:()):Void`](<#function-trimrightfunc>)

- [`function trimSpace(_s:stdgo.GoString):Void`](<#function-trimspace>)

- [`function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Void`](<#function-trimsuffix>)

- [typedef Builder](<#typedef-builder>)

- [typedef Builder\_asInterface](<#typedef-builder_asinterface>)

- [typedef Builder\_static\_extension](<#typedef-builder_static_extension>)

- [typedef Reader](<#typedef-reader>)

- [typedef Reader\_asInterface](<#typedef-reader_asinterface>)

- [typedef Reader\_static\_extension](<#typedef-reader_static_extension>)

- [typedef Replacer](<#typedef-replacer>)

- [typedef Replacer\_asInterface](<#typedef-replacer_asinterface>)

- [typedef Replacer\_static\_extension](<#typedef-replacer_static_extension>)

- [typedef T\_appendSliceWriter](<#typedef-t_appendslicewriter>)

- [typedef T\_appendSliceWriter\_asInterface](<#typedef-t_appendslicewriter_asinterface>)

- [typedef T\_appendSliceWriter\_static\_extension](<#typedef-t_appendslicewriter_static_extension>)

- [typedef T\_asciiSet](<#typedef-t_asciiset>)

- [typedef T\_asciiSet\_asInterface](<#typedef-t_asciiset_asinterface>)

- [typedef T\_asciiSet\_static\_extension](<#typedef-t_asciiset_static_extension>)

- [typedef T\_byteReplacer](<#typedef-t_bytereplacer>)

- [typedef T\_byteReplacer\_asInterface](<#typedef-t_bytereplacer_asinterface>)

- [typedef T\_byteReplacer\_static\_extension](<#typedef-t_bytereplacer_static_extension>)

- [typedef T\_byteStringReplacer](<#typedef-t_bytestringreplacer>)

- [typedef T\_byteStringReplacer\_asInterface](<#typedef-t_bytestringreplacer_asinterface>)

- [typedef T\_byteStringReplacer\_static\_extension](<#typedef-t_bytestringreplacer_static_extension>)

- [typedef T\_fieldsFunc\_1\_\_\_localname\_\_\_span](<#typedef-t_fieldsfunc_1localnamespan>)

- [typedef T\_genericReplacer](<#typedef-t_genericreplacer>)

- [typedef T\_genericReplacer\_asInterface](<#typedef-t_genericreplacer_asinterface>)

- [typedef T\_genericReplacer\_static\_extension](<#typedef-t_genericreplacer_static_extension>)

- [typedef T\_replacer](<#typedef-t_replacer>)

- [typedef T\_singleStringReplacer](<#typedef-t_singlestringreplacer>)

- [typedef T\_singleStringReplacer\_asInterface](<#typedef-t_singlestringreplacer_asinterface>)

- [typedef T\_singleStringReplacer\_static\_extension](<#typedef-t_singlestringreplacer_static_extension>)

- [typedef T\_stringFinder](<#typedef-t_stringfinder>)

- [typedef T\_stringFinder\_asInterface](<#typedef-t_stringfinder_asinterface>)

- [typedef T\_stringFinder\_static\_extension](<#typedef-t_stringfinder_static_extension>)

- [typedef T\_stringWriter](<#typedef-t_stringwriter>)

- [typedef T\_stringWriter\_asInterface](<#typedef-t_stringwriter_asinterface>)

- [typedef T\_stringWriter\_static\_extension](<#typedef-t_stringwriter_static_extension>)

- [typedef T\_trieNode](<#typedef-t_trienode>)

- [typedef T\_trieNode\_asInterface](<#typedef-t_trienode_asinterface>)

- [typedef T\_trieNode\_static\_extension](<#typedef-t_trienode_static_extension>)

# Variables


```haxe
import stdgo.strings.Strings
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _asciiSpace:Dynamic
```


```haxe
var _countCutOff:Dynamic
```


```haxe
var _maxInt:Dynamic
```


# Functions


```haxe
import stdgo.strings.Strings
```


## function \_explode


```haxe
function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Strings.hx#L32>)


## function \_genSplit


```haxe
function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Strings.hx#L44>)


## function \_getStringWriter


```haxe
function _getStringWriter(_w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Strings.hx#L27>)


## function \_indexFunc


```haxe
function _indexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):Void
```


[\(view code\)](<./Strings.hx#L71>)


## function \_isSeparator


```haxe
function _isSeparator(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Strings.hx#L64>)


## function \_lastIndexFunc


```haxe
function _lastIndexFunc(_s:stdgo.GoString, _f:(), _truth:Bool):Void
```


[\(view code\)](<./Strings.hx#L72>)


## function \_longestCommonSuffix


```haxe
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L30>)


## function \_makeASCIISet


```haxe
function _makeASCIISet(_chars:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L73>)


## function \_makeGenericReplacer


```haxe
function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Strings.hx#L26>)


## function \_makeSingleStringReplacer


```haxe
function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L28>)


## function \_makeStringFinder


```haxe
function _makeStringFinder(_pattern:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L29>)


## function \_max


```haxe
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Strings.hx#L31>)


## function \_noescape


```haxe
function _noescape(_p:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Strings.hx#L19>)


## function \_trimLeftASCII


```haxe
function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo.strings.T_asciiSet>):Void
```


[\(view code\)](<./Strings.hx#L77>)


## function \_trimLeftByte


```haxe
function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Strings.hx#L76>)


## function \_trimLeftUnicode


```haxe
function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L78>)


## function \_trimRightASCII


```haxe
function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo.strings.T_asciiSet>):Void
```


[\(view code\)](<./Strings.hx#L81>)


## function \_trimRightByte


```haxe
function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Strings.hx#L80>)


## function \_trimRightUnicode


```haxe
function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L82>)


## function clone


```haxe
function clone(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L20>)


## function compare


```haxe
function compare(_a:stdgo.GoString, _b:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L21>)


## function contains


```haxe
function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L34>)


## function containsAny


```haxe
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L35>)


## function containsFunc


```haxe
function containsFunc(_s:stdgo.GoString, _f:()):Void
```


[\(view code\)](<./Strings.hx#L37>)


## function containsRune


```haxe
function containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Strings.hx#L36>)


## function count


```haxe
function count(_s:stdgo.GoString, _substr:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L33>)


## function cut


```haxe
function cut(_s:stdgo.GoString, _sep:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L90>)


## function cutPrefix


```haxe
function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L91>)


## function cutSuffix


```haxe
function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L92>)


## function dumpTables


```haxe
function dumpTables(_pattern:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L23>)


## function equalFold


```haxe
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L88>)


## function fields


```haxe
function fields(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L49>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.GoString, _f:()):Void
```


[\(view code\)](<./Strings.hx#L51>)


## function hasPrefix


```haxe
function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L53>)


## function hasSuffix


```haxe
function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L54>)


## function index


```haxe
function index(_s:stdgo.GoString, _substr:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L89>)


## function indexAny


```haxe
function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L41>)


## function indexByte


```haxe
function indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Strings.hx#L39>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.GoString, _f:()):Void
```


[\(view code\)](<./Strings.hx#L69>)


## function indexRune


```haxe
function indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Strings.hx#L40>)


## function join


```haxe
function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L52>)


## function lastIndex


```haxe
function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L38>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L42>)


## function lastIndexByte


```haxe
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Strings.hx#L43>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.GoString, _f:()):Void
```


[\(view code\)](<./Strings.hx#L70>)


## function map\_


```haxe
function map_(_mapping:(), _s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L55>)


## function newReader


```haxe
function newReader(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L24>)


## function newReplacer


```haxe
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Strings.hx#L25>)


## function repeat


```haxe
function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):Void
```


[\(view code\)](<./Strings.hx#L56>)


## function replace


```haxe
function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Strings.hx#L86>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L87>)


## function split


```haxe
function split(_s:stdgo.GoString, _sep:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L47>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L48>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Strings.hx#L46>)


## function splitN


```haxe
function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Strings.hx#L45>)


## function stringFind


```haxe
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L22>)


## function title


```haxe
function title(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L65>)


## function toLower


```haxe
function toLower(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L58>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L61>)


## function toTitle


```haxe
function toTitle(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L59>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L62>)


## function toUpper


```haxe
function toUpper(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L57>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L60>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L63>)


## function trim


```haxe
function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L74>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.GoString, _f:()):Void
```


[\(view code\)](<./Strings.hx#L68>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L75>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.GoString, _f:()):Void
```


[\(view code\)](<./Strings.hx#L66>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L84>)


## function trimRight


```haxe
function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L79>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.GoString, _f:()):Void
```


[\(view code\)](<./Strings.hx#L67>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L83>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L85>)


# Typedefs


```haxe
import stdgo.strings.*
```


## typedef Builder


```haxe
typedef Builder = Dynamic;
```


## typedef Builder\_asInterface


```haxe
typedef Builder_asInterface = Dynamic;
```


## typedef Builder\_static\_extension


```haxe
typedef Builder_static_extension = Dynamic;
```


## typedef Reader


```haxe
typedef Reader = Dynamic;
```


## typedef Reader\_asInterface


```haxe
typedef Reader_asInterface = Dynamic;
```


## typedef Reader\_static\_extension


```haxe
typedef Reader_static_extension = Dynamic;
```


## typedef Replacer


```haxe
typedef Replacer = Dynamic;
```


## typedef Replacer\_asInterface


```haxe
typedef Replacer_asInterface = Dynamic;
```


## typedef Replacer\_static\_extension


```haxe
typedef Replacer_static_extension = Dynamic;
```


## typedef T\_appendSliceWriter


```haxe
typedef T_appendSliceWriter = stdgo._internal.strings.T_appendSliceWriter;
```


## typedef T\_appendSliceWriter\_asInterface


```haxe
typedef T_appendSliceWriter_asInterface = Dynamic;
```


## typedef T\_appendSliceWriter\_static\_extension


```haxe
typedef T_appendSliceWriter_static_extension = Dynamic;
```


## typedef T\_asciiSet


```haxe
typedef T_asciiSet = stdgo._internal.strings.T_asciiSet;
```


## typedef T\_asciiSet\_asInterface


```haxe
typedef T_asciiSet_asInterface = Dynamic;
```


## typedef T\_asciiSet\_static\_extension


```haxe
typedef T_asciiSet_static_extension = Dynamic;
```


## typedef T\_byteReplacer


```haxe
typedef T_byteReplacer = stdgo._internal.strings.T_byteReplacer;
```


## typedef T\_byteReplacer\_asInterface


```haxe
typedef T_byteReplacer_asInterface = Dynamic;
```


## typedef T\_byteReplacer\_static\_extension


```haxe
typedef T_byteReplacer_static_extension = Dynamic;
```


## typedef T\_byteStringReplacer


```haxe
typedef T_byteStringReplacer = Dynamic;
```


## typedef T\_byteStringReplacer\_asInterface


```haxe
typedef T_byteStringReplacer_asInterface = Dynamic;
```


## typedef T\_byteStringReplacer\_static\_extension


```haxe
typedef T_byteStringReplacer_static_extension = Dynamic;
```


## typedef T\_fieldsFunc\_1\_\_\_localname\_\_\_span


```haxe
typedef T_fieldsFunc_1___localname___span = Dynamic;
```


## typedef T\_genericReplacer


```haxe
typedef T_genericReplacer = Dynamic;
```


## typedef T\_genericReplacer\_asInterface


```haxe
typedef T_genericReplacer_asInterface = Dynamic;
```


## typedef T\_genericReplacer\_static\_extension


```haxe
typedef T_genericReplacer_static_extension = Dynamic;
```


## typedef T\_replacer


```haxe
typedef T_replacer = stdgo._internal.strings.T_replacer;
```


## typedef T\_singleStringReplacer


```haxe
typedef T_singleStringReplacer = Dynamic;
```


## typedef T\_singleStringReplacer\_asInterface


```haxe
typedef T_singleStringReplacer_asInterface = Dynamic;
```


## typedef T\_singleStringReplacer\_static\_extension


```haxe
typedef T_singleStringReplacer_static_extension = Dynamic;
```


## typedef T\_stringFinder


```haxe
typedef T_stringFinder = Dynamic;
```


## typedef T\_stringFinder\_asInterface


```haxe
typedef T_stringFinder_asInterface = Dynamic;
```


## typedef T\_stringFinder\_static\_extension


```haxe
typedef T_stringFinder_static_extension = Dynamic;
```


## typedef T\_stringWriter


```haxe
typedef T_stringWriter = Dynamic;
```


## typedef T\_stringWriter\_asInterface


```haxe
typedef T_stringWriter_asInterface = Dynamic;
```


## typedef T\_stringWriter\_static\_extension


```haxe
typedef T_stringWriter_static_extension = Dynamic;
```


## typedef T\_trieNode


```haxe
typedef T_trieNode = Dynamic;
```


## typedef T\_trieNode\_asInterface


```haxe
typedef T_trieNode_asInterface = Dynamic;
```


## typedef T\_trieNode\_static\_extension


```haxe
typedef T_trieNode_static_extension = Dynamic;
```


