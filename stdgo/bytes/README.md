# Module: `stdgo.bytes`

[(view library index)](../stdgo.md)


# Overview



Package bytes implements functions for the manipulation of byte slices.
It is analogous to the facilities of the \[strings\] package.  

stdgo/internal/Macro.macro.hx:43: non hxb types:,414

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
	_0:stdgo.bytes.T_asciiSet;
}`](<#function-_makeasciiset>)

- [`function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>`](<#function-_trimleftascii>)

- [`function _trimLeftByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>`](<#function-_trimleftbyte>)

- [`function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-_trimleftunicode>)

- [`function _trimRightASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>`](<#function-_trimrightascii>)

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

- [`function newBuffer(_buf:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo.bytes.Buffer>`](<#function-newbuffer>)

- [`function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo.bytes.Buffer>`](<#function-newbufferstring>)

- [`function newReader(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo.bytes.Reader>`](<#function-newreader>)

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

- [`function toLowerSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-tolowerspecial>)

- [`function toTitle(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-totitle>)

- [`function toTitleSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-totitlespecial>)

- [`function toUpper(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-toupper>)

- [`function toUpperSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-toupperspecial>)

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

  - [`function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt, ?_lastRead:Null<stdgo.bytes.T_readOp>):Void`](<#buffer-function-new>)

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

  - [`function readFrom( _r:stdgo.io.Reader):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#buffer-function-readfrom>)

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

  - [`function writeTo( _w:stdgo.io.Writer):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#buffer-function-writeto>)

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

  - [`function writeTo( _w:stdgo.io.Writer):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#reader-function-writeto>)

- [class T\_fieldsFunc\_7\_\_\_localname\_\_\_span](<#class-t_fieldsfunc_7localnamespan>)

  - [`function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt):Void`](<#t_fieldsfunc_7localnamespan-function-new>)

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
import stdgo.bytes.Bytes
```


```haxe
final _maxInt:stdgo.GoInt = ((((2147483647u32 : stdgo.GoUInt)) : stdgo.GoInt))
```


```haxe
final _opInvalid:stdgo.bytes.T_readOp = ((0 : stdgo.bytes.Bytes.T_readOp))
```



Don't use iota for these, as the values need to correspond with the
names and comments, which is easier to see when being explicit.  


Non\-read operation.  

```haxe
final _opRead:stdgo.bytes.T_readOp = ((-1 : stdgo.bytes.Bytes.T_readOp))
```



Don't use iota for these, as the values need to correspond with the
names and comments, which is easier to see when being explicit.  


Any other read operation.  

```haxe
final _opReadRune1:stdgo.bytes.T_readOp = ((1 : stdgo.bytes.Bytes.T_readOp))
```



Don't use iota for these, as the values need to correspond with the
names and comments, which is easier to see when being explicit.  


Read rune of size 1.  

```haxe
final _opReadRune2:stdgo.bytes.T_readOp = ((2 : stdgo.bytes.Bytes.T_readOp))
```



Don't use iota for these, as the values need to correspond with the
names and comments, which is easier to see when being explicit.  


Read rune of size 2.  

```haxe
final _opReadRune3:stdgo.bytes.T_readOp = ((3 : stdgo.bytes.Bytes.T_readOp))
```



Don't use iota for these, as the values need to correspond with the
names and comments, which is easier to see when being explicit.  


Read rune of size 3.  

```haxe
final _opReadRune4:stdgo.bytes.T_readOp = ((4 : stdgo.bytes.Bytes.T_readOp))
```



Don't use iota for these, as the values need to correspond with the
names and comments, which is easier to see when being explicit.  


Read rune of size 4.  

```haxe
final _smallBufferSize:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```



smallBufferSize is an initial allocation minimal capacity.  

```haxe
final minRead:stdgo.GoUInt64 = ((512i64 : stdgo.GoUInt64))
```



MinRead is the minimum slice size passed to a Read call by
Buffer.ReadFrom. As long as the Buffer has at least MinRead bytes beyond
what is required to hold the contents of r, ReadFrom will not grow the
underlying buffer.  

# Variables


```haxe
import stdgo.bytes.Bytes
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



ErrTooLarge is passed to panic if memory cannot be allocated to store data in a buffer.  

# Functions


```haxe
import stdgo.bytes.Bytes
```


## function \_containsRune


```haxe
function _containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool
```



containsRune is a simplified version of strings.ContainsRune
to avoid importing the strings package.
We avoid bytes.ContainsRune to avoid allocating a temporary copy of s.  

[\(view code\)](<./Bytes.hx#L1234>)


## function \_explode


```haxe
function _explode(_s:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



explode splits s into a slice of UTF\-8 sequences, one per Unicode code point \(still slices of bytes\),
up to a maximum of n byte slices. Invalid UTF\-8 sequences are chopped into individual bytes.  

[\(view code\)](<./Bytes.hx#L267>)


## function \_genSplit


```haxe
function _genSplit(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



Generic split: splits after each instance of sep,
including sepSave bytes of sep in the subslices.  

[\(view code\)](<./Bytes.hx#L620>)


## function \_growSlice


```haxe
function _growSlice(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



growSlice grows b by n, preserving the original content of b.
If the allocation fails, it panics with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L174>)


## function \_indexBytePortable


```haxe
function _indexBytePortable(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```


[\(view code\)](<./Bytes.hx#L341>)


## function \_indexFunc


```haxe
function _indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):stdgo.GoInt
```



indexFunc is the same as IndexFunc except that if
truth==false, the sense of the predicate function is
inverted.  

[\(view code\)](<./Bytes.hx#L1167>)


## function \_isSeparator


```haxe
function _isSeparator(_r:stdgo.GoRune):Bool
```



isSeparator reports whether the rune could mark a word boundary.
TODO: update when package unicode captures more of the properties.  

[\(view code\)](<./Bytes.hx#L1058>)


## function \_lastIndexFunc


```haxe
function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):stdgo.GoInt
```



lastIndexFunc is the same as LastIndexFunc except that if
truth==false, the sense of the predicate function is
inverted.  

[\(view code\)](<./Bytes.hx#L1191>)


## function \_makeASCIISet


```haxe
function _makeASCIISet(_chars:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.bytes.T_asciiSet;
}
```



makeASCIISet creates a set of ASCII characters and reports whether all
characters in chars are ASCII.  

[\(view code\)](<./Bytes.hx#L1215>)


## function \_trimLeftASCII


```haxe
function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L1295>)


## function \_trimLeftByte


```haxe
function _trimLeftByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L1286>)


## function \_trimLeftUnicode


```haxe
function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L1307>)


## function \_trimRightASCII


```haxe
function _trimRightASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L1352>)


## function \_trimRightByte


```haxe
function _trimRightByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L1346>)


## function \_trimRightUnicode


```haxe
function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L1361>)


## function clone


```haxe
function clone(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



Clone returns a copy of b\[:len\(b\)\].
The result may have additional unused capacity.
Clone\(nil\) returns nil.  

### exampleClone


<details><summary></summary>
<p>


```haxe
function exampleClone():Void {
        var _b = (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _clone = stdgo.bytes.Bytes.clone(_b);
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_clone));
        _clone[(0 : stdgo.GoInt)] = (100 : stdgo.GoUInt8);
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_b));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_clone));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1671>)


## function compare


```haxe
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



Compare returns an integer comparing two byte slices lexicographically.
The result will be 0 if a == b, \-1 if a \< b, and \+1 if a \> b.
A nil argument is equivalent to an empty slice.  

### exampleCompare


<details><summary></summary>
<p>


```haxe
function exampleCompare():Void {
        var __0:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), __1:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _b:stdgo.Slice<stdgo.GoByte> = __1, _a:stdgo.Slice<stdgo.GoByte> = __0;
        if (stdgo.bytes.Bytes.compare(_a, _b) < (0 : stdgo.GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) <= (0 : stdgo.GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) > (0 : stdgo.GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) >= (0 : stdgo.GoInt)) {};
        if (stdgo.bytes.Bytes.equal(_a, _b)) {};
        if (!stdgo.bytes.Bytes.equal(_a, _b)) {};
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
        var _i:stdgo.GoInt = stdgo.sort.Sort.search((_haystack.length), function(_i:stdgo.GoInt):Bool {
            return stdgo.bytes.Bytes.compare(_haystack[(_i : stdgo.GoInt)], _needle) >= (0 : stdgo.GoInt);
        });
        if ((_i < _haystack.length) && stdgo.bytes.Bytes.equal(_haystack[(_i : stdgo.GoInt)], _needle)) {};
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L260>)


## function contains


```haxe
function contains(_b:stdgo.Slice<stdgo.GoByte>, _subslice:stdgo.Slice<stdgo.GoByte>):Bool
```



Contains reports whether subslice is within b.  

### exampleContains


<details><summary></summary>
<p>


```haxe
function exampleContains():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("bar" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.contains((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L314>)


## function containsAny


```haxe
function containsAny(_b:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Bool
```



ContainsAny reports whether any of the UTF\-8\-encoded code points in chars are within b.  

### exampleContainsAny


<details><summary></summary>
<p>


```haxe
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("fÄo!" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("去是伟大的." : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.Go.str()?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsAny((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), stdgo.Go.str()?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L320>)


## function containsFunc


```haxe
function containsFunc(_b:stdgo.Slice<stdgo.GoByte>, _f:()):Bool
```



ContainsFunc reports whether any of the UTF\-8\-encoded code points r within b satisfy f\(r\).  

[\(view code\)](<./Bytes.hx#L332>)


## function containsRune


```haxe
function containsRune(_b:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Bool
```



ContainsRune reports whether the rune is contained in the UTF\-8\-encoded byte slice b.  

### exampleContainsRune


<details><summary></summary>
<p>


```haxe
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsRune((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (102 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsRune((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (246 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsRune((("去是伟大的!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (22823 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsRune((("去是伟大的!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (33 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsRune((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), (64 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L326>)


## function count


```haxe
function count(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



Count counts the number of non\-overlapping instances of sep in s.
If sep is an empty slice, Count returns 1 \+ the number of UTF\-8\-encoded code points in s.  

### exampleCount


<details><summary></summary>
<p>


```haxe
function exampleCount():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.count((("cheese" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("e" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.count((("five" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L294>)


## function cut


```haxe
function cut(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):{
	_2:Bool;
	_1:stdgo.Slice<stdgo.GoByte>;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



Cut slices s around the first instance of sep,
returning the text before and after sep.
The found result reports whether sep appears in s.
If sep does not appear in s, cut returns s, nil, false.  


Cut returns slices of the original slice s, not copies.  

### exampleCut


<details><summary></summary>
<p>


```haxe
function exampleCut():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.bytes.Bytes.cut((_s : stdgo.Slice<stdgo.GoByte>), (_sep : stdgo.Slice<stdgo.GoByte>)), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
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


[\(view code\)](<./Bytes.hx#L1656>)


## function cutPrefix


```haxe
function cutPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



CutPrefix returns s without the provided leading prefix byte slice
and reports whether it found the prefix.
If s doesn't start with prefix, CutPrefix returns s, false.
If prefix is the empty byte slice, CutPrefix returns s, true.  


CutPrefix returns slices of the original slice s, not copies.  

### exampleCutPrefix


<details><summary></summary>
<p>


```haxe
function exampleCutPrefix():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.bytes.Bytes.cutPrefix((_s : stdgo.Slice<stdgo.GoByte>), (_sep : stdgo.Slice<stdgo.GoByte>)), _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo.fmt.Fmt.printf(("CutPrefix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1685>)


## function cutSuffix


```haxe
function cutSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



CutSuffix returns s without the provided ending suffix byte slice
and reports whether it found the suffix.
If s doesn't end with suffix, CutSuffix returns s, false.
If suffix is the empty byte slice, CutSuffix returns s, true.  


CutSuffix returns slices of the original slice s, not copies.  

### exampleCutSuffix


<details><summary></summary>
<p>


```haxe
function exampleCutSuffix():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.bytes.Bytes.cutSuffix((_s : stdgo.Slice<stdgo.GoByte>), (_sep : stdgo.Slice<stdgo.GoByte>)), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo.fmt.Fmt.printf(("CutSuffix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1700>)


## function equal


```haxe
function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Bool
```



Equal reports whether a and b
are the same length and contain the same bytes.
A nil argument is equivalent to an empty slice.  

### exampleEqual


<details><summary></summary>
<p>


```haxe
function exampleEqual():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.equal((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.equal((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("C++" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L252>)


## function equalFold


```haxe
function equalFold(_s:stdgo.Slice<stdgo.GoByte>, _t:stdgo.Slice<stdgo.GoByte>):Bool
```



EqualFold reports whether s and t, interpreted as UTF\-8 strings,
are equal under simple Unicode case\-folding, which is a more general
form of case\-insensitivity.  

### exampleEqualFold


<details><summary></summary>
<p>


```haxe
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.equalFold((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1480>)


## function fields


```haxe
function fields(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



Fields interprets s as a sequence of UTF\-8\-encoded code points.
It splits the slice s around each instance of one or more consecutive white space
characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
empty slice if s contains only white space.  

### exampleFields


<details><summary></summary>
<p>


```haxe
function exampleFields():Void {
        stdgo.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.fields((("  foo bar  baz   " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L702>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:()):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



FieldsFunc interprets s as a sequence of UTF\-8\-encoded code points.
It splits the slice s at each run of code points c satisfying f\(c\) and
returns a slice of subslices of s. If all code points in s satisfy f\(c\), or
len\(s\) == 0, an empty slice is returned.  


FieldsFunc makes no guarantees about the order in which it calls f\(c\)
and assumes that f always returns the same value for a given c.  

### exampleFieldsFunc


<details><summary></summary>
<p>


```haxe
function exampleFieldsFunc():Void {
        var _f:stdgo.GoInt32 -> Bool = function(_c:stdgo.GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.fieldsFunc((("  foo1;bar2,baz3..." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L772>)


## function hasPrefix


```haxe
function hasPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Bool
```



HasPrefix tests whether the byte slice s begins with prefix.  

### exampleHasPrefix


<details><summary></summary>
<p>


```haxe
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("C" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L845>)


## function hasSuffix


```haxe
function hasSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Bool
```



HasSuffix tests whether the byte slice s ends with suffix.  

### exampleHasSuffix


<details><summary></summary>
<p>


```haxe
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("O" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("Ami" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L851>)


## function index


```haxe
function index(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



Index returns the index of the first instance of sep in s, or \-1 if sep is not present in s.  

### exampleIndex


<details><summary></summary>
<p>


```haxe
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.index((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("ken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.index((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("dmr" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1575>)


## function indexAny


```haxe
function indexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt
```



IndexAny interprets s as a sequence of UTF\-8\-encoded Unicode code points.
It returns the byte index of the first occurrence in s of any of the Unicode
code points in chars. It returns \-1 if chars is empty or if there is no code
point in common.  

### exampleIndexAny


<details><summary></summary>
<p>


```haxe
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexAny((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("aeiouy" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexAny((("crwth" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("aeiouy" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L441>)


## function indexByte


```haxe
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```



IndexByte returns the index of the first instance of c in b, or \-1 if c is not present in b.  

### exampleIndexByte


<details><summary></summary>
<p>


```haxe
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexByte((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((107 : stdgo.GoUInt8) : stdgo.GoByte))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexByte((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((103 : stdgo.GoUInt8) : stdgo.GoByte))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L338>)


## function indexBytePortable


```haxe
function indexBytePortable(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.GoUInt8):stdgo.GoInt
```



Export func for testing  

[\(view code\)](<./Bytes.hx#L45>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt
```



IndexFunc interprets s as a sequence of UTF\-8\-encoded code points.
It returns the byte index in s of the first Unicode
code point satisfying f\(c\), or \-1 if none do.  

### exampleIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleIndexFunc():Void {
        var _f:stdgo.GoInt32 -> Bool = function(_c:stdgo.GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexFunc((("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _f)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexFunc((("Hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1151>)


## function indexRune


```haxe
function indexRune(_s:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt
```



IndexRune interprets s as a sequence of UTF\-8\-encoded code points.
It returns the byte index of the first occurrence in s of the given rune.
It returns \-1 if rune is not present in s.
If r is utf8.RuneError, it returns the first instance of any
invalid UTF\-8 byte sequence.  

### exampleIndexRune


<details><summary></summary>
<p>


```haxe
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexRune((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (107 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexRune((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (100 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L412>)


## function join


```haxe
function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



Join concatenates the elements of s to create a new byte slice. The separator
sep is placed between elements in the resulting slice.  

### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
        var _s = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(3, 3, (("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("bar" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("baz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.join(_s, ((", " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L814>)


## function lastIndex


```haxe
function lastIndex(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



LastIndex returns the index of the last instance of sep in s, or \-1 if sep is not present in s.  

### exampleLastIndex


<details><summary></summary>
<p>


```haxe
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.index((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndex((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndex((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("rodent" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L352>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt
```



LastIndexAny interprets s as a sequence of UTF\-8\-encoded Unicode code
points. It returns the byte index of the last occurrence in s of any of
the Unicode code points in chars. It returns \-1 if chars is empty or if
there is no code point in common.  

### exampleLastIndexAny


<details><summary></summary>
<p>


```haxe
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("MüQp" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go 地鼠" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("地大" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("z,!." : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L527>)


## function lastIndexByte


```haxe
function lastIndexByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```



LastIndexByte returns the index of the last instance of c in s, or \-1 if c is not present in s.  

### exampleLastIndexByte


<details><summary></summary>
<p>


```haxe
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((103 : stdgo.GoUInt8) : stdgo.GoByte))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((114 : stdgo.GoUInt8) : stdgo.GoByte))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((122 : stdgo.GoUInt8) : stdgo.GoByte))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L394>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt
```



LastIndexFunc interprets s as a sequence of UTF\-8\-encoded code points.
It returns the byte index in s of the last Unicode
code point satisfying f\(c\), or \-1 if none do.  

### exampleLastIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isLetter)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isPunct)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isNumber)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1159>)


## function map\_


```haxe
function map_(_mapping:(_r:stdgo.GoRune):stdgo.GoRune, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



Map returns a copy of the byte slice s with all its characters modified
according to the mapping function. If mapping returns a negative value, the character is
dropped from the byte slice with no replacement. The characters in s and the
output are interpreted as UTF\-8\-encoded code points.  

[\(view code\)](<./Bytes.hx#L860>)


## function newBuffer


```haxe
function newBuffer(_buf:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo.bytes.Buffer>
```



NewBuffer creates and initializes a new Buffer using buf as its
initial contents. The new Buffer takes ownership of buf, and the
caller should not use buf after this call. NewBuffer is intended to
prepare a Buffer to read existing data. It can also be used to set
the initial size of the internal buffer for writing. To do that,
buf should have the desired capacity but a length of zero.  


In most cases, new\(Buffer\) \(or just declaring a Buffer variable\) is
sufficient to initialize a Buffer.  

[\(view code\)](<./Bytes.hx#L233>)


## function newBufferString


```haxe
function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo.bytes.Buffer>
```



NewBufferString creates and initializes a new Buffer using string s as its
initial contents. It is intended to prepare a buffer to read an existing
string.  


In most cases, new\(Buffer\) \(or just declaring a Buffer variable\) is
sufficient to initialize a Buffer.  

[\(view code\)](<./Bytes.hx#L244>)


## function newReader


```haxe
function newReader(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo.bytes.Reader>
```



NewReader returns a new Reader reading from b.  

[\(view code\)](<./Bytes.hx#L1710>)


## function repeat


```haxe
function repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



Repeat returns a new byte slice consisting of count copies of b.  


It panics if count is negative or if the result of \(len\(b\) \* count\)
overflows.  

### exampleRepeat


<details><summary></summary>
<p>


```haxe
function exampleRepeat():Void {
        stdgo.fmt.Fmt.printf(("ba%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.repeat((("na" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L889>)


## function replace


```haxe
function replace(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



Replace returns a copy of the slice s with the first n
non\-overlapping instances of old replaced by new.
If old is empty, it matches at the beginning of the slice
and after each UTF\-8 sequence, yielding up to k\+1 replacements
for a k\-rune slice.
If n \< 0, there is no limit on the number of replacements.  

### exampleReplace


<details><summary></summary>
<p>


```haxe
function exampleReplace():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.replace((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("k" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("ky" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.replace((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("moo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (-1 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1431>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ReplaceAll returns a copy of the slice s with all
non\-overlapping instances of old replaced by new.
If old is empty, it matches at the beginning of the slice
and after each UTF\-8 sequence, yielding up to k\+1 replacements
for a k\-rune slice.  

### exampleReplaceAll


<details><summary></summary>
<p>


```haxe
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.replaceAll((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("moo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1472>)


## function runes


```haxe
function runes(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoRune>
```



Runes interprets s as a sequence of UTF\-8\-encoded code points.
It returns a slice of runes \(Unicode code points\) equivalent to s.  

### exampleRunes


<details><summary></summary>
<p>


```haxe
function exampleRunes():Void {
        var _rs = stdgo.bytes.Bytes.runes((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        for (__0 => _r in _rs) {
            stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_r));
        };
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1412>)


## function split


```haxe
function split(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



Split slices s into all subslices separated by sep and returns a slice of
the subslices between those separators.
If sep is empty, Split splits after each UTF\-8 sequence.
It is equivalent to SplitN with a count of \-1.  


To split around the first instance of a separator, see Cut.  

### exampleSplit


<details><summary></summary>
<p>


```haxe
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.split((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.split((("a man a plan a canal panama" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("a " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.split(((" xyz " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.split((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), (("Bernardo O\'Higgins" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L684>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



SplitAfter slices s into all subslices after each instance of sep and
returns a slice of those subslices.
If sep is empty, SplitAfter splits after each UTF\-8 sequence.
It is equivalent to SplitAfterN with a count of \-1.  

### exampleSplitAfter


<details><summary></summary>
<p>


```haxe
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.splitAfter((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L693>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



SplitAfterN slices s into subslices after each instance of sep and
returns a slice of those subslices.
If sep is empty, SplitAfterN splits after each UTF\-8 sequence.
The count determines the number of subslices to return:  

```
	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
	n == 0: the result is nil (zero subslices)
	n < 0: all subslices
```
### exampleSplitAfterN


<details><summary></summary>
<p>


```haxe
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.splitAfterN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L673>)


## function splitN


```haxe
function splitN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



SplitN slices s into subslices separated by sep and returns a slice of
the subslices between those separators.
If sep is empty, SplitN splits after each UTF\-8 sequence.
The count determines the number of subslices to return:  

```
	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
	n == 0: the result is nil (zero subslices)
	n < 0: all subslices
```

To split around the first instance of a separator, see Cut.  

### exampleSplitN


<details><summary></summary>
<p>


```haxe
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.splitN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
        var _z = stdgo.bytes.Bytes.splitN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (0 : stdgo.GoInt));
        stdgo.fmt.Fmt.printf(("%q (nil = %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z == null));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L660>)


## function title


```haxe
function title(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



Title treats s as UTF\-8\-encoded bytes and returns a copy with all Unicode letters that begin
words mapped to their title case.  


Deprecated: The rule Title uses for word boundaries does not handle Unicode
punctuation properly. Use golang.org/x/text/cases instead.  

### exampleTitle


<details><summary></summary>
<p>


```haxe
function exampleTitle():Void {
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.title((("her royal highness" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1083>)


## function toLower


```haxe
function toLower(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToLower returns a copy of the byte slice s with all Unicode letters mapped to
their lower case.  

### exampleToLower


<details><summary></summary>
<p>


```haxe
function exampleToLower():Void {
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toLower((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L962>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToLowerSpecial treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their
lower case, giving priority to the special casing rules.  

### exampleToLowerSpecial


<details><summary></summary>
<p>


```haxe
function exampleToLowerSpecial():Void {
        var _str = (("AHOJ VÝVOJÁRİ GOLANG" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _totitle = stdgo.bytes.Bytes.toLowerSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__()));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("ToLower : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__()));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1011>)


## function toTitle


```haxe
function toTitle(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToTitle treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.  

### exampleToTitle


<details><summary></summary>
<p>


```haxe
function exampleToTitle():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toTitle((("loud noises" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toTitle((("хлеб" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L997>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToTitleSpecial treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their
title case, giving priority to the special casing rules.  

### exampleToTitleSpecial


<details><summary></summary>
<p>


```haxe
function exampleToTitleSpecial():Void {
        var _str = (("ahoj vývojári golang" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _totitle = stdgo.bytes.Bytes.toTitleSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__()));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("ToTitle : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__()));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1018>)


## function toUpper


```haxe
function toUpper(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
their upper case.  

### exampleToUpper


<details><summary></summary>
<p>


```haxe
function exampleToUpper():Void {
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toUpper((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L926>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToUpperSpecial treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their
upper case, giving priority to the special casing rules.  

### exampleToUpperSpecial


<details><summary></summary>
<p>


```haxe
function exampleToUpperSpecial():Void {
        var _str = (("ahoj vývojári golang" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _totitle = stdgo.bytes.Bytes.toUpperSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__()));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("ToUpper : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__()));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1004>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.Slice<stdgo.GoByte>, _replacement:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToValidUTF8 treats s as UTF\-8\-encoded bytes and returns a copy with each run of bytes
representing invalid UTF\-8 replaced with the bytes in replacement, which may be empty.  

### exampleToValidUTF8


<details><summary></summary>
<p>


```haxe
function exampleToValidUTF8():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toValidUTF8((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("�" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toValidUTF8((stdgo.Go.str("a", 255, "b", 192, 175, "c", 255) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toValidUTF8((stdgo.Go.str(237, 160, 128) : stdgo.Slice<stdgo.GoByte>), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1025>)


## function trim


```haxe
function trim(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



Trim returns a subslice of s by slicing off all leading and
trailing UTF\-8\-encoded code points contained in cutset.  

### exampleTrim


<details><summary></summary>
<p>


```haxe
function exampleTrim():Void {
        stdgo.fmt.Fmt.printf(("[%q]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.trim(((" !!! Achtung! Achtung! !!! " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("! " : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1246>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```



TrimFunc returns a subslice of s by slicing off all leading and trailing
UTF\-8\-encoded code points c that satisfy f\(c\).  

### exampleTrimFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimFunc((("\"go-gopher!\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1123>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



TrimLeft returns a subslice of s by slicing off all leading
UTF\-8\-encoded code points contained in cutset.  

### exampleTrimLeft


<details><summary></summary>
<p>


```haxe
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimLeft((("453gopher8257" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("0123456789" : stdgo.GoString)) : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1268>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```



TrimLeftFunc treats s as UTF\-8\-encoded bytes and returns a subslice of s by slicing off
all leading UTF\-8\-encoded code points c that satisfy f\(c\).  

### exampleTrimLeftFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("go-gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1098>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



TrimPrefix returns s without the provided leading prefix string.
If s doesn't start with prefix, s is returned unchanged.  

### exampleTrimPrefix


<details><summary></summary>
<p>


```haxe
function exampleTrimPrefix():Void {
        var _b:stdgo.Slice<stdgo.GoUInt8> = (("Goodbye,, world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b = stdgo.bytes.Bytes.trimPrefix(_b, (("Goodbye," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _b = stdgo.bytes.Bytes.trimPrefix(_b, (("See ya," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        stdgo.fmt.Fmt.printf(("Hello%s" : stdgo.GoString), stdgo.Go.toInterface(_b));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1130>)


## function trimRight


```haxe
function trimRight(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



TrimRight returns a subslice of s by slicing off all trailing
UTF\-8\-encoded code points that are contained in cutset.  

### exampleTrimRight


<details><summary></summary>
<p>


```haxe
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimRight((("453gopher8257" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("0123456789" : stdgo.GoString)) : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1331>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```



TrimRightFunc returns a subslice of s by slicing off all trailing
UTF\-8\-encoded code points c that satisfy f\(c\).  

### exampleTrimRightFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("go-gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1109>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



TrimSpace returns a subslice of s by slicing off all leading and
trailing white space, as defined by Unicode.  

### exampleTrimSpace


<details><summary></summary>
<p>


```haxe
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.trimSpace(((" \t\n a lone gopher \n\t\r\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1382>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



TrimSuffix returns s without the provided trailing suffix string.
If s doesn't end with suffix, s is returned unchanged.  

### exampleTrimSuffix


<details><summary></summary>
<p>


```haxe
function exampleTrimSuffix():Void {
        var _b:stdgo.Slice<stdgo.GoUInt8> = (("Hello, goodbye, etc!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b = stdgo.bytes.Bytes.trimSuffix(_b, (("goodbye, etc!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _b = stdgo.bytes.Bytes.trimSuffix(_b, (("gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _b = (_b.__append__(...stdgo.bytes.Bytes.trimSuffix((("world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("x!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)).__toArray__()));
        stdgo.os.Os.stdout.write(_b);
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1140>)


# Classes


```haxe
import stdgo.bytes.*
```


## class Buffer



A Buffer is a variable\-sized buffer of bytes with Read and Write methods.
The zero value for Buffer is an empty buffer ready to use.  

```haxe
var _buf:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _lastRead:stdgo.bytes.T_readOp
```


```haxe
var _off:stdgo.GoInt
```


### Buffer function new


```haxe
function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt, ?_lastRead:Null<stdgo.bytes.T_readOp>):Void
```


[\(view code\)](<./Bytes.hx#L119>)


### Buffer function \_empty


```haxe
function _empty():Bool
```



empty reports whether the unread portion of the buffer is empty.  

[\(view code\)](<./Bytes.hx#L2357>)


### Buffer function \_grow


```haxe
function _grow( _n:stdgo.GoInt):stdgo.GoInt
```



grow grows the buffer to guarantee space for n more bytes.
It returns the index where bytes should be written.
If the buffer can't grow it will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2252>)


### Buffer function \_readSlice


```haxe
function _readSlice( _delim:stdgo.GoByte):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



readSlice is like ReadBytes but returns a reference to internal buffer data.  

[\(view code\)](<./Bytes.hx#L1945>)


### Buffer function \_tryGrowByReslice


```haxe
function _tryGrowByReslice( _n:stdgo.GoInt):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```



tryGrowByReslice is an inlineable version of grow for the fast\-case where the
internal buffer only needs to be resliced.
It returns the index where bytes should be written and whether it succeeded.  

[\(view code\)](<./Bytes.hx#L2286>)


### Buffer function available


```haxe
function available():stdgo.GoInt
```



Available returns how many bytes are unused in the buffer.  

[\(view code\)](<./Bytes.hx#L2331>)


### Buffer function availableBuffer


```haxe
function availableBuffer():stdgo.Slice<stdgo.GoByte>
```



AvailableBuffer returns an empty buffer with b.Available\(\) capacity.
This buffer is intended to be appended to and
passed to an immediately succeeding Write call.
The buffer is only valid until the next write operation on b.  

[\(view code\)](<./Bytes.hx#L2382>)


### Buffer function bytes


```haxe
function bytes():stdgo.Slice<stdgo.GoByte>
```



Bytes returns a slice of length b.Len\(\) holding the unread portion of the buffer.
The slice is valid for use only until the next buffer modification \(that is,
only until the next call to a method like Read, Write, Reset, or Truncate\).
The slice aliases the buffer content at least until the next buffer modification,
so immediate changes to the slice will affect the result of future reads.  

[\(view code\)](<./Bytes.hx#L2394>)


### Buffer function cap


```haxe
function cap():stdgo.GoInt
```



Cap returns the capacity of the buffer's underlying byte slice, that is, the
total space allocated for the buffer's data.  

[\(view code\)](<./Bytes.hx#L2340>)


### Buffer function grow


```haxe
function grow( _n:stdgo.GoInt):Void
```



Grow grows the buffer's capacity, if necessary, to guarantee space for
another n bytes. After Grow\(n\), at least n bytes can be written to the
buffer without another allocation.
If n is negative, Grow will panic.
If the buffer can't grow it will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2238>)


### Buffer function len


```haxe
function len():stdgo.GoInt
```



Len returns the number of bytes of the unread portion of the buffer;
b.Len\(\) == len\(b.Bytes\(\)\).  

[\(view code\)](<./Bytes.hx#L2349>)


### Buffer function next


```haxe
function next( _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



Next returns a slice containing the next n bytes from the buffer,
advancing the buffer as if the bytes had been returned by Read.
If there are fewer than n bytes in the buffer, Next returns the entire buffer.
The slice is only valid until the next call to a read or write method.  

[\(view code\)](<./Bytes.hx#L2061>)


### Buffer function read


```haxe
function read( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Read reads the next len\(p\) bytes from the buffer or until the buffer
is drained. The return value n is the number of bytes read. If the
buffer has no data to return, err is io.EOF \(unless len\(p\) is zero\);
otherwise it is nil.  

[\(view code\)](<./Bytes.hx#L2082>)


### Buffer function readByte


```haxe
function readByte():{
	_1:stdgo.Error;
	_0:stdgo.GoByte;
}
```



ReadByte reads and returns the next byte from the buffer.
If no byte is available, it returns error io.EOF.  

[\(view code\)](<./Bytes.hx#L2043>)


### Buffer function readBytes


```haxe
function readBytes( _delim:stdgo.GoByte):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



ReadBytes reads until the first occurrence of delim in the input,
returning a slice containing the data up to and including the delimiter.
If ReadBytes encounters an error before finding a delimiter,
it returns the data read before the error and the error itself \(often io.EOF\).
ReadBytes returns err \!= nil if and only if the returned data does not end in
delim.  

[\(view code\)](<./Bytes.hx#L1968>)


### Buffer function readFrom


```haxe
function readFrom( _r:stdgo.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



ReadFrom reads data from r until EOF and appends it to the buffer, growing
the buffer as needed. The return value n is the number of bytes read. Any
error except io.EOF encountered during the read is also returned. If the
buffer becomes too large, ReadFrom will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2177>)


### Buffer function readRune


```haxe
function readRune():{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```



ReadRune reads and returns the next UTF\-8\-encoded
Unicode code point from the buffer.
If no bytes are available, the error returned is io.EOF.
If the bytes are an erroneous UTF\-8 encoding, it
consumes one byte and returns U\+FFFD, 1.  

[\(view code\)](<./Bytes.hx#L2020>)


### Buffer function readString


```haxe
function readString( _delim:stdgo.GoByte):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```



ReadString reads until the first occurrence of delim in the input,
returning a string containing the data up to and including the delimiter.
If ReadString encounters an error before finding a delimiter,
it returns the data read before the error and the error itself \(often io.EOF\).
ReadString returns err \!= nil if and only if the returned data does not end
in delim.  

[\(view code\)](<./Bytes.hx#L1935>)


### Buffer function reset


```haxe
function reset():Void
```



Reset resets the buffer to be empty,
but it retains the underlying storage for use by future writes.
Reset is the same as Truncate\(0\).  

[\(view code\)](<./Bytes.hx#L2303>)


### Buffer function string


```haxe
function string():stdgo.GoString
```



String returns the contents of the unread portion of the buffer
as a string. If the Buffer is a nil pointer, it returns "\<nil\>".  


To build strings more efficiently, see the strings.Builder type.  

[\(view code\)](<./Bytes.hx#L2368>)


### Buffer function truncate


```haxe
function truncate( _n:stdgo.GoInt):Void
```



Truncate discards all but the first n unread bytes from the buffer
but continues to use the same allocated storage.
It panics if n is negative or greater than the length of the buffer.  

[\(view code\)](<./Bytes.hx#L2315>)


### Buffer function unreadByte


```haxe
function unreadByte():stdgo.Error
```



UnreadByte unreads the last byte returned by the most recent successful
read operation that read at least one byte. If a write has happened since
the last read, if the last read returned an error, or if the read read zero
bytes, UnreadByte returns an error.  

[\(view code\)](<./Bytes.hx#L1982>)


### Buffer function unreadRune


```haxe
function unreadRune():stdgo.Error
```



UnreadRune unreads the last rune returned by ReadRune.
If the most recent read or write operation on the buffer was
not a successful ReadRune, UnreadRune returns an error.  \(In this regard
it is stricter than UnreadByte, which will unread the last byte
from any read operation.\)  

[\(view code\)](<./Bytes.hx#L2001>)


### Buffer function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Write appends the contents of p to the buffer, growing the buffer as
needed. The return value n is the length of p; err is always nil. If the
buffer becomes too large, Write will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2220>)


### Buffer function writeByte


```haxe
function writeByte( _c:stdgo.GoByte):stdgo.Error
```



WriteByte appends the byte c to the buffer, growing the buffer as needed.
The returned error is always nil, but is included to match bufio.Writer's
WriteByte. If the buffer becomes too large, WriteByte will panic with
ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2129>)


### Buffer function writeRune


```haxe
function writeRune( _r:stdgo.GoRune):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



WriteRune appends the UTF\-8 encoding of Unicode code point r to the
buffer, returning its length and an error, which is always nil but is
included to match bufio.Writer's WriteRune. The buffer is grown as needed;
if it becomes too large, WriteRune will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2107>)


### Buffer function writeString


```haxe
function writeString( _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



WriteString appends the contents of s to the buffer, growing the buffer as
needed. The return value n is the length of s; err is always nil. If the
buffer becomes too large, WriteString will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2204>)


### Buffer function writeTo


```haxe
function writeTo( _w:stdgo.io.Writer):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



WriteTo writes data to w until the buffer is drained or an error occurs.
The return value n is the number of bytes written; it always fits into an
int, but it is int64 to match the io.WriterTo interface. Any error
encountered during the write is also returned.  

[\(view code\)](<./Bytes.hx#L2146>)


## class Reader



A Reader implements the io.Reader, io.ReaderAt, io.WriterTo, io.Seeker,
io.ByteScanner, and io.RuneScanner interfaces by reading from
a byte slice.
Unlike a Buffer, a Reader is read\-only and supports seeking.
The zero value for Reader operates like a Reader of an empty slice.  

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


[\(view code\)](<./Bytes.hx#L142>)


### Reader function len


```haxe
function len():stdgo.GoInt
```



Len returns the number of bytes of the unread portion of the
slice.  

[\(view code\)](<./Bytes.hx#L2648>)


### Reader function read


```haxe
function read( _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Read implements the io.Reader interface.  

[\(view code\)](<./Bytes.hx#L2622>)


### Reader function readAt


```haxe
function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



ReadAt implements the io.ReaderAt interface.  

[\(view code\)](<./Bytes.hx#L2603>)


### Reader function readByte


```haxe
function readByte():{
	_1:stdgo.Error;
	_0:stdgo.GoByte;
}
```



ReadByte implements the io.ByteReader interface.  

[\(view code\)](<./Bytes.hx#L2589>)


### Reader function readRune


```haxe
function readRune():{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```



ReadRune implements the io.RuneReader interface.  

[\(view code\)](<./Bytes.hx#L2549>)


### Reader function reset


```haxe
function reset( _b:stdgo.Slice<stdgo.GoByte>):Void
```



Reset resets the Reader to be reading from b.  

[\(view code\)](<./Bytes.hx#L2471>)


### Reader function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



Seek implements the io.Seeker interface.  

[\(view code\)](<./Bytes.hx#L2507>)


### Reader function size


```haxe
function size():stdgo.GoInt64
```



Size returns the original length of the underlying byte slice.
Size is the number of bytes available for reading via ReadAt.
The result is unaffected by any method calls except Reset.  

[\(view code\)](<./Bytes.hx#L2639>)


### Reader function unreadByte


```haxe
function unreadByte():stdgo.Error
```



UnreadByte complements ReadByte in implementing the io.ByteScanner interface.  

[\(view code\)](<./Bytes.hx#L2576>)


### Reader function unreadRune


```haxe
function unreadRune():stdgo.Error
```



UnreadRune complements ReadRune in implementing the io.RuneScanner interface.  

[\(view code\)](<./Bytes.hx#L2533>)


### Reader function writeTo


```haxe
function writeTo( _w:stdgo.io.Writer):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



WriteTo implements the io.WriterTo interface.  

[\(view code\)](<./Bytes.hx#L2484>)


## class T\_fieldsFunc\_7\_\_\_localname\_\_\_span



A span is used to record a slice of s of the form s\[start:end\].
The start index is inclusive and the end index is exclusive.  

```haxe
var _end:stdgo.GoInt
```


```haxe
var _start:stdgo.GoInt
```


### T\_fieldsFunc\_7\_\_\_localname\_\_\_span function new


```haxe
function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L754>)


# Typedefs


```haxe
import stdgo.bytes.*
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

## typedef T\_readOp


```haxe
typedef T_readOp = stdgo.GoInt8;
```



The readOp constants describe the last action performed on
the buffer, so that UnreadRune and UnreadByte can check for
invalid usage. opReadRuneX constants are chosen such that
converted to int they correspond to the rune size that was read.  

