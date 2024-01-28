# Module: `stdgo.encoding.binary`

[(view library index)](../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:43: non hxb types:,376

# Index


- [Variables](<#variables>)

- [`function _checkResult(_t:stdgo.Ref<stdgo._internal.testing.T_>, _dir:stdgo.GoString, _order:stdgo.encoding.binary.ByteOrder, _err:stdgo.Error, _have:stdgo.AnyInterface, _want:stdgo.AnyInterface):Void`](<#function-_checkresult>)

- [`function _dataSize(_v:stdgo._internal.reflect.Value):Void`](<#function-_datasize>)

- [`function _intDataSize(_data:stdgo.AnyInterface):Void`](<#function-_intdatasize>)

- [`function _sizeof(_t:stdgo._internal.reflect.Type_):Void`](<#function-_sizeof>)

- [`function _testConstant(_t:stdgo.Ref<stdgo._internal.testing.T_>, _w:stdgo.GoUInt, _max:stdgo.GoInt):Void`](<#function-_testconstant>)

- [`function _testOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>, _buf:stdgo.Slice<stdgo.GoByte>, _x0:stdgo.GoUInt64, _n0:stdgo.GoInt, _err0:stdgo.Error):Void`](<#function-_testoverflow>)

- [`function _testPutUint64SmallSliceLengthPanics():Void`](<#function-_testputuint64smallslicelengthpanics>)

- [`function _testRead(_t:stdgo.Ref<stdgo._internal.testing.T_>, _order:stdgo.encoding.binary.ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void`](<#function-_testread>)

- [`function _testReadInvalidDestination(_t:stdgo.Ref<stdgo._internal.testing.T_>, _order:stdgo.encoding.binary.ByteOrder):Void`](<#function-_testreadinvaliddestination>)

- [`function _testUint64SmallSliceLengthPanics():Void`](<#function-_testuint64smallslicelengthpanics>)

- [`function _testUvarint(_t:stdgo.Ref<stdgo._internal.testing.T_>, _x:stdgo.GoUInt64):Void`](<#function-_testuvarint>)

- [`function _testVarint(_t:stdgo.Ref<stdgo._internal.testing.T_>, _x:stdgo.GoInt64):Void`](<#function-_testvarint>)

- [`function _testWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>, _order:stdgo.encoding.binary.ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void`](<#function-_testwrite>)

- [`function appendUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):Void`](<#function-appenduvarint>)

- [`function appendVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):Void`](<#function-appendvarint>)

- [`function benchmarkAppendUint16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappenduint16>)

- [`function benchmarkAppendUint32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappenduint32>)

- [`function benchmarkAppendUint64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappenduint64>)

- [`function benchmarkLittleEndianAppendUint16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklittleendianappenduint16>)

- [`function benchmarkLittleEndianAppendUint32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklittleendianappenduint32>)

- [`function benchmarkLittleEndianAppendUint64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklittleendianappenduint64>)

- [`function benchmarkLittleEndianPutUint16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklittleendianputuint16>)

- [`function benchmarkLittleEndianPutUint32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklittleendianputuint32>)

- [`function benchmarkLittleEndianPutUint64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklittleendianputuint64>)

- [`function benchmarkPutUint16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkputuint16>)

- [`function benchmarkPutUint32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkputuint32>)

- [`function benchmarkPutUint64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkputuint64>)

- [`function benchmarkPutUvarint32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkputuvarint32>)

- [`function benchmarkPutUvarint64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkputuvarint64>)

- [`function benchmarkReadFloats(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreadfloats>)

- [`function benchmarkReadInts(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreadints>)

- [`function benchmarkReadSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreadslice1000float32s>)

- [`function benchmarkReadSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreadslice1000int32s>)

- [`function benchmarkReadSlice1000Uint8s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreadslice1000uint8s>)

- [`function benchmarkReadStruct(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreadstruct>)

- [`function benchmarkWriteFloats(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkwritefloats>)

- [`function benchmarkWriteInts(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkwriteints>)

- [`function benchmarkWriteSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkwriteslice1000float32s>)

- [`function benchmarkWriteSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkwriteslice1000int32s>)

- [`function benchmarkWriteSlice1000Uint8s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkwriteslice1000uint8s>)

- [`function benchmarkWriteStruct(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkwritestruct>)

- [`function putUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):Void`](<#function-putuvarint>)

- [`function putVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):Void`](<#function-putvarint>)

- [`function read(_r:stdgo._internal.io.Reader, _order:stdgo.encoding.binary.ByteOrder, _data:stdgo.AnyInterface):Void`](<#function-read>)

- [`function readUvarint(_r:stdgo._internal.io.ByteReader):Void`](<#function-readuvarint>)

- [`function readVarint(_r:stdgo._internal.io.ByteReader):Void`](<#function-readvarint>)

- [`function size(_v:stdgo.AnyInterface):Void`](<#function-size>)

- [`function testBigEndianPtrWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbigendianptrwrite>)

- [`function testBigEndianRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbigendianread>)

- [`function testBigEndianWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbigendianwrite>)

- [`function testBlankFields(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testblankfields>)

- [`function testBufferTooBigWithOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbuffertoobigwithoverflow>)

- [`function testBufferTooSmall(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbuffertoosmall>)

- [`function testByteOrder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbyteorder>)

- [`function testConstants(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testconstants>)

- [`function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testearlyboundschecks>)

- [`function testLittleEndianPtrWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlittleendianptrwrite>)

- [`function testLittleEndianRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlittleendianread>)

- [`function testLittleEndianWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlittleendianwrite>)

- [`function testNativeEndian(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnativeendian>)

- [`function testNoFixedSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnofixedsize>)

- [`function testNonCanonicalZero(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnoncanonicalzero>)

- [`function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testoverflow>)

- [`function testReadBool(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadbool>)

- [`function testReadBoolSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadboolslice>)

- [`function testReadErrorMsg(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderrormsg>)

- [`function testReadInvalidDestination(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadinvaliddestination>)

- [`function testReadSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadslice>)

- [`function testReadTruncated(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadtruncated>)

- [`function testSizeInvalid(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsizeinvalid>)

- [`function testSizeStructCache(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsizestructcache>)

- [`function testSliceRoundTrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsliceroundtrip>)

- [`function testUnexportedRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testunexportedread>)

- [`function testUvarint(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testuvarint>)

- [`function testVarint(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testvarint>)

- [`function testWriteSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriteslice>)

- [`function testWriteT(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwritet>)

- [`function uvarint(_buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-uvarint>)

- [`function varint(_buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-varint>)

- [`function write(_w:stdgo._internal.io.Writer, _order:stdgo.encoding.binary.ByteOrder, _data:stdgo.AnyInterface):Void`](<#function-write>)

- [typedef AppendByteOrder](<#typedef-appendbyteorder>)

- [typedef BlankFields](<#typedef-blankfields>)

- [typedef BlankFieldsProbe](<#typedef-blankfieldsprobe>)

- [typedef ByteOrder](<#typedef-byteorder>)

- [typedef Struct](<#typedef-struct>)

- [typedef T\_](<#typedef-t_>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_1\_asInterface](<#typedef-t__struct_1_asinterface>)

- [typedef T\_\_struct\_1\_static\_extension](<#typedef-t__struct_1_static_extension>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_2\_asInterface](<#typedef-t__struct_2_asinterface>)

- [typedef T\_\_struct\_2\_static\_extension](<#typedef-t__struct_2_static_extension>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_3\_asInterface](<#typedef-t__struct_3_asinterface>)

- [typedef T\_\_struct\_3\_static\_extension](<#typedef-t__struct_3_static_extension>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_4\_asInterface](<#typedef-t__struct_4_asinterface>)

- [typedef T\_\_struct\_4\_static\_extension](<#typedef-t__struct_4_static_extension>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_5\_asInterface](<#typedef-t__struct_5_asinterface>)

- [typedef T\_\_struct\_5\_static\_extension](<#typedef-t__struct_5_static_extension>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_\_struct\_6\_asInterface](<#typedef-t__struct_6_asinterface>)

- [typedef T\_\_struct\_6\_static\_extension](<#typedef-t__struct_6_static_extension>)

- [typedef T\_bigEndian](<#typedef-t_bigendian>)

- [typedef T\_bigEndian\_asInterface](<#typedef-t_bigendian_asinterface>)

- [typedef T\_bigEndian\_static\_extension](<#typedef-t_bigendian_static_extension>)

- [typedef T\_byteSliceReader](<#typedef-t_byteslicereader>)

- [typedef T\_byteSliceReader\_asInterface](<#typedef-t_byteslicereader_asinterface>)

- [typedef T\_byteSliceReader\_static\_extension](<#typedef-t_byteslicereader_static_extension>)

- [typedef T\_coder](<#typedef-t_coder>)

- [typedef T\_decoder](<#typedef-t_decoder>)

- [typedef T\_decoder\_asInterface](<#typedef-t_decoder_asinterface>)

- [typedef T\_decoder\_static\_extension](<#typedef-t_decoder_static_extension>)

- [typedef T\_encoder](<#typedef-t_encoder>)

- [typedef T\_encoder\_asInterface](<#typedef-t_encoder_asinterface>)

- [typedef T\_encoder\_static\_extension](<#typedef-t_encoder_static_extension>)

- [typedef T\_littleEndian](<#typedef-t_littleendian>)

- [typedef T\_littleEndian\_asInterface](<#typedef-t_littleendian_asinterface>)

- [typedef T\_littleEndian\_static\_extension](<#typedef-t_littleendian_static_extension>)

- [typedef T\_nativeEndian](<#typedef-t_nativeendian>)

- [typedef T\_nativeEndian\_asInterface](<#typedef-t_nativeendian_asinterface>)

- [typedef T\_nativeEndian\_static\_extension](<#typedef-t_nativeendian_static_extension>)

- [typedef T\_testByteOrder\_13\_\_\_localname\_\_\_byteOrder](<#typedef-t_testbyteorder_13localnamebyteorder>)

- [typedef T\_testNoFixedSize\_14\_\_\_localname\_\_\_Person](<#typedef-t_testnofixedsize_14localnameperson>)

- [typedef T\_testSizeStructCache\_11\_\_\_localname\_\_\_foo](<#typedef-t_testsizestructcache_11localnamefoo>)

- [typedef T\_testSizeStructCache\_12\_\_\_localname\_\_\_bar](<#typedef-t_testsizestructcache_12localnamebar>)

- [typedef Unexported](<#typedef-unexported>)

# Variables


```haxe
import stdgo.encoding.binary.Binary
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _big:Dynamic
```


```haxe
var _errOverflow:Dynamic
```


```haxe
var _intArrays:Dynamic
```


```haxe
var _little:Dynamic
```


```haxe
var _putbuf:Dynamic
```


```haxe
var _res:Dynamic
```


```haxe
var _s:Dynamic
```


```haxe
var _src:Dynamic
```


```haxe
var _structSize:Dynamic
```


```haxe
var _tests:Dynamic
```


```haxe
var bigEndian:Dynamic
```


```haxe
var littleEndian:Dynamic
```


```haxe
var maxVarintLen16:Dynamic
```


```haxe
var maxVarintLen32:Dynamic
```


```haxe
var maxVarintLen64:Dynamic
```


```haxe
var nativeEndian:Dynamic
```


# Functions


```haxe
import stdgo.encoding.binary.Binary
```


## function \_checkResult


```haxe
function _checkResult(_t:stdgo.Ref<stdgo._internal.testing.T_>, _dir:stdgo.GoString, _order:stdgo.encoding.binary.ByteOrder, _err:stdgo.Error, _have:stdgo.AnyInterface, _want:stdgo.AnyInterface):Void
```


[\(view code\)](<./Binary.hx#L60>)


## function \_dataSize


```haxe
function _dataSize(_v:stdgo._internal.reflect.Value):Void
```


[\(view code\)](<./Binary.hx#L57>)


## function \_intDataSize


```haxe
function _intDataSize(_data:stdgo.AnyInterface):Void
```


[\(view code\)](<./Binary.hx#L59>)


## function \_sizeof


```haxe
function _sizeof(_t:stdgo._internal.reflect.Type_):Void
```


[\(view code\)](<./Binary.hx#L58>)


## function \_testConstant


```haxe
function _testConstant(_t:stdgo.Ref<stdgo._internal.testing.T_>, _w:stdgo.GoUInt, _max:stdgo.GoInt):Void
```


[\(view code\)](<./Binary.hx#L125>)


## function \_testOverflow


```haxe
function _testOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>, _buf:stdgo.Slice<stdgo.GoByte>, _x0:stdgo.GoUInt64, _n0:stdgo.GoInt, _err0:stdgo.Error):Void
```


[\(view code\)](<./Binary.hx#L133>)


## function \_testPutUint64SmallSliceLengthPanics


```haxe
function _testPutUint64SmallSliceLengthPanics():Void
```


[\(view code\)](<./Binary.hx#L84>)


## function \_testRead


```haxe
function _testRead(_t:stdgo.Ref<stdgo._internal.testing.T_>, _order:stdgo.encoding.binary.ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void
```


[\(view code\)](<./Binary.hx#L61>)


## function \_testReadInvalidDestination


```haxe
function _testReadInvalidDestination(_t:stdgo.Ref<stdgo._internal.testing.T_>, _order:stdgo.encoding.binary.ByteOrder):Void
```


[\(view code\)](<./Binary.hx#L89>)


## function \_testUint64SmallSliceLengthPanics


```haxe
function _testUint64SmallSliceLengthPanics():Void
```


[\(view code\)](<./Binary.hx#L83>)


## function \_testUvarint


```haxe
function _testUvarint(_t:stdgo.Ref<stdgo._internal.testing.T_>, _x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Binary.hx#L128>)


## function \_testVarint


```haxe
function _testVarint(_t:stdgo.Ref<stdgo._internal.testing.T_>, _x:stdgo.GoInt64):Void
```


[\(view code\)](<./Binary.hx#L127>)


## function \_testWrite


```haxe
function _testWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>, _order:stdgo.encoding.binary.ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void
```


[\(view code\)](<./Binary.hx#L62>)


## function appendUvarint


```haxe
function appendUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Binary.hx#L117>)


## function appendVarint


```haxe
function appendVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):Void
```


[\(view code\)](<./Binary.hx#L120>)


## function benchmarkAppendUint16


```haxe
function benchmarkAppendUint16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L99>)


## function benchmarkAppendUint32


```haxe
function benchmarkAppendUint32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L101>)


## function benchmarkAppendUint64


```haxe
function benchmarkAppendUint64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L103>)


## function benchmarkLittleEndianAppendUint16


```haxe
function benchmarkLittleEndianAppendUint16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L105>)


## function benchmarkLittleEndianAppendUint32


```haxe
function benchmarkLittleEndianAppendUint32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L107>)


## function benchmarkLittleEndianAppendUint64


```haxe
function benchmarkLittleEndianAppendUint64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L109>)


## function benchmarkLittleEndianPutUint16


```haxe
function benchmarkLittleEndianPutUint16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L104>)


## function benchmarkLittleEndianPutUint32


```haxe
function benchmarkLittleEndianPutUint32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L106>)


## function benchmarkLittleEndianPutUint64


```haxe
function benchmarkLittleEndianPutUint64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L108>)


## function benchmarkPutUint16


```haxe
function benchmarkPutUint16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L98>)


## function benchmarkPutUint32


```haxe
function benchmarkPutUint32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L100>)


## function benchmarkPutUint64


```haxe
function benchmarkPutUint64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L102>)


## function benchmarkPutUvarint32


```haxe
function benchmarkPutUvarint32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L136>)


## function benchmarkPutUvarint64


```haxe
function benchmarkPutUvarint64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L137>)


## function benchmarkReadFloats


```haxe
function benchmarkReadFloats(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L110>)


## function benchmarkReadInts


```haxe
function benchmarkReadInts(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L95>)


## function benchmarkReadSlice1000Float32s


```haxe
function benchmarkReadSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L112>)


## function benchmarkReadSlice1000Int32s


```haxe
function benchmarkReadSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L92>)


## function benchmarkReadSlice1000Uint8s


```haxe
function benchmarkReadSlice1000Uint8s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L114>)


## function benchmarkReadStruct


```haxe
function benchmarkReadStruct(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L93>)


## function benchmarkWriteFloats


```haxe
function benchmarkWriteFloats(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L111>)


## function benchmarkWriteInts


```haxe
function benchmarkWriteInts(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L96>)


## function benchmarkWriteSlice1000Float32s


```haxe
function benchmarkWriteSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L113>)


## function benchmarkWriteSlice1000Int32s


```haxe
function benchmarkWriteSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L97>)


## function benchmarkWriteSlice1000Uint8s


```haxe
function benchmarkWriteSlice1000Uint8s(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L115>)


## function benchmarkWriteStruct


```haxe
function benchmarkWriteStruct(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L94>)


## function putUvarint


```haxe
function putUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Binary.hx#L118>)


## function putVarint


```haxe
function putVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):Void
```


[\(view code\)](<./Binary.hx#L121>)


## function read


```haxe
function read(_r:stdgo._internal.io.Reader, _order:stdgo.encoding.binary.ByteOrder, _data:stdgo.AnyInterface):Void
```


[\(view code\)](<./Binary.hx#L54>)


## function readUvarint


```haxe
function readUvarint(_r:stdgo._internal.io.ByteReader):Void
```


[\(view code\)](<./Binary.hx#L123>)


## function readVarint


```haxe
function readVarint(_r:stdgo._internal.io.ByteReader):Void
```


[\(view code\)](<./Binary.hx#L124>)


## function size


```haxe
function size(_v:stdgo.AnyInterface):Void
```


[\(view code\)](<./Binary.hx#L56>)


## function testBigEndianPtrWrite


```haxe
function testBigEndianPtrWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L68>)


## function testBigEndianRead


```haxe
function testBigEndianRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L66>)


## function testBigEndianWrite


```haxe
function testBigEndianWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L67>)


## function testBlankFields


```haxe
function testBlankFields(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L75>)


## function testBufferTooBigWithOverflow


```haxe
function testBufferTooBigWithOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L132>)


## function testBufferTooSmall


```haxe
function testBufferTooSmall(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L131>)


## function testByteOrder


```haxe
function testByteOrder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L86>)


## function testConstants


```haxe
function testConstants(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L126>)


## function testEarlyBoundsChecks


```haxe
function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L87>)


## function testLittleEndianPtrWrite


```haxe
function testLittleEndianPtrWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L65>)


## function testLittleEndianRead


```haxe
function testLittleEndianRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L63>)


## function testLittleEndianWrite


```haxe
function testLittleEndianWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L64>)


## function testNativeEndian


```haxe
function testNativeEndian(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L116>)


## function testNoFixedSize


```haxe
function testNoFixedSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L91>)


## function testNonCanonicalZero


```haxe
function testNonCanonicalZero(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L135>)


## function testOverflow


```haxe
function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L134>)


## function testReadBool


```haxe
function testReadBool(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L71>)


## function testReadBoolSlice


```haxe
function testReadBoolSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L72>)


## function testReadErrorMsg


```haxe
function testReadErrorMsg(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L81>)


## function testReadInvalidDestination


```haxe
function testReadInvalidDestination(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L88>)


## function testReadSlice


```haxe
function testReadSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L69>)


## function testReadTruncated


```haxe
function testReadTruncated(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L82>)


## function testSizeInvalid


```haxe
function testSizeInvalid(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L79>)


## function testSizeStructCache


```haxe
function testSizeStructCache(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L78>)


## function testSliceRoundTrip


```haxe
function testSliceRoundTrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L73>)


## function testUnexportedRead


```haxe
function testUnexportedRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L80>)


## function testUvarint


```haxe
function testUvarint(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L130>)


## function testVarint


```haxe
function testVarint(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L129>)


## function testWriteSlice


```haxe
function testWriteSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L70>)


## function testWriteT


```haxe
function testWriteT(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L74>)


## function uvarint


```haxe
function uvarint(_buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Binary.hx#L119>)


## function varint


```haxe
function varint(_buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Binary.hx#L122>)


## function write


```haxe
function write(_w:stdgo._internal.io.Writer, _order:stdgo.encoding.binary.ByteOrder, _data:stdgo.AnyInterface):Void
```


[\(view code\)](<./Binary.hx#L55>)


# Typedefs


```haxe
import stdgo.encoding.binary.*
```


## typedef AppendByteOrder


```haxe
typedef AppendByteOrder = stdgo._internal.encoding.binary.AppendByteOrder;
```


## typedef BlankFields


```haxe
typedef BlankFields = Dynamic;
```


## typedef BlankFieldsProbe


```haxe
typedef BlankFieldsProbe = Dynamic;
```


## typedef ByteOrder


```haxe
typedef ByteOrder = stdgo._internal.encoding.binary.ByteOrder;
```


## typedef Struct


```haxe
typedef Struct = Dynamic;
```


## typedef T\_


```haxe
typedef T_ = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.encoding.binary.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.encoding.binary.T__struct_1;
```


## typedef T\_\_struct\_1\_asInterface


```haxe
typedef T__struct_1_asInterface = Dynamic;
```


## typedef T\_\_struct\_1\_static\_extension


```haxe
typedef T__struct_1_static_extension = Dynamic;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.encoding.binary.T__struct_2;
```


## typedef T\_\_struct\_2\_asInterface


```haxe
typedef T__struct_2_asInterface = Dynamic;
```


## typedef T\_\_struct\_2\_static\_extension


```haxe
typedef T__struct_2_static_extension = Dynamic;
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = stdgo._internal.encoding.binary.T__struct_3;
```


## typedef T\_\_struct\_3\_asInterface


```haxe
typedef T__struct_3_asInterface = Dynamic;
```


## typedef T\_\_struct\_3\_static\_extension


```haxe
typedef T__struct_3_static_extension = Dynamic;
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = stdgo._internal.encoding.binary.T__struct_4;
```


## typedef T\_\_struct\_4\_asInterface


```haxe
typedef T__struct_4_asInterface = Dynamic;
```


## typedef T\_\_struct\_4\_static\_extension


```haxe
typedef T__struct_4_static_extension = Dynamic;
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = stdgo._internal.encoding.binary.T__struct_5;
```


## typedef T\_\_struct\_5\_asInterface


```haxe
typedef T__struct_5_asInterface = Dynamic;
```


## typedef T\_\_struct\_5\_static\_extension


```haxe
typedef T__struct_5_static_extension = Dynamic;
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = stdgo._internal.encoding.binary.T__struct_6;
```


## typedef T\_\_struct\_6\_asInterface


```haxe
typedef T__struct_6_asInterface = Dynamic;
```


## typedef T\_\_struct\_6\_static\_extension


```haxe
typedef T__struct_6_static_extension = Dynamic;
```


## typedef T\_bigEndian


```haxe
typedef T_bigEndian = Dynamic;
```


## typedef T\_bigEndian\_asInterface


```haxe
typedef T_bigEndian_asInterface = Dynamic;
```


## typedef T\_bigEndian\_static\_extension


```haxe
typedef T_bigEndian_static_extension = Dynamic;
```


## typedef T\_byteSliceReader


```haxe
typedef T_byteSliceReader = Dynamic;
```


## typedef T\_byteSliceReader\_asInterface


```haxe
typedef T_byteSliceReader_asInterface = Dynamic;
```


## typedef T\_byteSliceReader\_static\_extension


```haxe
typedef T_byteSliceReader_static_extension = Dynamic;
```


## typedef T\_coder


```haxe
typedef T_coder = Dynamic;
```


## typedef T\_decoder


```haxe
typedef T_decoder = stdgo._internal.encoding.binary.T_decoder;
```


## typedef T\_decoder\_asInterface


```haxe
typedef T_decoder_asInterface = Dynamic;
```


## typedef T\_decoder\_static\_extension


```haxe
typedef T_decoder_static_extension = Dynamic;
```


## typedef T\_encoder


```haxe
typedef T_encoder = stdgo._internal.encoding.binary.T_encoder;
```


## typedef T\_encoder\_asInterface


```haxe
typedef T_encoder_asInterface = Dynamic;
```


## typedef T\_encoder\_static\_extension


```haxe
typedef T_encoder_static_extension = Dynamic;
```


## typedef T\_littleEndian


```haxe
typedef T_littleEndian = Dynamic;
```


## typedef T\_littleEndian\_asInterface


```haxe
typedef T_littleEndian_asInterface = Dynamic;
```


## typedef T\_littleEndian\_static\_extension


```haxe
typedef T_littleEndian_static_extension = Dynamic;
```


## typedef T\_nativeEndian


```haxe
typedef T_nativeEndian = Dynamic;
```


## typedef T\_nativeEndian\_asInterface


```haxe
typedef T_nativeEndian_asInterface = Dynamic;
```


## typedef T\_nativeEndian\_static\_extension


```haxe
typedef T_nativeEndian_static_extension = Dynamic;
```


## typedef T\_testByteOrder\_13\_\_\_localname\_\_\_byteOrder


```haxe
typedef T_testByteOrder_13___localname___byteOrder = stdgo._internal.encoding.binary.T_testByteOrder_13___localname___byteOrder;
```


## typedef T\_testNoFixedSize\_14\_\_\_localname\_\_\_Person


```haxe
typedef T_testNoFixedSize_14___localname___Person = Dynamic;
```


## typedef T\_testSizeStructCache\_11\_\_\_localname\_\_\_foo


```haxe
typedef T_testSizeStructCache_11___localname___foo = Dynamic;
```


## typedef T\_testSizeStructCache\_12\_\_\_localname\_\_\_bar


```haxe
typedef T_testSizeStructCache_12___localname___bar = Dynamic;
```


## typedef Unexported


```haxe
typedef Unexported = Dynamic;
```


