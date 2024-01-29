# Module: `stdgo.bytes`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void`](<#function-_containsrune>)

- [`function _explode(_s:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void`](<#function-_explode>)

- [`function _genSplit(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):Void`](<#function-_gensplit>)

- [`function _growSlice(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void`](<#function-_growslice>)

- [`function _indexBytePortable(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void`](<#function-_indexbyteportable>)

- [`function _indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):Void`](<#function-_indexfunc>)

- [`function _isSeparator(_r:stdgo.GoRune):Void`](<#function-_isseparator>)

- [`function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):Void`](<#function-_lastindexfunc>)

- [`function _makeASCIISet(_chars:stdgo.GoString):Void`](<#function-_makeasciiset>)

- [`function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes.T_asciiSet>):Void`](<#function-_trimleftascii>)

- [`function _trimLeftByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void`](<#function-_trimleftbyte>)

- [`function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void`](<#function-_trimleftunicode>)

- [`function _trimRightASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes.T_asciiSet>):Void`](<#function-_trimrightascii>)

- [`function _trimRightByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void`](<#function-_trimrightbyte>)

- [`function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void`](<#function-_trimrightunicode>)

- [`function clone(_b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-clone>)

- [`function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-compare>)

- [`function contains(_b:stdgo.Slice<stdgo.GoByte>, _subslice:stdgo.Slice<stdgo.GoByte>):Void`](<#function-contains>)

- [`function containsAny(_b:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Void`](<#function-containsany>)

- [`function containsFunc(_b:stdgo.Slice<stdgo.GoByte>, _f:()):Void`](<#function-containsfunc>)

- [`function containsRune(_b:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void`](<#function-containsrune>)

- [`function count(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-count>)

- [`function cut(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-cut>)

- [`function cutPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Void`](<#function-cutprefix>)

- [`function cutSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Void`](<#function-cutsuffix>)

- [`function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-equal>)

- [`function equalFold(_s:stdgo.Slice<stdgo.GoByte>, _t:stdgo.Slice<stdgo.GoByte>):Void`](<#function-equalfold>)

- [`function fields(_s:stdgo.Slice<stdgo.GoByte>):Void`](<#function-fields>)

- [`function fieldsFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:()):Void`](<#function-fieldsfunc>)

- [`function hasPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Void`](<#function-hasprefix>)

- [`function hasSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Void`](<#function-hassuffix>)

- [`function index(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-index>)

- [`function indexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Void`](<#function-indexany>)

- [`function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void`](<#function-indexbyte>)

- [`function indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):Void`](<#function-indexfunc>)

- [`function indexRune(_s:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void`](<#function-indexrune>)

- [`function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-join>)

- [`function lastIndex(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-lastindex>)

- [`function lastIndexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Void`](<#function-lastindexany>)

- [`function lastIndexByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void`](<#function-lastindexbyte>)

- [`function lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):Void`](<#function-lastindexfunc>)

- [`function map_(_mapping:(_r:stdgo.GoRune):stdgo.GoRune, _s:stdgo.Slice<stdgo.GoByte>):Void`](<#function-map_>)

- [`function newBuffer(_buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-newbuffer>)

- [`function newBufferString(_s:stdgo.GoString):Void`](<#function-newbufferstring>)

- [`function newReader(_b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-newreader>)

- [`function repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):Void`](<#function-repeat>)

- [`function replace(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void`](<#function-replace>)

- [`function replaceAll(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>):Void`](<#function-replaceall>)

- [`function runes(_s:stdgo.Slice<stdgo.GoByte>):Void`](<#function-runes>)

- [`function split(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-split>)

- [`function splitAfter(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-splitafter>)

- [`function splitAfterN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void`](<#function-splitaftern>)

- [`function splitN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void`](<#function-splitn>)

- [`function title(_s:stdgo.Slice<stdgo.GoByte>):Void`](<#function-title>)

- [`function toLower(_s:stdgo.Slice<stdgo.GoByte>):Void`](<#function-tolower>)

- [`function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):Void`](<#function-tolowerspecial>)

- [`function toTitle(_s:stdgo.Slice<stdgo.GoByte>):Void`](<#function-totitle>)

- [`function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):Void`](<#function-totitlespecial>)

- [`function toUpper(_s:stdgo.Slice<stdgo.GoByte>):Void`](<#function-toupper>)

- [`function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):Void`](<#function-toupperspecial>)

- [`function toValidUTF8(_s:stdgo.Slice<stdgo.GoByte>, _replacement:stdgo.Slice<stdgo.GoByte>):Void`](<#function-tovalidutf8>)

- [`function trim(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void`](<#function-trim>)

- [`function trimFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):Void`](<#function-trimfunc>)

- [`function trimLeft(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void`](<#function-trimleft>)

- [`function trimLeftFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):Void`](<#function-trimleftfunc>)

- [`function trimPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Void`](<#function-trimprefix>)

- [`function trimRight(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void`](<#function-trimright>)

- [`function trimRightFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):Void`](<#function-trimrightfunc>)

- [`function trimSpace(_s:stdgo.Slice<stdgo.GoByte>):Void`](<#function-trimspace>)

- [`function trimSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Void`](<#function-trimsuffix>)

- [typedef Buffer](<#typedef-buffer>)

- [typedef Buffer\_asInterface](<#typedef-buffer_asinterface>)

- [typedef Buffer\_static\_extension](<#typedef-buffer_static_extension>)

- [typedef Reader](<#typedef-reader>)

- [typedef Reader\_asInterface](<#typedef-reader_asinterface>)

- [typedef Reader\_static\_extension](<#typedef-reader_static_extension>)

- [typedef T\_asciiSet](<#typedef-t_asciiset>)

- [typedef T\_asciiSet\_asInterface](<#typedef-t_asciiset_asinterface>)

- [typedef T\_asciiSet\_static\_extension](<#typedef-t_asciiset_static_extension>)

- [typedef T\_fieldsFunc\_7\_\_\_localname\_\_\_span](<#typedef-t_fieldsfunc_7localnamespan>)

- [typedef T\_readOp](<#typedef-t_readop>)

# Variables


```haxe
import stdgo.bytes.Bytes
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _asciiSpace:Dynamic
```


```haxe
var _errNegativeRead:Dynamic
```


```haxe
var _errUnreadByte:Dynamic
```


```haxe
var _maxInt:Dynamic
```


```haxe
var _opInvalid:Dynamic
```


```haxe
var _opRead:Dynamic
```


```haxe
var _opReadRune1:Dynamic
```


```haxe
var _opReadRune2:Dynamic
```


```haxe
var _opReadRune3:Dynamic
```


```haxe
var _opReadRune4:Dynamic
```


```haxe
var _smallBufferSize:Dynamic
```


```haxe
var errTooLarge:Dynamic
```


```haxe
var indexBytePortable:Dynamic
```


```haxe
var minRead:Dynamic
```


# Functions


```haxe
import stdgo.bytes.Bytes
```


## function \_containsRune


```haxe
function _containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Bytes.hx#L71>)


## function \_explode


```haxe
function _explode(_s:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L26>)


## function \_genSplit


```haxe
function _genSplit(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L39>)


## function \_growSlice


```haxe
function _growSlice(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L21>)


## function \_indexBytePortable


```haxe
function _indexBytePortable(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Bytes.hx#L33>)


## function \_indexFunc


```haxe
function _indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):Void
```


[\(view code\)](<./Bytes.hx#L68>)


## function \_isSeparator


```haxe
function _isSeparator(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Bytes.hx#L59>)


## function \_lastIndexFunc


```haxe
function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):Void
```


[\(view code\)](<./Bytes.hx#L69>)


## function \_makeASCIISet


```haxe
function _makeASCIISet(_chars:stdgo.GoString):Void
```


[\(view code\)](<./Bytes.hx#L70>)


## function \_trimLeftASCII


```haxe
function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes.T_asciiSet>):Void
```


[\(view code\)](<./Bytes.hx#L75>)


## function \_trimLeftByte


```haxe
function _trimLeftByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Bytes.hx#L74>)


## function \_trimLeftUnicode


```haxe
function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void
```


[\(view code\)](<./Bytes.hx#L76>)


## function \_trimRightASCII


```haxe
function _trimRightASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes.T_asciiSet>):Void
```


[\(view code\)](<./Bytes.hx#L79>)


## function \_trimRightByte


```haxe
function _trimRightByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Bytes.hx#L78>)


## function \_trimRightUnicode


```haxe
function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void
```


[\(view code\)](<./Bytes.hx#L80>)


## function clone


```haxe
function clone(_b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L88>)


## function compare


```haxe
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L25>)


## function contains


```haxe
function contains(_b:stdgo.Slice<stdgo.GoByte>, _subslice:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L28>)


## function containsAny


```haxe
function containsAny(_b:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Void
```


[\(view code\)](<./Bytes.hx#L29>)


## function containsFunc


```haxe
function containsFunc(_b:stdgo.Slice<stdgo.GoByte>, _f:()):Void
```


[\(view code\)](<./Bytes.hx#L31>)


## function containsRune


```haxe
function containsRune(_b:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Bytes.hx#L30>)


## function count


```haxe
function count(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L27>)


## function cut


```haxe
function cut(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L87>)


## function cutPrefix


```haxe
function cutPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L89>)


## function cutSuffix


```haxe
function cutSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L90>)


## function equal


```haxe
function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L24>)


## function equalFold


```haxe
function equalFold(_s:stdgo.Slice<stdgo.GoByte>, _t:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L85>)


## function fields


```haxe
function fields(_s:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L44>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:()):Void
```


[\(view code\)](<./Bytes.hx#L46>)


## function hasPrefix


```haxe
function hasPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L48>)


## function hasSuffix


```haxe
function hasSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L49>)


## function index


```haxe
function index(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L86>)


## function indexAny


```haxe
function indexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Void
```


[\(view code\)](<./Bytes.hx#L37>)


## function indexByte


```haxe
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Bytes.hx#L32>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):Void
```


[\(view code\)](<./Bytes.hx#L66>)


## function indexRune


```haxe
function indexRune(_s:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Bytes.hx#L36>)


## function join


```haxe
function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L47>)


## function lastIndex


```haxe
function lastIndex(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L34>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Void
```


[\(view code\)](<./Bytes.hx#L38>)


## function lastIndexByte


```haxe
function lastIndexByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Bytes.hx#L35>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):Void
```


[\(view code\)](<./Bytes.hx#L67>)


## function map\_


```haxe
function map_(_mapping:(_r:stdgo.GoRune):stdgo.GoRune, _s:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L50>)


## function newBuffer


```haxe
function newBuffer(_buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L22>)


## function newBufferString


```haxe
function newBufferString(_s:stdgo.GoString):Void
```


[\(view code\)](<./Bytes.hx#L23>)


## function newReader


```haxe
function newReader(_b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L91>)


## function repeat


```haxe
function repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L51>)


## function replace


```haxe
function replace(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L83>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L84>)


## function runes


```haxe
function runes(_s:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L82>)


## function split


```haxe
function split(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L42>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L43>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L41>)


## function splitN


```haxe
function splitN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L40>)


## function title


```haxe
function title(_s:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L60>)


## function toLower


```haxe
function toLower(_s:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L53>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L56>)


## function toTitle


```haxe
function toTitle(_s:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L54>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L57>)


## function toUpper


```haxe
function toUpper(_s:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L52>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L55>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.Slice<stdgo.GoByte>, _replacement:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L58>)


## function trim


```haxe
function trim(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void
```


[\(view code\)](<./Bytes.hx#L72>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):Void
```


[\(view code\)](<./Bytes.hx#L63>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void
```


[\(view code\)](<./Bytes.hx#L73>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):Void
```


[\(view code\)](<./Bytes.hx#L61>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L64>)


## function trimRight


```haxe
function trimRight(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):Void
```


[\(view code\)](<./Bytes.hx#L77>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):Void
```


[\(view code\)](<./Bytes.hx#L62>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L81>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L65>)


# Typedefs


```haxe
import stdgo.bytes.*
```


## typedef Buffer


```haxe
typedef Buffer = Dynamic;
```


## typedef Buffer\_asInterface


```haxe
typedef Buffer_asInterface = Dynamic;
```


## typedef Buffer\_static\_extension


```haxe
typedef Buffer_static_extension = Dynamic;
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


## typedef T\_asciiSet


```haxe
typedef T_asciiSet = stdgo._internal.bytes.T_asciiSet;
```


## typedef T\_asciiSet\_asInterface


```haxe
typedef T_asciiSet_asInterface = Dynamic;
```


## typedef T\_asciiSet\_static\_extension


```haxe
typedef T_asciiSet_static_extension = Dynamic;
```


## typedef T\_fieldsFunc\_7\_\_\_localname\_\_\_span


```haxe
typedef T_fieldsFunc_7___localname___span = Dynamic;
```


## typedef T\_readOp


```haxe
typedef T_readOp = stdgo._internal.bytes.T_readOp;
```


