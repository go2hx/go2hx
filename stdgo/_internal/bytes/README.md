# Module: `stdgo._internal.bytes`

[(view library index)](../../stdgo.md)


# Overview



# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool`](<#function-_containsrune>)

- [`function _explode(_s:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-_explode>)

- [`function _genSplit(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-_gensplit>)

- [`function _growSlice(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_growslice>)

- [`function _indexBytePortable(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt`](<#function-_indexbyteportable>)

- [`function _indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):stdgo.GoInt`](<#function-_indexfunc>)

- [`function _isSeparator(_r:stdgo.GoRune):Bool`](<#function-_isseparator>)

- [`function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):stdgo.GoInt`](<#function-_lastindexfunc>)

- [`function _makeASCIISet(_chars:stdgo.GoString):{
	_1:Bool;
	_0:stdgo._internal.bytes.T_asciiSet;
}`](<#function-_makeasciiset>)

- [`function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo._internal.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>`](<#function-_trimleftascii>)

- [`function _trimLeftByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>`](<#function-_trimleftbyte>)

- [`function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-_trimleftunicode>)

- [`function _trimRightASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo._internal.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>`](<#function-_trimrightascii>)

- [`function _trimRightByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>`](<#function-_trimrightbyte>)

- [`function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-_trimrightunicode>)

- [`function clone(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-clone>)

- [`function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-compare>)

- [`function contains(_b:stdgo.Slice<stdgo.GoByte>, _subslice:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-contains>)

- [`function containsAny(_b:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Bool`](<#function-containsany>)

- [`function containsFunc(_b:stdgo.Slice<stdgo.GoByte>, _f:()):Bool`](<#function-containsfunc>)

- [`function containsRune(_b:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Bool`](<#function-containsrune>)

- [`function count(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-count>)

- [`function cut(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):{
	_2:Bool;
	_1:stdgo.Slice<stdgo.GoByte>;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-cut>)

- [`function cutPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-cutprefix>)

- [`function cutSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-cutsuffix>)

- [`function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-equal>)

- [`function equalFold(_s:stdgo.Slice<stdgo.GoByte>, _t:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-equalfold>)

- [`function fields(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-fields>)

- [`function fieldsFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:()):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-fieldsfunc>)

- [`function hasPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-hasprefix>)

- [`function hasSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-hassuffix>)

- [`function index(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-index>)

- [`function indexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt`](<#function-indexany>)

- [`function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt`](<#function-indexbyte>)

- [`function indexBytePortable(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.GoUInt8):stdgo.GoInt`](<#function-indexbyteportable>)

- [`function indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt`](<#function-indexfunc>)

- [`function indexRune(_s:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt`](<#function-indexrune>)

- [`function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-join>)

- [`function lastIndex(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-lastindex>)

- [`function lastIndexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt`](<#function-lastindexany>)

- [`function lastIndexByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt`](<#function-lastindexbyte>)

- [`function lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt`](<#function-lastindexfunc>)

- [`function map_(_mapping:(_r:stdgo.GoRune):stdgo.GoRune, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-map_>)

- [`function newBuffer(_buf:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo._internal.bytes.Buffer>`](<#function-newbuffer>)

- [`function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.bytes.Buffer>`](<#function-newbufferstring>)

- [`function newReader(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo._internal.bytes.Reader>`](<#function-newreader>)

- [`function repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-repeat>)

- [`function replace(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-replace>)

- [`function replaceAll(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-replaceall>)

- [`function runes(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoRune>`](<#function-runes>)

- [`function split(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-split>)

- [`function splitAfter(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-splitafter>)

- [`function splitAfterN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-splitaftern>)

- [`function splitN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-splitn>)

- [`function title(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-title>)

- [`function toLower(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-tolower>)

- [`function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-tolowerspecial>)

- [`function toTitle(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-totitle>)

- [`function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-totitlespecial>)

- [`function toUpper(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-toupper>)

- [`function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-toupperspecial>)

- [`function toValidUTF8(_s:stdgo.Slice<stdgo.GoByte>, _replacement:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-tovalidutf8>)

- [`function trim(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-trim>)

- [`function trimFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>`](<#function-trimfunc>)

- [`function trimLeft(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-trimleft>)

- [`function trimLeftFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>`](<#function-trimleftfunc>)

- [`function trimPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-trimprefix>)

- [`function trimRight(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-trimright>)

- [`function trimRightFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>`](<#function-trimrightfunc>)

- [`function trimSpace(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-trimspace>)

- [`function trimSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-trimsuffix>)

- [class Buffer](<#class-buffer>)

  - [`function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt, ?_lastRead:stdgo._internal.bytes.T_readOp):Void`](<#buffer-function-new>)

  - [`function _empty():Bool`](<#buffer-function-_empty>)

  - [`function _grow( _n:stdgo.GoInt):stdgo.GoInt`](<#buffer-function-_grow>)

  - [`function _readSlice( _delim:stdgo.GoByte):{ _1:stdgo.Error; _0:stdgo.Slice<stdgo.GoByte>;}`](<#buffer-function-_readslice>)

  - [`function _tryGrowByReslice( _n:stdgo.GoInt):{ _1:Bool; _0:stdgo.GoInt;}`](<#buffer-function-_trygrowbyreslice>)

  - [`function available():stdgo.GoInt`](<#buffer-function-available>)

  - [`function availableBuffer():stdgo.Slice<stdgo.GoByte>`](<#buffer-function-availablebuffer>)

  - [`function bytes():stdgo.Slice<stdgo.GoByte>`](<#buffer-function-bytes>)

  - [`function cap():stdgo.GoInt`](<#buffer-function-cap>)

  - [`function grow( _n:stdgo.GoInt):Void`](<#buffer-function-grow>)

  - [`function len():stdgo.GoInt`](<#buffer-function-len>)

  - [`function next( _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#buffer-function-next>)

  - [`function read( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#buffer-function-read>)

  - [`function readByte():{ _1:stdgo.Error; _0:stdgo.GoByte;}`](<#buffer-function-readbyte>)

  - [`function readBytes( _delim:stdgo.GoByte):{ _1:stdgo.Error; _0:stdgo.Slice<stdgo.GoByte>;}`](<#buffer-function-readbytes>)

  - [`function readFrom( _r:stdgo._internal.io.Reader):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#buffer-function-readfrom>)

  - [`function readRune():{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoRune;}`](<#buffer-function-readrune>)

  - [`function readString( _delim:stdgo.GoByte):{ _1:stdgo.Error; _0:stdgo.GoString;}`](<#buffer-function-readstring>)

  - [`function reset():Void`](<#buffer-function-reset>)

  - [`function string():stdgo.GoString`](<#buffer-function-string>)

  - [`function truncate( _n:stdgo.GoInt):Void`](<#buffer-function-truncate>)

  - [`function unreadByte():stdgo.Error`](<#buffer-function-unreadbyte>)

  - [`function unreadRune():stdgo.Error`](<#buffer-function-unreadrune>)

  - [`function write( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#buffer-function-write>)

  - [`function writeByte( _c:stdgo.GoByte):stdgo.Error`](<#buffer-function-writebyte>)

  - [`function writeRune( _r:stdgo.GoRune):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#buffer-function-writerune>)

  - [`function writeString( _s:stdgo.GoString):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#buffer-function-writestring>)

  - [`function writeTo( _w:stdgo._internal.io.Writer):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#buffer-function-writeto>)

- [class Reader](<#class-reader>)

  - [`function new(?_s:stdgo.Slice<stdgo.GoUInt8>, ?_i:stdgo.GoInt64, ?_prevRune:stdgo.GoInt):Void`](<#reader-function-new>)

  - [`function len():stdgo.GoInt`](<#reader-function-len>)

  - [`function read( _b:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#reader-function-read>)

  - [`function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#reader-function-readat>)

  - [`function readByte():{ _1:stdgo.Error; _0:stdgo.GoByte;}`](<#reader-function-readbyte>)

  - [`function readRune():{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoRune;}`](<#reader-function-readrune>)

  - [`function reset( _b:stdgo.Slice<stdgo.GoByte>):Void`](<#reader-function-reset>)

  - [`function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#reader-function-seek>)

  - [`function size():stdgo.GoInt64`](<#reader-function-size>)

  - [`function unreadByte():stdgo.Error`](<#reader-function-unreadbyte>)

  - [`function unreadRune():stdgo.Error`](<#reader-function-unreadrune>)

  - [`function writeTo( _w:stdgo._internal.io.Writer):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#reader-function-writeto>)

- [class T\_fieldsFunc\_\_\_localname\_\_\_span\_11914](<#class-t_fieldsfunclocalnamespan_11914>)

  - [`function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt):Void`](<#t_fieldsfunclocalnamespan_11914-function-new>)

- [typedef T\_asciiSet](<#typedef-t_asciiset>)

- [typedef T\_readOp](<#typedef-t_readop>)

# Examples


- [`exampleClone`](<#exampleclone>)

- [`exampleCompare`](<#examplecompare>)

- [`exampleCompare_search`](<#examplecompare_search>)

- [`exampleContains`](<#examplecontains>)

- [`exampleContainsAny`](<#examplecontainsany>)

- [`exampleContainsRune`](<#examplecontainsrune>)

- [`exampleCount`](<#examplecount>)

- [`exampleCut`](<#examplecut>)

- [`exampleCutPrefix`](<#examplecutprefix>)

- [`exampleCutSuffix`](<#examplecutsuffix>)

- [`exampleEqual`](<#exampleequal>)

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

- [`exampleRepeat`](<#examplerepeat>)

- [`exampleReplace`](<#examplereplace>)

- [`exampleReplaceAll`](<#examplereplaceall>)

- [`exampleRunes`](<#examplerunes>)

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
import stdgo._internal.bytes.Bytes
```


```haxe
final _maxInt:stdgo.GoInt = ((((2147483647u32 : stdgo.GoUInt)) : stdgo.GoInt))
```


```haxe
final _opInvalid:stdgo._internal.bytes.T_readOp = ((0 : stdgo._internal.bytes.Bytes.T_readOp))
```


```haxe
final _opRead:stdgo._internal.bytes.T_readOp = ((-1 : stdgo._internal.bytes.Bytes.T_readOp))
```


```haxe
final _opReadRune1:stdgo._internal.bytes.T_readOp = ((1 : stdgo._internal.bytes.Bytes.T_readOp))
```


```haxe
final _opReadRune2:stdgo._internal.bytes.T_readOp = ((2 : stdgo._internal.bytes.Bytes.T_readOp))
```


```haxe
final _opReadRune3:stdgo._internal.bytes.T_readOp = ((3 : stdgo._internal.bytes.Bytes.T_readOp))
```


```haxe
final _opReadRune4:stdgo._internal.bytes.T_readOp = ((4 : stdgo._internal.bytes.Bytes.T_readOp))
```


```haxe
final _smallBufferSize:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


```haxe
final minRead:stdgo.GoUInt64 = ((512i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.bytes.Bytes
```


```haxe
var _asciiSpace:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _errNegativeRead:stdgo.Error
```


```haxe
var _errUnreadByte:stdgo.Error
```


```haxe
var errTooLarge:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.bytes.Bytes
```


## function \_containsRune


```haxe
function _containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool
```


[\(view code\)](<./Bytes.hx#L875>)


## function \_explode


```haxe
function _explode(_s:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


[\(view code\)](<./Bytes.hx#L119>)


## function \_genSplit


```haxe
function _genSplit(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


[\(view code\)](<./Bytes.hx#L424>)


## function \_growSlice


```haxe
function _growSlice(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L56>)


## function \_indexBytePortable


```haxe
function _indexBytePortable(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```


[\(view code\)](<./Bytes.hx#L174>)


## function \_indexFunc


```haxe
function _indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):stdgo.GoInt
```


[\(view code\)](<./Bytes.hx#L821>)


## function \_isSeparator


```haxe
function _isSeparator(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Bytes.hx#L754>)


## function \_lastIndexFunc


```haxe
function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):stdgo.GoInt
```


[\(view code\)](<./Bytes.hx#L840>)


## function \_makeASCIISet


```haxe
function _makeASCIISet(_chars:stdgo.GoString):{
	_1:Bool;
	_0:stdgo._internal.bytes.T_asciiSet;
}
```


[\(view code\)](<./Bytes.hx#L861>)


## function \_trimLeftASCII


```haxe
function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo._internal.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L928>)


## function \_trimLeftByte


```haxe
function _trimLeftByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L919>)


## function \_trimLeftUnicode


```haxe
function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L940>)


## function \_trimRightASCII


```haxe
function _trimRightASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo._internal.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L982>)


## function \_trimRightByte


```haxe
function _trimRightByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L976>)


## function \_trimRightUnicode


```haxe
function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L991>)


## function clone


```haxe
function clone(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleClone


<details><summary></summary>
<p>


```haxe
function exampleClone():Void {
        var _b = (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _clone = stdgo._internal.bytes.Bytes.clone(_b);
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_clone));
        _clone[(0 : stdgo.GoInt)] = (100 : stdgo.GoUInt8);
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_b));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_clone));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1259>)


## function compare


```haxe
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


### exampleCompare


<details><summary></summary>
<p>


```haxe
function exampleCompare():Void {
        var __0:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), __1:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
var _b = __1, _a = __0;
        if ((stdgo._internal.bytes.Bytes.compare(_a, _b) < (0 : stdgo.GoInt) : Bool)) {};
        if ((stdgo._internal.bytes.Bytes.compare(_a, _b) <= (0 : stdgo.GoInt) : Bool)) {};
        if ((stdgo._internal.bytes.Bytes.compare(_a, _b) > (0 : stdgo.GoInt) : Bool)) {};
        if ((stdgo._internal.bytes.Bytes.compare(_a, _b) >= (0 : stdgo.GoInt) : Bool)) {};
        if (stdgo._internal.bytes.Bytes.equal(_a, _b)) {};
        if (!stdgo._internal.bytes.Bytes.equal(_a, _b)) {};
    }
```


</p>
</details>


### exampleCompare\_search


<details><summary></summary>
<p>


```haxe
function exampleCompare_search():Void {
        var _needle:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _haystack:stdgo.Slice<stdgo.Slice<stdgo.GoByte>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        var _i = (stdgo._internal.sort.Sort.search((_haystack.length), function(_i:stdgo.GoInt):Bool {
            return (stdgo._internal.bytes.Bytes.compare(_haystack[(_i : stdgo.GoInt)], _needle) >= (0 : stdgo.GoInt) : Bool);
        }) : stdgo.GoInt);
        if (((_i < (_haystack.length) : Bool) && stdgo._internal.bytes.Bytes.equal(_haystack[(_i : stdgo.GoInt)], _needle) : Bool)) {};
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L116>)


## function contains


```haxe
function contains(_b:stdgo.Slice<stdgo.GoByte>, _subslice:stdgo.Slice<stdgo.GoByte>):Bool
```


### exampleContains


<details><summary></summary>
<p>


```haxe
function exampleContains():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("bar" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.contains((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L159>)


## function containsAny


```haxe
function containsAny(_b:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Bool
```


### exampleContainsAny


<details><summary></summary>
<p>


```haxe
function exampleContainsAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("fÄo!" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("去是伟大的." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsAny((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L162>)


## function containsFunc


```haxe
function containsFunc(_b:stdgo.Slice<stdgo.GoByte>, _f:()):Bool
```


[\(view code\)](<./Bytes.hx#L168>)


## function containsRune


```haxe
function containsRune(_b:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Bool
```


### exampleContainsRune


<details><summary></summary>
<p>


```haxe
function exampleContainsRune():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsRune((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (102 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsRune((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (246 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsRune((("去是伟大的!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (22823 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsRune((("去是伟大的!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (33 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsRune((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), (64 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L165>)


## function count


```haxe
function count(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


### exampleCount


<details><summary></summary>
<p>


```haxe
function exampleCount():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.count((("cheese" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("e" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.count((("five" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L142>)


## function cut


```haxe
function cut(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):{
	_2:Bool;
	_1:stdgo.Slice<stdgo.GoByte>;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```


### exampleCut


<details><summary></summary>
<p>


```haxe
function exampleCut():Void {
        var _show = (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.bytes.Bytes.cut((_s : stdgo.Slice<stdgo.GoByte>), (_sep : stdgo.Slice<stdgo.GoByte>)), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo._internal.fmt.Fmt.printf(("Cut(%q, %q) = %q, %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("Badger" : stdgo.GoString));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1249>)


## function cutPrefix


```haxe
function cutPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```


### exampleCutPrefix


<details><summary></summary>
<p>


```haxe
function exampleCutPrefix():Void {
        var _show = (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.bytes.Bytes.cutPrefix((_s : stdgo.Slice<stdgo.GoByte>), (_sep : stdgo.Slice<stdgo.GoByte>)), _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("CutPrefix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1265>)


## function cutSuffix


```haxe
function cutSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```


### exampleCutSuffix


<details><summary></summary>
<p>


```haxe
function exampleCutSuffix():Void {
        var _show = (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.bytes.Bytes.cutSuffix((_s : stdgo.Slice<stdgo.GoByte>), (_sep : stdgo.Slice<stdgo.GoByte>)), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("CutSuffix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1272>)


## function equal


```haxe
function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Bool
```


### exampleEqual


<details><summary></summary>
<p>


```haxe
function exampleEqual():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.equal((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.equal((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("C++" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L113>)


## function equalFold


```haxe
function equalFold(_s:stdgo.Slice<stdgo.GoByte>, _t:stdgo.Slice<stdgo.GoByte>):Bool
```


### exampleEqualFold


<details><summary></summary>
<p>


```haxe
function exampleEqualFold():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.equalFold((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1083>)


## function fields


```haxe
function fields(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


### exampleFields


<details><summary></summary>
<p>


```haxe
function exampleFields():Void {
        stdgo._internal.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.fields((("  foo bar  baz   " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L464>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:()):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


### exampleFieldsFunc


<details><summary></summary>
<p>


```haxe
function exampleFieldsFunc():Void {
        var _f = (function(_c:stdgo.GoRune):Bool {
            return (!stdgo._internal.unicode.Unicode.isLetter(_c) && !stdgo._internal.unicode.Unicode.isNumber(_c) : Bool);
        } : stdgo.GoInt32 -> Bool);
        stdgo._internal.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.fieldsFunc((("  foo1;bar2,baz3..." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L519>)


## function hasPrefix


```haxe
function hasPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Bool
```


### exampleHasPrefix


<details><summary></summary>
<p>


```haxe
function exampleHasPrefix():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("C" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L585>)


## function hasSuffix


```haxe
function hasSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Bool
```


### exampleHasSuffix


<details><summary></summary>
<p>


```haxe
function exampleHasSuffix():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("O" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("Ami" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L588>)


## function index


```haxe
function index(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


### exampleIndex


<details><summary></summary>
<p>


```haxe
function exampleIndex():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.index((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("ken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.index((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("dmr" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1176>)


## function indexAny


```haxe
function indexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt
```


### exampleIndexAny


<details><summary></summary>
<p>


```haxe
function exampleIndexAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexAny((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("aeiouy" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexAny((("crwth" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("aeiouy" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L255>)


## function indexByte


```haxe
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```


### exampleIndexByte


<details><summary></summary>
<p>


```haxe
function exampleIndexByte():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexByte((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((107 : stdgo.GoUInt8) : stdgo.GoByte))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexByte((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((103 : stdgo.GoUInt8) : stdgo.GoByte))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L171>)


## function indexBytePortable


```haxe
function indexBytePortable(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Bytes.hx#L25>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt
```


### exampleIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleIndexFunc():Void {
        var _f = (function(_c:stdgo.GoRune):Bool {
            return stdgo._internal.unicode.Unicode.is_(stdgo._internal.unicode.Unicode.han, _c);
        } : stdgo.GoInt32 -> Bool);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexFunc((("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _f)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexFunc((("Hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L815>)


## function indexRune


```haxe
function indexRune(_s:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt
```


### exampleIndexRune


<details><summary></summary>
<p>


```haxe
function exampleIndexRune():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexRune((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (107 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexRune((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (100 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L232>)


## function join


```haxe
function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
        var _s = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(3, 3, ...[(("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("bar" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("baz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.join(_s, ((", " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L557>)


## function lastIndex


```haxe
function lastIndex(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


### exampleLastIndex


<details><summary></summary>
<p>


```haxe
function exampleLastIndex():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.index((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndex((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndex((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("rodent" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L182>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt
```


### exampleLastIndexAny


<details><summary></summary>
<p>


```haxe
function exampleLastIndexAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexAny((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("MüQp" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexAny((("go 地鼠" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("地大" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexAny((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("z,!." : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L335>)


## function lastIndexByte


```haxe
function lastIndexByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```


### exampleLastIndexByte


<details><summary></summary>
<p>


```haxe
function exampleLastIndexByte():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((103 : stdgo.GoUInt8) : stdgo.GoByte))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((114 : stdgo.GoUInt8) : stdgo.GoByte))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((122 : stdgo.GoUInt8) : stdgo.GoByte))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L221>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt
```


### exampleLastIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleLastIndexFunc():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isLetter)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isPunct)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isNumber)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L818>)


## function map\_


```haxe
function map_(_mapping:(_r:stdgo.GoRune):stdgo.GoRune, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L591>)


## function newBuffer


```haxe
function newBuffer(_buf:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo._internal.bytes.Buffer>
```


[\(view code\)](<./Bytes.hx#L107>)


## function newBufferString


```haxe
function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.bytes.Buffer>
```


[\(view code\)](<./Bytes.hx#L110>)


## function newReader


```haxe
function newReader(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo._internal.bytes.Reader>
```


[\(view code\)](<./Bytes.hx#L1279>)


## function repeat


```haxe
function repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


### exampleRepeat


<details><summary></summary>
<p>


```haxe
function exampleRepeat():Void {
        stdgo._internal.fmt.Fmt.printf(("ba%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.repeat((("na" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L614>)


## function replace


```haxe
function replace(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


### exampleReplace


<details><summary></summary>
<p>


```haxe
function exampleReplace():Void {
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.replace((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("k" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("ky" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.replace((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("moo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (-1 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1046>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleReplaceAll


<details><summary></summary>
<p>


```haxe
function exampleReplaceAll():Void {
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.replaceAll((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("moo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1080>)


## function runes


```haxe
function runes(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoRune>
```


### exampleRunes


<details><summary></summary>
<p>


```haxe
function exampleRunes():Void {
        var _rs = stdgo._internal.bytes.Bytes.runes((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        for (__0 => _r in _rs) {
            stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_r));
        };
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1035>)


## function split


```haxe
function split(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


### exampleSplit


<details><summary></summary>
<p>


```haxe
function exampleSplit():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.split((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.split((("a man a plan a canal panama" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("a " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.split(((" xyz " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.split((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), (("Bernardo O\'Higgins" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L458>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


### exampleSplitAfter


<details><summary></summary>
<p>


```haxe
function exampleSplitAfter():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.splitAfter((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L461>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


### exampleSplitAfterN


<details><summary></summary>
<p>


```haxe
function exampleSplitAfterN():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.splitAfterN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L455>)


## function splitN


```haxe
function splitN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


### exampleSplitN


<details><summary></summary>
<p>


```haxe
function exampleSplitN():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.splitN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
        var _z = stdgo._internal.bytes.Bytes.splitN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (0 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.printf(("%q (nil = %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z == null));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L452>)


## function title


```haxe
function title(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleTitle


<details><summary></summary>
<p>


```haxe
function exampleTitle():Void {
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.title((("her royal highness" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L772>)


## function toLower


```haxe
function toLower(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleToLower


<details><summary></summary>
<p>


```haxe
function exampleToLower():Void {
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toLower((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L680>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleToLowerSpecial


<details><summary></summary>
<p>


```haxe
function exampleToLowerSpecial():Void {
        var _str = (("AHOJ VÝVOJÁRİ GOLANG" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _totitle = stdgo._internal.bytes.Bytes.toLowerSpecial(stdgo._internal.unicode.Unicode.azeriCase, _str);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__() : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("ToLower : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__() : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L719>)


## function toTitle


```haxe
function toTitle(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleToTitle


<details><summary></summary>
<p>


```haxe
function exampleToTitle():Void {
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toTitle((("loud noises" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toTitle((("хлеб" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L713>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleToTitleSpecial


<details><summary></summary>
<p>


```haxe
function exampleToTitleSpecial():Void {
        var _str = (("ahoj vývojári golang" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _totitle = stdgo._internal.bytes.Bytes.toTitleSpecial(stdgo._internal.unicode.Unicode.azeriCase, _str);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__() : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("ToTitle : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__() : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L722>)


## function toUpper


```haxe
function toUpper(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleToUpper


<details><summary></summary>
<p>


```haxe
function exampleToUpper():Void {
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toUpper((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L647>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo._internal.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleToUpperSpecial


<details><summary></summary>
<p>


```haxe
function exampleToUpperSpecial():Void {
        var _str = (("ahoj vývojári golang" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _totitle = stdgo._internal.bytes.Bytes.toUpperSpecial(stdgo._internal.unicode.Unicode.azeriCase, _str);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__() : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("ToUpper : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__() : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L716>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.Slice<stdgo.GoByte>, _replacement:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleToValidUTF8


<details><summary></summary>
<p>


```haxe
function exampleToValidUTF8():Void {
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toValidUTF8((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("�" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toValidUTF8((stdgo.Go.str("a", 255, "b", 192, 175, "c", 255) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toValidUTF8((stdgo.Go.str(237, 160, 128) : stdgo.Slice<stdgo.GoByte>), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L725>)


## function trim


```haxe
function trim(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


### exampleTrim


<details><summary></summary>
<p>


```haxe
function exampleTrim():Void {
        stdgo._internal.fmt.Fmt.printf(("[%q]" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.trim(((" !!! Achtung! Achtung! !!! " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("! " : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L883>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```


### exampleTrimFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimFunc():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimFunc((("\"go-gopher!\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L800>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


### exampleTrimLeft


<details><summary></summary>
<p>


```haxe
function exampleTrimLeft():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimLeft((("453gopher8257" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("0123456789" : stdgo.GoString)) : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L901>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```


### exampleTrimLeftFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimLeftFunc():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimLeftFunc((("go-gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimLeftFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimLeftFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L783>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleTrimPrefix


<details><summary></summary>
<p>


```haxe
function exampleTrimPrefix():Void {
        var _b:stdgo.Slice<stdgo.GoUInt8> = (("Goodbye,, world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b = stdgo._internal.bytes.Bytes.trimPrefix(_b, (("Goodbye," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _b = stdgo._internal.bytes.Bytes.trimPrefix(_b, (("See ya," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        stdgo._internal.fmt.Fmt.printf(("Hello%s" : stdgo.GoString), stdgo.Go.toInterface(_b));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L803>)


## function trimRight


```haxe
function trimRight(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


### exampleTrimRight


<details><summary></summary>
<p>


```haxe
function exampleTrimRight():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimRight((("453gopher8257" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("0123456789" : stdgo.GoString)) : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L961>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```


### exampleTrimRightFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimRightFunc():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimRightFunc((("go-gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimRightFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimRightFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L790>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleTrimSpace


<details><summary></summary>
<p>


```haxe
function exampleTrimSpace():Void {
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.trimSpace(((" \t\n a lone gopher \n\t\r\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1009>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


### exampleTrimSuffix


<details><summary></summary>
<p>


```haxe
function exampleTrimSuffix():Void {
        var _b:stdgo.Slice<stdgo.GoUInt8> = (("Hello, goodbye, etc!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b = stdgo._internal.bytes.Bytes.trimSuffix(_b, (("goodbye, etc!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _b = stdgo._internal.bytes.Bytes.trimSuffix(_b, (("gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _b = (_b.__append__(...(stdgo._internal.bytes.Bytes.trimSuffix((("world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("x!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : Array<stdgo.GoUInt8>)));
        stdgo._internal.os.Os.stdout.write(_b);
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L809>)


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


[\(view code\)](<./Bytes.hx#L30>)


### Buffer function \_empty


```haxe
function _empty():Bool
```


[\(view code\)](<./Bytes.hx#L1647>)


### Buffer function \_grow


```haxe
function _grow( _n:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Bytes.hx#L1571>)


### Buffer function \_readSlice


```haxe
function _readSlice( _delim:stdgo.GoByte):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```


[\(view code\)](<./Bytes.hx#L1354>)


### Buffer function \_tryGrowByReslice


```haxe
function _tryGrowByReslice( _n:stdgo.GoInt):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes.hx#L1600>)


### Buffer function available


```haxe
function available():stdgo.GoInt
```


[\(view code\)](<./Bytes.hx#L1632>)


### Buffer function availableBuffer


```haxe
function availableBuffer():stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L1660>)


### Buffer function bytes


```haxe
function bytes():stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L1665>)


### Buffer function cap


```haxe
function cap():stdgo.GoInt
```


[\(view code\)](<./Bytes.hx#L1637>)


### Buffer function grow


```haxe
function grow( _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L1562>)


### Buffer function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Bytes.hx#L1642>)


### Buffer function next


```haxe
function next( _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L1432>)


### Buffer function read


```haxe
function read( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes.hx#L1447>)


### Buffer function readByte


```haxe
function readByte():{
	_1:stdgo.Error;
	_0:stdgo.GoByte;
}
```


[\(view code\)](<./Bytes.hx#L1420>)


### Buffer function readBytes


```haxe
function readBytes( _delim:stdgo.GoByte):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```


[\(view code\)](<./Bytes.hx#L1369>)


### Buffer function readFrom


```haxe
function readFrom( _r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Bytes.hx#L1518>)


### Buffer function readRune


```haxe
function readRune():{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Bytes.hx#L1401>)


### Buffer function readString


```haxe
function readString( _delim:stdgo.GoByte):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Bytes.hx#L1347>)


### Buffer function reset


```haxe
function reset():Void
```


[\(view code\)](<./Bytes.hx#L1612>)


### Buffer function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Bytes.hx#L1652>)


### Buffer function truncate


```haxe
function truncate( _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L1619>)


### Buffer function unreadByte


```haxe
function unreadByte():stdgo.Error
```


[\(view code\)](<./Bytes.hx#L1377>)


### Buffer function unreadRune


```haxe
function unreadRune():stdgo.Error
```


[\(view code\)](<./Bytes.hx#L1389>)


### Buffer function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes.hx#L1551>)


### Buffer function writeByte


```haxe
function writeByte( _c:stdgo.GoByte):stdgo.Error
```


[\(view code\)](<./Bytes.hx#L1482>)


### Buffer function writeRune


```haxe
function writeRune( _r:stdgo.GoRune):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes.hx#L1466>)


### Buffer function writeString


```haxe
function writeString( _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes.hx#L1540>)


### Buffer function writeTo


```haxe
function writeTo( _w:stdgo._internal.io.Writer):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Bytes.hx#L1493>)


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


[\(view code\)](<./Bytes.hx#L44>)


### Reader function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Bytes.hx#L1847>)


### Reader function read


```haxe
function read( _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes.hx#L1830>)


### Reader function readAt


```haxe
function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes.hx#L1814>)


### Reader function readByte


```haxe
function readByte():{
	_1:stdgo.Error;
	_0:stdgo.GoByte;
}
```


[\(view code\)](<./Bytes.hx#L1803>)


### Reader function readRune


```haxe
function readRune():{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Bytes.hx#L1769>)


### Reader function reset


```haxe
function reset( _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L1703>)


### Reader function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Bytes.hx#L1733>)


### Reader function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Bytes.hx#L1842>)


### Reader function unreadByte


```haxe
function unreadByte():stdgo.Error
```


[\(view code\)](<./Bytes.hx#L1793>)


### Reader function unreadRune


```haxe
function unreadRune():stdgo.Error
```


[\(view code\)](<./Bytes.hx#L1756>)


### Reader function writeTo


```haxe
function writeTo( _w:stdgo._internal.io.Writer):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Bytes.hx#L1713>)


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


[\(view code\)](<./Bytes.hx#L510>)


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


