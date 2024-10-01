# Module: `stdgo._internal.bytes`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _indexBytePortable(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt`](<#function-_indexbyteportable>)

- [`function indexBytePortable(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.GoUInt8):stdgo.GoInt`](<#function-indexbyteportable>)

- [`function _containsRune(_s:stdgo.GoString, _r:stdgo.GoInt32):Bool`](<#function-_containsrune>)

- [`function _explode(_s:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>`](<#function-_explode>)

- [`function _genSplit(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>`](<#function-_gensplit>)

- [`function _growSlice(_b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>`](<#function-_growslice>)

- [`function _indexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:(), _truth:Bool):stdgo.GoInt`](<#function-_indexfunc>)

- [`function _isSeparator(_r:stdgo.GoInt32):Bool`](<#function-_isseparator>)

- [`function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:(), _truth:Bool):stdgo.GoInt`](<#function-_lastindexfunc>)

- [`function _makeASCIISet(_chars:stdgo.GoString):{
	_1:Bool;
	_0:stdgo._internal.bytes.T_asciiSet;
}`](<#function-_makeasciiset>)

- [`function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoUInt8>, _as:stdgo.Ref<stdgo._internal.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoUInt8>`](<#function-_trimleftascii>)

- [`function _trimLeftByte(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8>`](<#function-_trimleftbyte>)

- [`function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8>`](<#function-_trimleftunicode>)

- [`function _trimRightASCII(_s:stdgo.Slice<stdgo.GoUInt8>, _as:stdgo.Ref<stdgo._internal.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoUInt8>`](<#function-_trimrightascii>)

- [`function _trimRightByte(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8>`](<#function-_trimrightbyte>)

- [`function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8>`](<#function-_trimrightunicode>)

- [`function clone(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-clone>)

- [`function compare(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#function-compare>)

- [`function contains(_b:stdgo.Slice<stdgo.GoUInt8>, _subslice:stdgo.Slice<stdgo.GoUInt8>):Bool`](<#function-contains>)

- [`function containsAny(_b:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):Bool`](<#function-containsany>)

- [`function containsFunc(_b:stdgo.Slice<stdgo.GoUInt8>, _f:()):Bool`](<#function-containsfunc>)

- [`function containsRune(_b:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):Bool`](<#function-containsrune>)

- [`function count(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#function-count>)

- [`function cut(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):{
	_2:Bool;
	_1:stdgo.Slice<stdgo.GoUInt8>;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-cut>)

- [`function cutPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-cutprefix>)

- [`function cutSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-cutsuffix>)

- [`function equal(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool`](<#function-equal>)

- [`function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool`](<#function-equalfold>)

- [`function fields(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>`](<#function-fields>)

- [`function fieldsFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>`](<#function-fieldsfunc>)

- [`function hasPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):Bool`](<#function-hasprefix>)

- [`function hasSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):Bool`](<#function-hassuffix>)

- [`function index(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#function-index>)

- [`function indexAny(_s:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):stdgo.GoInt`](<#function-indexany>)

- [`function indexByte(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt`](<#function-indexbyte>)

- [`function indexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.GoInt`](<#function-indexfunc>)

- [`function indexRune(_s:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.GoInt`](<#function-indexrune>)

- [`function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-join>)

- [`function lastIndex(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#function-lastindex>)

- [`function lastIndexAny(_s:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):stdgo.GoInt`](<#function-lastindexany>)

- [`function lastIndexByte(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt`](<#function-lastindexbyte>)

- [`function lastIndexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.GoInt`](<#function-lastindexfunc>)

- [`function map_(_mapping:(), _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-map_>)

- [`function newBuffer(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Buffer>`](<#function-newbuffer>)

- [`function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.bytes.Buffer>`](<#function-newbufferstring>)

- [`function newReader(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Reader>`](<#function-newreader>)

- [`function repeat(_b:stdgo.Slice<stdgo.GoUInt8>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>`](<#function-repeat>)

- [`function replace(_s:stdgo.Slice<stdgo.GoUInt8>, _old:stdgo.Slice<stdgo.GoUInt8>, _new:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>`](<#function-replace>)

- [`function replaceAll(_s:stdgo.Slice<stdgo.GoUInt8>, _old:stdgo.Slice<stdgo.GoUInt8>, _new:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-replaceall>)

- [`function runes(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt32>`](<#function-runes>)

- [`function split(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>`](<#function-split>)

- [`function splitAfter(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>`](<#function-splitafter>)

- [`function splitAfterN(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>`](<#function-splitaftern>)

- [`function splitN(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>`](<#function-splitn>)

- [`function title(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-title>)

- [`function toLower(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-tolower>)

- [`function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-tolowerspecial>)

- [`function toTitle(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-totitle>)

- [`function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-totitlespecial>)

- [`function toUpper(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-toupper>)

- [`function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-toupperspecial>)

- [`function toValidUTF8(_s:stdgo.Slice<stdgo.GoUInt8>, _replacement:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-tovalidutf8>)

- [`function trim(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8>`](<#function-trim>)

- [`function trimFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.Slice<stdgo.GoUInt8>`](<#function-trimfunc>)

- [`function trimLeft(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8>`](<#function-trimleft>)

- [`function trimLeftFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.Slice<stdgo.GoUInt8>`](<#function-trimleftfunc>)

- [`function trimPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-trimprefix>)

- [`function trimRight(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8>`](<#function-trimright>)

- [`function trimRightFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.Slice<stdgo.GoUInt8>`](<#function-trimrightfunc>)

- [`function trimSpace(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-trimspace>)

- [`function trimSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-trimsuffix>)

- [class Buffer](<#class-buffer>)

  - [`function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt, ?_lastRead:stdgo._internal.bytes.T_readOp):Void`](<#buffer-function-new>)

- [class Reader](<#class-reader>)

  - [`function new(?_s:stdgo.Slice<stdgo.GoUInt8>, ?_i:stdgo.GoInt64, ?_prevRune:stdgo.GoInt):Void`](<#reader-function-new>)

- [class T\_fieldsFunc\_\_\_localname\_\_\_span\_11914](<#class-t_fieldsfunclocalnamespan_11914>)

  - [`function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt):Void`](<#t_fieldsfunclocalnamespan_11914-function-new>)

- [typedef T\_asciiSet](<#typedef-t_asciiset>)

- [typedef T\_readOp](<#typedef-t_readop>)

# Constants


```haxe
import stdgo._internal.bytes.Bytes_trimSuffix
```


```haxe
final _maxInt:stdgo.GoInt = ((((2147483647u32 : stdgo.GoUInt)) : stdgo.GoInt))
```


```haxe
final _opInvalid:stdgo._internal.bytes.T_readOp = ((0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp))
```


```haxe
final _opRead:stdgo._internal.bytes.T_readOp = ((-1 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp))
```


```haxe
final _opReadRune1:stdgo._internal.bytes.T_readOp = ((1 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp))
```


```haxe
final _opReadRune2:stdgo._internal.bytes.T_readOp = ((2 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp))
```


```haxe
final _opReadRune3:stdgo._internal.bytes.T_readOp = ((3 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp))
```


```haxe
final _opReadRune4:stdgo._internal.bytes.T_readOp = ((4 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp))
```


```haxe
final _smallBufferSize:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


```haxe
final minRead:stdgo.GoUInt64 = ((512i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.bytes.Bytes_trimSuffix
```


```haxe
var errTooLarge:stdgo.Error
```


```haxe
var _errNegativeRead:stdgo.Error
```


```haxe
var _errUnreadByte:stdgo.Error
```


```haxe
var _asciiSpace:stdgo.GoArray<stdgo.GoUInt8>
```


# Functions


```haxe
import stdgo._internal.bytes.Bytes_trimSuffix
```


## function \_indexBytePortable


```haxe
function _indexBytePortable(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function indexBytePortable


```haxe
function indexBytePortable(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_containsRune


```haxe
function _containsRune(_s:stdgo.GoString, _r:stdgo.GoInt32):Bool
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_explode


```haxe
function _explode(_s:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_genSplit


```haxe
function _genSplit(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_growSlice


```haxe
function _growSlice(_b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_indexFunc


```haxe
function _indexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:(), _truth:Bool):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_isSeparator


```haxe
function _isSeparator(_r:stdgo.GoInt32):Bool
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_lastIndexFunc


```haxe
function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:(), _truth:Bool):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_makeASCIISet


```haxe
function _makeASCIISet(_chars:stdgo.GoString):{
	_1:Bool;
	_0:stdgo._internal.bytes.T_asciiSet;
}
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_trimLeftASCII


```haxe
function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoUInt8>, _as:stdgo.Ref<stdgo._internal.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_trimLeftByte


```haxe
function _trimLeftByte(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_trimLeftUnicode


```haxe
function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_trimRightASCII


```haxe
function _trimRightASCII(_s:stdgo.Slice<stdgo.GoUInt8>, _as:stdgo.Ref<stdgo._internal.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_trimRightByte


```haxe
function _trimRightByte(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function \_trimRightUnicode


```haxe
function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function clone


```haxe
function clone(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function compare


```haxe
function compare(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function contains


```haxe
function contains(_b:stdgo.Slice<stdgo.GoUInt8>, _subslice:stdgo.Slice<stdgo.GoUInt8>):Bool
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function containsAny


```haxe
function containsAny(_b:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):Bool
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function containsFunc


```haxe
function containsFunc(_b:stdgo.Slice<stdgo.GoUInt8>, _f:()):Bool
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function containsRune


```haxe
function containsRune(_b:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):Bool
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function count


```haxe
function count(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function cut


```haxe
function cut(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):{
	_2:Bool;
	_1:stdgo.Slice<stdgo.GoUInt8>;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function cutPrefix


```haxe
function cutPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function cutSuffix


```haxe
function cutSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function equal


```haxe
function equal(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function equalFold


```haxe
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function fields


```haxe
function fields(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function hasPrefix


```haxe
function hasPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):Bool
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function hasSuffix


```haxe
function hasSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):Bool
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function index


```haxe
function index(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function indexAny


```haxe
function indexAny(_s:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function indexByte


```haxe
function indexByte(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function indexRune


```haxe
function indexRune(_s:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function join


```haxe
function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function lastIndex


```haxe
function lastIndex(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function lastIndexByte


```haxe
function lastIndexByte(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.GoInt
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function map\_


```haxe
function map_(_mapping:(), _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function newBuffer


```haxe
function newBuffer(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Buffer>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function newBufferString


```haxe
function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.bytes.Buffer>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function newReader


```haxe
function newReader(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Reader>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function repeat


```haxe
function repeat(_b:stdgo.Slice<stdgo.GoUInt8>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function replace


```haxe
function replace(_s:stdgo.Slice<stdgo.GoUInt8>, _old:stdgo.Slice<stdgo.GoUInt8>, _new:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.Slice<stdgo.GoUInt8>, _old:stdgo.Slice<stdgo.GoUInt8>, _new:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function runes


```haxe
function runes(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt32>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function split


```haxe
function split(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function splitN


```haxe
function splitN(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function title


```haxe
function title(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function toLower


```haxe
function toLower(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function toTitle


```haxe
function toTitle(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function toUpper


```haxe
function toUpper(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.Slice<stdgo.GoUInt8>, _replacement:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function trim


```haxe
function trim(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function trimRight


```haxe
function trimRight(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:()):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes_trimSuffix.hx#L2>)


# Classes


```haxe
import stdgo._internal.bytes.*
```


## class Buffer


```haxe
var _buf:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _lastRead:stdgo._internal.bytes.T_readOp
```


```haxe
var _off:stdgo.GoInt
```


### Buffer function new


```haxe
function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt, ?_lastRead:stdgo._internal.bytes.T_readOp):Void
```


[\(view code\)](<./Bytes_Buffer.hx#L6>)


## class Reader


```haxe
var _i:stdgo.GoInt64
```


```haxe
var _prevRune:stdgo.GoInt
```


```haxe
var _s:stdgo.Slice<stdgo.GoUInt8>
```


### Reader function new


```haxe
function new(?_s:stdgo.Slice<stdgo.GoUInt8>, ?_i:stdgo.GoInt64, ?_prevRune:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes_Reader.hx#L6>)


## class T\_fieldsFunc\_\_\_localname\_\_\_span\_11914


```haxe
var _end:stdgo.GoInt
```


```haxe
var _start:stdgo.GoInt
```


### T\_fieldsFunc\_\_\_localname\_\_\_span\_11914 function new


```haxe
function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes_T_fieldsFunc___localname___span_11914.hx#L5>)


# Typedefs


```haxe
import stdgo._internal.bytes.*
```


## typedef T\_asciiSet


```haxe
typedef T_asciiSet = stdgo.GoArray<stdgo.GoUInt32>;
```


## typedef T\_readOp


```haxe
typedef T_readOp = stdgo.GoInt8;
```


