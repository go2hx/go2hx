# Module: `stdgo.encoding.binary`

[(view library index)](../../stdgo.md)


# Overview



Package binary implements simple translation between numbers and byte
sequences and encoding and decoding of varints.  


Numbers are translated by reading and writing fixed\-size values.
A fixed\-size value is either a fixed\-size arithmetic
type \(bool, int8, uint8, int16, float32, complex64, ...\)
or an array or struct containing only fixed\-size values.  


The varint functions encode and decode single integer values using
a variable\-length encoding; smaller values require fewer bytes.
For a specification, see
https://developers.google.com/protocol-buffers/docs/encoding.  


This package favors simplicity over efficiency. Clients that require
high\-performance serialization, especially for large data structures,
should look at more advanced solutions such as the encoding/gob
package or protocol buffers.  

stdgo/internal/Macro.macro.hx:43: non hxb types:,376

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _checkResult(_t:stdgo.Ref<stdgo.testing.T_>, _dir:stdgo.GoString, _order:stdgo.encoding.binary.ByteOrder, _err:stdgo.Error, _have:stdgo.AnyInterface, _want:stdgo.AnyInterface):Void`](<#function-_checkresult>)

- [`function _dataSize(_v:stdgo.reflect.Value):stdgo.GoInt`](<#function-_datasize>)

- [`function _intDataSize(_data:stdgo.AnyInterface):stdgo.GoInt`](<#function-_intdatasize>)

- [`function _sizeof(_t:stdgo.reflect.Type_):stdgo.GoInt`](<#function-_sizeof>)

- [`function _testConstant(_t:stdgo.Ref<stdgo.testing.T_>, _w:stdgo.GoUInt, _max:stdgo.GoInt):Void`](<#function-_testconstant>)

- [`function _testOverflow(_t:stdgo.Ref<stdgo.testing.T_>, _buf:stdgo.Slice<stdgo.GoByte>, _x0:stdgo.GoUInt64, _n0:stdgo.GoInt, _err0:stdgo.Error):Void`](<#function-_testoverflow>)

- [`function _testPutUint64SmallSliceLengthPanics():Bool`](<#function-_testputuint64smallslicelengthpanics>)

- [`function _testRead(_t:stdgo.Ref<stdgo.testing.T_>, _order:stdgo.encoding.binary.ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void`](<#function-_testread>)

- [`function _testReadInvalidDestination(_t:stdgo.Ref<stdgo.testing.T_>, _order:stdgo.encoding.binary.ByteOrder):Void`](<#function-_testreadinvaliddestination>)

- [`function _testUint64SmallSliceLengthPanics():Bool`](<#function-_testuint64smallslicelengthpanics>)

- [`function _testUvarint(_t:stdgo.Ref<stdgo.testing.T_>, _x:stdgo.GoUInt64):Void`](<#function-_testuvarint>)

- [`function _testVarint(_t:stdgo.Ref<stdgo.testing.T_>, _x:stdgo.GoInt64):Void`](<#function-_testvarint>)

- [`function _testWrite(_t:stdgo.Ref<stdgo.testing.T_>, _order:stdgo.encoding.binary.ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void`](<#function-_testwrite>)

- [`function appendUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte>`](<#function-appenduvarint>)

- [`function appendVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):stdgo.Slice<stdgo.GoByte>`](<#function-appendvarint>)

- [`function benchmarkAppendUint16(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappenduint16>)

- [`function benchmarkAppendUint32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappenduint32>)

- [`function benchmarkAppendUint64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappenduint64>)

- [`function benchmarkLittleEndianAppendUint16(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklittleendianappenduint16>)

- [`function benchmarkLittleEndianAppendUint32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklittleendianappenduint32>)

- [`function benchmarkLittleEndianAppendUint64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklittleendianappenduint64>)

- [`function benchmarkLittleEndianPutUint16(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklittleendianputuint16>)

- [`function benchmarkLittleEndianPutUint32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklittleendianputuint32>)

- [`function benchmarkLittleEndianPutUint64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklittleendianputuint64>)

- [`function benchmarkPutUint16(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkputuint16>)

- [`function benchmarkPutUint32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkputuint32>)

- [`function benchmarkPutUint64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkputuint64>)

- [`function benchmarkPutUvarint32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkputuvarint32>)

- [`function benchmarkPutUvarint64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkputuvarint64>)

- [`function benchmarkReadFloats(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreadfloats>)

- [`function benchmarkReadInts(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreadints>)

- [`function benchmarkReadSlice1000Float32s(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreadslice1000float32s>)

- [`function benchmarkReadSlice1000Int32s(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreadslice1000int32s>)

- [`function benchmarkReadSlice1000Uint8s(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreadslice1000uint8s>)

- [`function benchmarkReadStruct(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreadstruct>)

- [`function benchmarkWriteFloats(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkwritefloats>)

- [`function benchmarkWriteInts(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkwriteints>)

- [`function benchmarkWriteSlice1000Float32s(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkwriteslice1000float32s>)

- [`function benchmarkWriteSlice1000Int32s(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkwriteslice1000int32s>)

- [`function benchmarkWriteSlice1000Uint8s(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkwriteslice1000uint8s>)

- [`function benchmarkWriteStruct(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkwritestruct>)

- [`function putUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):stdgo.GoInt`](<#function-putuvarint>)

- [`function putVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):stdgo.GoInt`](<#function-putvarint>)

- [`function read(_r:stdgo.io.Reader, _order:stdgo.encoding.binary.ByteOrder, _data:stdgo.AnyInterface):stdgo.Error`](<#function-read>)

- [`function readUvarint(_r:stdgo.io.ByteReader):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt64;
}`](<#function-readuvarint>)

- [`function readVarint(_r:stdgo.io.ByteReader):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}`](<#function-readvarint>)

- [`function size(_v:stdgo.AnyInterface):stdgo.GoInt`](<#function-size>)

- [`function testBigEndianPtrWrite(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbigendianptrwrite>)

- [`function testBigEndianRead(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbigendianread>)

- [`function testBigEndianWrite(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbigendianwrite>)

- [`function testBlankFields(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testblankfields>)

- [`function testBufferTooBigWithOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuffertoobigwithoverflow>)

- [`function testBufferTooSmall(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuffertoosmall>)

- [`function testByteOrder(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbyteorder>)

- [`function testConstants(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testconstants>)

- [`function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testearlyboundschecks>)

- [`function testLittleEndianPtrWrite(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlittleendianptrwrite>)

- [`function testLittleEndianRead(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlittleendianread>)

- [`function testLittleEndianWrite(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlittleendianwrite>)

- [`function testNativeEndian(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnativeendian>)

- [`function testNoFixedSize(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnofixedsize>)

- [`function testNonCanonicalZero(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnoncanonicalzero>)

- [`function testOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testoverflow>)

- [`function testReadBool(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadbool>)

- [`function testReadBoolSlice(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadboolslice>)

- [`function testReadErrorMsg(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderrormsg>)

- [`function testReadInvalidDestination(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadinvaliddestination>)

- [`function testReadSlice(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadslice>)

- [`function testReadTruncated(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadtruncated>)

- [`function testSizeInvalid(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsizeinvalid>)

- [`function testSizeStructCache(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsizestructcache>)

- [`function testSliceRoundTrip(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsliceroundtrip>)

- [`function testUnexportedRead(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testunexportedread>)

- [`function testUvarint(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testuvarint>)

- [`function testVarint(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testvarint>)

- [`function testWriteSlice(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriteslice>)

- [`function testWriteT(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwritet>)

- [`function uvarint(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoUInt64;
}`](<#function-uvarint>)

- [`function varint(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoInt64;
}`](<#function-varint>)

- [`function write(_w:stdgo.io.Writer, _order:stdgo.encoding.binary.ByteOrder, _data:stdgo.AnyInterface):stdgo.Error`](<#function-write>)

- [class BlankFields](<#class-blankfields>)

  - [`function new(?a:stdgo.GoUInt32, ?__4:stdgo.GoInt32, ?b:stdgo.GoFloat64, ?__5:stdgo.GoArray<stdgo.GoInt16>, ?c:stdgo.GoUInt8, ?__6:stdgo.GoArray<stdgo.GoUInt8>, ?__7:{ _f:stdgo.GoArray<stdgo.GoFloat32>;}):Void`](<#blankfields-function-new>)

- [class BlankFieldsProbe](<#class-blankfieldsprobe>)

  - [`function new(?a:stdgo.GoUInt32, ?p0:stdgo.GoInt32, ?b:stdgo.GoFloat64, ?p1:stdgo.GoArray<stdgo.GoInt16>, ?c:stdgo.GoUInt8, ?p2:stdgo.GoArray<stdgo.GoUInt8>, ?p3:{ ():stdgo.GoArray<stdgo.GoFloat32>;}):Void`](<#blankfieldsprobe-function-new>)

- [class Struct](<#class-struct>)

  - [`function new(?int8:stdgo.GoInt8, ?int16:stdgo.GoInt16, ?int32:stdgo.GoInt32, ?int64:stdgo.GoInt64, ?uint8:stdgo.GoUInt8, ?uint16:stdgo.GoUInt16, ?uint32:stdgo.GoUInt32, ?uint64:stdgo.GoUInt64, ?float32:stdgo.GoFloat32, ?float64:stdgo.GoFloat64, ?complex64:stdgo.GoComplex64, ?complex128:stdgo.GoComplex128, ?array:stdgo.GoArray<stdgo.GoUInt8>, ?bool_:Bool, ?boolArray:stdgo.GoArray<Bool>):Void`](<#struct-function-new>)

- [class T\_](<#class-t_>)

  - [`function new(?int_:stdgo.GoInt, ?uint:stdgo.GoUInt, ?uintptr:stdgo.GoUIntptr, ?array:stdgo.GoArray<stdgo.GoInt>):Void`](<#t_-function-new>)

- [class T\_testNoFixedSize\_14\_\_\_localname\_\_\_Person](<#class-t_testnofixedsize_14localnameperson>)

  - [`function new(?age:stdgo.GoInt, ?weight:stdgo.GoFloat64, ?height:stdgo.GoFloat64):Void`](<#t_testnofixedsize_14localnameperson-function-new>)

- [class T\_testSizeStructCache\_11\_\_\_localname\_\_\_foo](<#class-t_testsizestructcache_11localnamefoo>)

  - [`function new(?a:stdgo.GoUInt32):Void`](<#t_testsizestructcache_11localnamefoo-function-new>)

- [class T\_testSizeStructCache\_12\_\_\_localname\_\_\_bar](<#class-t_testsizestructcache_12localnamebar>)

  - [`function new(?a:stdgo.encoding.binary.Struct, ?b:stdgo.encoding.binary.T_testSizeStructCache_11___localname___foo, ?c:stdgo.encoding.binary.Struct):Void`](<#t_testsizestructcache_12localnamebar-function-new>)

- [class Unexported](<#class-unexported>)

  - [`function new(?_a:stdgo.GoInt32):Void`](<#unexported-function-new>)

- [typedef AppendByteOrder](<#typedef-appendbyteorder>)

- [typedef ByteOrder](<#typedef-byteorder>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_decoder](<#typedef-t_decoder>)

- [typedef T\_encoder](<#typedef-t_encoder>)

- [typedef T\_testByteOrder\_13\_\_\_localname\_\_\_byteOrder](<#typedef-t_testbyteorder_13localnamebyteorder>)

# Examples


- [`exampleByteOrder_get`](<#examplebyteorder_get>)

- [`exampleByteOrder_put`](<#examplebyteorder_put>)

- [`examplePutUvarint`](<#exampleputuvarint>)

- [`examplePutVarint`](<#exampleputvarint>)

- [`exampleRead`](<#exampleread>)

- [`exampleRead_multi`](<#exampleread_multi>)

- [`exampleUvarint`](<#exampleuvarint>)

- [`exampleVarint`](<#examplevarint>)

- [`exampleWrite`](<#examplewrite>)

- [`exampleWrite_multi`](<#examplewrite_multi>)

# Constants


```haxe
import stdgo.encoding.binary.Binary
```


```haxe
final maxVarintLen16:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```



MaxVarintLenN is the maximum length of a varint\-encoded N\-bit integer.  

```haxe
final maxVarintLen32:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```



MaxVarintLenN is the maximum length of a varint\-encoded N\-bit integer.  

```haxe
final maxVarintLen64:stdgo.GoUInt64 = ((10i64 : stdgo.GoUInt64))
```



MaxVarintLenN is the maximum length of a varint\-encoded N\-bit integer.  

# Variables


```haxe
import stdgo.encoding.binary.Binary
```


```haxe
var _big:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _errOverflow:stdgo.Error
```


```haxe
var _intArrays:stdgo.Slice<stdgo.AnyInterface>
```



Addresses of arrays are easier to manipulate with reflection than are slices.  

```haxe
var _little:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _putbuf:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _res:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _s:stdgo.encoding.binary.Struct
```


```haxe
var _src:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _structSize:stdgo.sync.Map_
```



map\[reflect.Type\]int  

```haxe
var _tests:stdgo.Slice<stdgo.GoInt64>
```


```haxe
var bigEndian:stdgo.encoding.binary.T_bigEndian
```



BigEndian is the big\-endian implementation of ByteOrder and AppendByteOrder.  

```haxe
var littleEndian:stdgo.encoding.binary.T_littleEndian
```



LittleEndian is the little\-endian implementation of ByteOrder and AppendByteOrder.  

```haxe
var nativeEndian:stdgo.encoding.binary.T_nativeEndian
```



NativeEndian is the native\-endian implementation of ByteOrder and AppendByteOrder.  

# Functions


```haxe
import stdgo.encoding.binary.Binary
```


## function \_checkResult


```haxe
function _checkResult(_t:stdgo.Ref<stdgo.testing.T_>, _dir:stdgo.GoString, _order:stdgo.encoding.binary.ByteOrder, _err:stdgo.Error, _have:stdgo.AnyInterface, _want:stdgo.AnyInterface):Void
```


[\(view code\)](<./Binary.hx#L1200>)


## function \_dataSize


```haxe
function _dataSize(_v:stdgo.reflect.Value):stdgo.GoInt
```



dataSize returns the number of bytes the actual data represented by v occupies in memory.
For compound structures, it sums the sizes of the elements. Thus, for instance, for a slice
it returns the length of the slice times the element size and does not count the memory
occupied by the header. If the type of v is not acceptable, dataSize returns \-1.  

[\(view code\)](<./Binary.hx#L1077>)


## function \_intDataSize


```haxe
function _intDataSize(_data:stdgo.AnyInterface):stdgo.GoInt
```



intDataSize returns the size of the data required to represent the data when encoded.
It returns zero if the type cannot be implemented by the fast path in Read or Write.  

[\(view code\)](<./Binary.hx#L1142>)


## function \_sizeof


```haxe
function _sizeof(_t:stdgo.reflect.Type_):stdgo.GoInt
```



sizeof returns the size \>= 0 of variables for the given type or \-1 if the type is not acceptable.  

[\(view code\)](<./Binary.hx#L1109>)


## function \_testConstant


```haxe
function _testConstant(_t:stdgo.Ref<stdgo.testing.T_>, _w:stdgo.GoUInt, _max:stdgo.GoInt):Void
```


[\(view code\)](<./Binary.hx#L2256>)


## function \_testOverflow


```haxe
function _testOverflow(_t:stdgo.Ref<stdgo.testing.T_>, _buf:stdgo.Slice<stdgo.GoByte>, _x0:stdgo.GoUInt64, _n0:stdgo.GoInt, _err0:stdgo.Error):Void
```


[\(view code\)](<./Binary.hx#L2434>)


## function \_testPutUint64SmallSliceLengthPanics


```haxe
function _testPutUint64SmallSliceLengthPanics():Bool
```


[\(view code\)](<./Binary.hx#L1598>)


## function \_testRead


```haxe
function _testRead(_t:stdgo.Ref<stdgo.testing.T_>, _order:stdgo.encoding.binary.ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void
```


[\(view code\)](<./Binary.hx#L1209>)


## function \_testReadInvalidDestination


```haxe
function _testReadInvalidDestination(_t:stdgo.Ref<stdgo.testing.T_>, _order:stdgo.encoding.binary.ByteOrder):Void
```


[\(view code\)](<./Binary.hx#L1725>)


## function \_testUint64SmallSliceLengthPanics


```haxe
function _testUint64SmallSliceLengthPanics():Bool
```


[\(view code\)](<./Binary.hx#L1555>)


## function \_testUvarint


```haxe
function _testUvarint(_t:stdgo.Ref<stdgo.testing.T_>, _x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Binary.hx#L2291>)


## function \_testVarint


```haxe
function _testVarint(_t:stdgo.Ref<stdgo.testing.T_>, _x:stdgo.GoInt64):Void
```


[\(view code\)](<./Binary.hx#L2268>)


## function \_testWrite


```haxe
function _testWrite(_t:stdgo.Ref<stdgo.testing.T_>, _order:stdgo.encoding.binary.ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void
```


[\(view code\)](<./Binary.hx#L1214>)


## function appendUvarint


```haxe
function appendUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte>
```



AppendUvarint appends the varint\-encoded form of x,
as generated by PutUvarint, to buf and returns the extended buffer.  

[\(view code\)](<./Binary.hx#L2124>)


## function appendVarint


```haxe
function appendVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):stdgo.Slice<stdgo.GoByte>
```



AppendVarint appends the varint\-encoded form of x,
as generated by PutVarint, to buf and returns the extended buffer.  

[\(view code\)](<./Binary.hx#L2176>)


## function benchmarkAppendUint16


```haxe
function benchmarkAppendUint16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1902>)


## function benchmarkAppendUint32


```haxe
function benchmarkAppendUint32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1920>)


## function benchmarkAppendUint64


```haxe
function benchmarkAppendUint64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1938>)


## function benchmarkLittleEndianAppendUint16


```haxe
function benchmarkLittleEndianAppendUint16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1956>)


## function benchmarkLittleEndianAppendUint32


```haxe
function benchmarkLittleEndianAppendUint32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1974>)


## function benchmarkLittleEndianAppendUint64


```haxe
function benchmarkLittleEndianAppendUint64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1992>)


## function benchmarkLittleEndianPutUint16


```haxe
function benchmarkLittleEndianPutUint16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1947>)


## function benchmarkLittleEndianPutUint32


```haxe
function benchmarkLittleEndianPutUint32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1965>)


## function benchmarkLittleEndianPutUint64


```haxe
function benchmarkLittleEndianPutUint64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1983>)


## function benchmarkPutUint16


```haxe
function benchmarkPutUint16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1893>)


## function benchmarkPutUint32


```haxe
function benchmarkPutUint32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1911>)


## function benchmarkPutUint64


```haxe
function benchmarkPutUint64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1929>)


## function benchmarkPutUvarint32


```haxe
function benchmarkPutUvarint32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2506>)


## function benchmarkPutUvarint64


```haxe
function benchmarkPutUvarint64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2521>)


## function benchmarkReadFloats


```haxe
function benchmarkReadFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2001>)


## function benchmarkReadInts


```haxe
function benchmarkReadInts(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1821>)


## function benchmarkReadSlice1000Float32s


```haxe
function benchmarkReadSlice1000Float32s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2052>)


## function benchmarkReadSlice1000Int32s


```haxe
function benchmarkReadSlice1000Int32s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1778>)


## function benchmarkReadSlice1000Uint8s


```haxe
function benchmarkReadSlice1000Uint8s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2081>)


## function benchmarkReadStruct


```haxe
function benchmarkReadStruct(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1792>)


## function benchmarkWriteFloats


```haxe
function benchmarkWriteFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2034>)


## function benchmarkWriteInts


```haxe
function benchmarkWriteInts(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1854>)


## function benchmarkWriteSlice1000Float32s


```haxe
function benchmarkWriteSlice1000Float32s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2066>)


## function benchmarkWriteSlice1000Int32s


```haxe
function benchmarkWriteSlice1000Int32s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1878>)


## function benchmarkWriteSlice1000Uint8s


```haxe
function benchmarkWriteSlice1000Uint8s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2095>)


## function benchmarkWriteStruct


```haxe
function benchmarkWriteStruct(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1811>)


## function putUvarint


```haxe
function putUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):stdgo.GoInt
```



PutUvarint encodes a uint64 into buf and returns the number of bytes written.
If the buffer is too small, PutUvarint will panic.  

### examplePutUvarint


<details><summary></summary>
<p>


```haxe
function examplePutUvarint():Void {
        var _buf = new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        for (__0 => _x in (new stdgo.Slice<stdgo.GoUInt64>(6, 6, (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (127i64 : stdgo.GoUInt64), (128i64 : stdgo.GoUInt64), (255i64 : stdgo.GoUInt64), (256i64 : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt64>)) {
            var _n:stdgo.GoInt = stdgo.encoding.binary.Binary.putUvarint(_buf, _x);
            stdgo.fmt.Fmt.printf(("%x\n" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L2135>)


## function putVarint


```haxe
function putVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):stdgo.GoInt
```



PutVarint encodes an int64 into buf and returns the number of bytes written.
If the buffer is too small, PutVarint will panic.  

### examplePutVarint


<details><summary></summary>
<p>


```haxe
function examplePutVarint():Void {
        var _buf = new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        for (__0 => _x in (new stdgo.Slice<stdgo.GoInt64>(
9,
9,
(-65i64 : stdgo.GoInt64),
(-64i64 : stdgo.GoInt64),
(-2i64 : stdgo.GoInt64),
(-1i64 : stdgo.GoInt64),
(0i64 : stdgo.GoInt64),
(1i64 : stdgo.GoInt64),
(2i64 : stdgo.GoInt64),
(63i64 : stdgo.GoInt64),
(64i64 : stdgo.GoInt64)) : stdgo.Slice<stdgo.GoInt64>)) {
            var _n:stdgo.GoInt = stdgo.encoding.binary.Binary.putVarint(_buf, _x);
            stdgo.fmt.Fmt.printf(("%x\n" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L2187>)


## function read


```haxe
function read(_r:stdgo.io.Reader, _order:stdgo.encoding.binary.ByteOrder, _data:stdgo.AnyInterface):stdgo.Error
```



Read reads structured binary data from r into data.
Data must be a pointer to a fixed\-size value or a slice
of fixed\-size values.
Bytes read from r are decoded using the specified byte order
and written to successive fields of the data.
When decoding boolean values, a zero byte is decoded as false, and
any other non\-zero byte is decoded as true.
When reading into structs, the field data for fields with
blank \(\_\) field names is skipped; i.e., blank field names
may be used for padding.
When reading into a struct, all non\-blank fields must be exported
or Read may panic.  


The error is EOF only if no bytes were read.
If an EOF happens after reading some but not all the bytes,
Read returns ErrUnexpectedEOF.  

### exampleRead


<details><summary></summary>
<p>


```haxe
function exampleRead():Void {
        var _pi:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(8, 8, (24 : stdgo.GoUInt8), (45 : stdgo.GoUInt8), (68 : stdgo.GoUInt8), (84 : stdgo.GoUInt8), (251 : stdgo.GoUInt8), (33 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (64 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        var _buf = stdgo.bytes.Bytes.newReader(_b);
        var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_pi)));
        if (_err != null) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Read failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(_pi));
    }
```


</p>
</details>


### exampleRead\_multi


<details><summary></summary>
<p>


```haxe
function exampleRead_multi():Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(
14,
14,
(24 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(68 : stdgo.GoUInt8),
(84 : stdgo.GoUInt8),
(251 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(190 : stdgo.GoUInt8),
(239 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        var _r = stdgo.bytes.Bytes.newReader(_b);
        var _data:T__struct_7 = ({ pi : (0 : stdgo.GoFloat64), uate : (0 : stdgo.GoUInt8), mine : new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 3) (0 : stdgo.GoUInt8)]), too : (0 : stdgo.GoUInt16) } : T__struct_7);
        {
            var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(stdgo.Go.asInterface(_r), stdgo.Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.Ref<T__struct_7>))));
            if (_err != null) {
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Read failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_data.pi));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_data.uate));
        stdgo.fmt.Fmt.printf(("% x\n" : stdgo.GoString), stdgo.Go.toInterface(_data.mine));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_data.too));
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L765>)


## function readUvarint


```haxe
function readUvarint(_r:stdgo.io.ByteReader):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt64;
}
```



ReadUvarint reads an encoded unsigned integer from r and returns it as a uint64.
The error is EOF only if no bytes were read.
If an EOF happens after reading some but not all the bytes,
ReadUvarint returns io.ErrUnexpectedEOF.  

[\(view code\)](<./Binary.hx#L2217>)


## function readVarint


```haxe
function readVarint(_r:stdgo.io.ByteReader):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



ReadVarint reads an encoded signed integer from r and returns it as an int64.
The error is EOF only if no bytes were read.
If an EOF happens after reading some but not all the bytes,
ReadVarint returns io.ErrUnexpectedEOF.  

[\(view code\)](<./Binary.hx#L2248>)


## function size


```haxe
function size(_v:stdgo.AnyInterface):stdgo.GoInt
```



Size returns how many bytes Write would generate to encode the value v, which
must be a fixed\-size value or a slice of fixed\-size values, or a pointer to such data.
If v is neither of these, Size returns \-1.  

[\(view code\)](<./Binary.hx#L1068>)


## function testBigEndianPtrWrite


```haxe
function testBigEndianPtrWrite(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1234>)


## function testBigEndianRead


```haxe
function testBigEndianRead(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1228>)


## function testBigEndianWrite


```haxe
function testBigEndianWrite(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1231>)


## function testBlankFields


```haxe
function testBlankFields(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1330>)


## function testBufferTooBigWithOverflow


```haxe
function testBufferTooBigWithOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Ensure that we catch overflows of bytes going past MaxVarintLen64.
See issue https://golang.org/issues/41185  

[\(view code\)](<./Binary.hx#L2363>)


## function testBufferTooSmall


```haxe
function testBufferTooSmall(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L2338>)


## function testByteOrder


```haxe
function testByteOrder(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1650>)


## function testConstants


```haxe
function testConstants(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L2263>)


## function testEarlyBoundsChecks


```haxe
function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1713>)


## function testLittleEndianPtrWrite


```haxe
function testLittleEndianPtrWrite(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1225>)


## function testLittleEndianRead


```haxe
function testLittleEndianRead(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1219>)


## function testLittleEndianWrite


```haxe
function testLittleEndianWrite(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1222>)


## function testNativeEndian


```haxe
function testNativeEndian(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L2109>)


## function testNoFixedSize


```haxe
function testNoFixedSize(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1765>)


## function testNonCanonicalZero


```haxe
function testNonCanonicalZero(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L2499>)


## function testOverflow


```haxe
function testOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L2452>)


## function testReadBool


```haxe
function testReadBool(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1247>)


## function testReadBoolSlice


```haxe
function testReadBoolSlice(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1259>)


## function testReadErrorMsg


```haxe
function testReadErrorMsg(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1500>)


## function testReadInvalidDestination


```haxe
function testReadInvalidDestination(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1721>)


## function testReadSlice


```haxe
function testReadSlice(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1237>)


## function testReadTruncated


```haxe
function testReadTruncated(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1522>)


## function testSizeInvalid


```haxe
function testSizeInvalid(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1431>)


## function testSizeStructCache


```haxe
function testSizeStructCache(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1400>)


## function testSliceRoundTrip


```haxe
function testSliceRoundTrip(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1264>)


## function testUnexportedRead


```haxe
function testUnexportedRead(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1454>)


## function testUvarint


```haxe
function testUvarint(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L2327>)


## function testVarint


```haxe
function testVarint(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L2314>)


## function testWriteSlice


```haxe
function testWriteSlice(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1242>)


## function testWriteT


```haxe
function testWriteT(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Binary.hx#L1302>)


## function uvarint


```haxe
function uvarint(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoUInt64;
}
```



Uvarint decodes a uint64 from buf and returns that value and the
number of bytes read \(\> 0\). If an error occurred, the value is 0
and the number of bytes n is \<= 0 meaning:  

```
	n == 0: buf too small
	n  < 0: value larger than 64 bits (overflow)
	        and -n is the number of bytes read
```
### exampleUvarint


<details><summary></summary>
<p>


```haxe
function exampleUvarint():Void {
        var _inputs = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(6, 6, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, (1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, (2 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, (127 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, (128 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, (255 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, (128 : stdgo.GoUInt8), (2 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (__0 => _b in _inputs) {
            var __tmp__ = stdgo.encoding.binary.Binary.uvarint(_b), _x:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
            if (_n != ((_b.length))) {
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Uvarint did not consume all of in" : stdgo.GoString)));
            };
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_x));
        };
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L2154>)


## function varint


```haxe
function varint(_buf:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoInt64;
}
```



Varint decodes an int64 from buf and returns that value and the
number of bytes read \(\> 0\). If an error occurred, the value is 0
and the number of bytes n is \<= 0 with the following meaning:  

```
	n == 0: buf too small
	n  < 0: value larger than 64 bits (overflow)
	        and -n is the number of bytes read
```
### exampleVarint


<details><summary></summary>
<p>


```haxe
function exampleVarint():Void {
        var _inputs = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(
9,
9,
(new stdgo.Slice<stdgo.GoUInt8>(2, 2, (129 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>),
(new stdgo.Slice<stdgo.GoUInt8>(1, 1, (127 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>),
(new stdgo.Slice<stdgo.GoUInt8>(1, 1, (3 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>),
(new stdgo.Slice<stdgo.GoUInt8>(1, 1, (1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>),
(new stdgo.Slice<stdgo.GoUInt8>(1, 1, (0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>),
(new stdgo.Slice<stdgo.GoUInt8>(1, 1, (2 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>),
(new stdgo.Slice<stdgo.GoUInt8>(1, 1, (4 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>),
(new stdgo.Slice<stdgo.GoUInt8>(1, 1, (126 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>),
(new stdgo.Slice<stdgo.GoUInt8>(2, 2, (128 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (__0 => _b in _inputs) {
            var __tmp__ = stdgo.encoding.binary.Binary.varint(_b), _x:stdgo.GoInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
            if (_n != ((_b.length))) {
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Varint did not consume all of in" : stdgo.GoString)));
            };
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_x));
        };
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L2203>)


## function write


```haxe
function write(_w:stdgo.io.Writer, _order:stdgo.encoding.binary.ByteOrder, _data:stdgo.AnyInterface):stdgo.Error
```



Write writes the binary representation of data into w.
Data must be a fixed\-size value or a slice of fixed\-size
values, or a pointer to such data.
Boolean values encode as one byte: 1 for true, and 0 for false.
Bytes written to w are encoded using the specified byte order
and read from successive fields of the data.
When writing structs, zero values are written for fields
with blank \(\_\) field names.  

### exampleWrite


<details><summary></summary>
<p>


```haxe
function exampleWrite():Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo.bytes.Bytes.Buffer>);
        var _pi:stdgo.GoFloat64 = (3.141592653589793 : stdgo.GoFloat64);
        var _err:stdgo.Error = stdgo.encoding.binary.Binary.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), stdgo.Go.toInterface(_pi));
        if (_err != null) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Write failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
    }
```


</p>
</details>


### exampleWrite\_multi


<details><summary></summary>
<p>


```haxe
function exampleWrite_multi():Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo.bytes.Bytes.Buffer>);
        var _data:stdgo.Slice<stdgo.AnyInterface> = (new stdgo.Slice<stdgo.AnyInterface>(3, 3, stdgo.Go.toInterface((61374 : stdgo.GoUInt16)), stdgo.Go.toInterface((-54 : stdgo.GoInt8)), stdgo.Go.toInterface((254 : stdgo.GoUInt8))) : stdgo.Slice<stdgo.AnyInterface>);
        for (__0 => _v in _data) {
            var _err:stdgo.Error = stdgo.encoding.binary.Binary.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), _v);
            if (_err != null) {
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Write failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L908>)


# Classes


```haxe
import stdgo.encoding.binary.*
```


## class BlankFields


```haxe
var __4:stdgo.GoInt32
```


```haxe
var __5:stdgo.GoArray<stdgo.GoInt16>
```


```haxe
var __6:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var __7:{
	_f:stdgo.GoArray<stdgo.GoFloat32>;
}
```


```haxe
var a:stdgo.GoUInt32
```


```haxe
var b:stdgo.GoFloat64
```


```haxe
var c:stdgo.GoUInt8
```


### BlankFields function new


```haxe
function new(?a:stdgo.GoUInt32, ?__4:stdgo.GoInt32, ?b:stdgo.GoFloat64, ?__5:stdgo.GoArray<stdgo.GoInt16>, ?c:stdgo.GoUInt8, ?__6:stdgo.GoArray<stdgo.GoUInt8>, ?__7:{
	_f:stdgo.GoArray<stdgo.GoFloat32>;
}):Void
```


[\(view code\)](<./Binary.hx#L528>)


## class BlankFieldsProbe


```haxe
var a:stdgo.GoUInt32
```


```haxe
var b:stdgo.GoFloat64
```


```haxe
var c:stdgo.GoUInt8
```


```haxe
var p0:stdgo.GoInt32
```


```haxe
var p1:stdgo.GoArray<stdgo.GoInt16>
```


```haxe
var p2:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var p3:{
	():stdgo.GoArray<stdgo.GoFloat32>;
}
```


### BlankFieldsProbe function new


```haxe
function new(?a:stdgo.GoUInt32, ?p0:stdgo.GoInt32, ?b:stdgo.GoFloat64, ?p1:stdgo.GoArray<stdgo.GoInt16>, ?c:stdgo.GoUInt8, ?p2:stdgo.GoArray<stdgo.GoUInt8>, ?p3:{
	():stdgo.GoArray<stdgo.GoFloat32>;
}):Void
```


[\(view code\)](<./Binary.hx#L555>)


## class Struct


```haxe
var array:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var boolArray:stdgo.GoArray<Bool>
```


```haxe
var bool_:Bool
```


```haxe
var complex128:stdgo.GoComplex128
```


```haxe
var complex64:stdgo.GoComplex64
```


```haxe
var float32:stdgo.GoFloat32
```


```haxe
var float64:stdgo.GoFloat64
```


```haxe
var int16:stdgo.GoInt16
```


```haxe
var int32:stdgo.GoInt32
```


```haxe
var int64:stdgo.GoInt64
```


```haxe
var int8:stdgo.GoInt8
```


```haxe
var uint16:stdgo.GoUInt16
```


```haxe
var uint32:stdgo.GoUInt32
```


```haxe
var uint64:stdgo.GoUInt64
```


```haxe
var uint8:stdgo.GoUInt8
```


### Struct function new


```haxe
function new(?int8:stdgo.GoInt8, ?int16:stdgo.GoInt16, ?int32:stdgo.GoInt32, ?int64:stdgo.GoInt64, ?uint8:stdgo.GoUInt8, ?uint16:stdgo.GoUInt16, ?uint32:stdgo.GoUInt32, ?uint64:stdgo.GoUInt64, ?float32:stdgo.GoFloat32, ?float64:stdgo.GoFloat64, ?complex64:stdgo.GoComplex64, ?complex128:stdgo.GoComplex128, ?array:stdgo.GoArray<stdgo.GoUInt8>, ?bool_:Bool, ?boolArray:stdgo.GoArray<Bool>):Void
```


[\(view code\)](<./Binary.hx#L453>)


## class T\_


```haxe
var array:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var int_:stdgo.GoInt
```


```haxe
var uint:stdgo.GoUInt
```


```haxe
var uintptr:stdgo.GoUIntptr
```


### T\_ function new


```haxe
function new(?int_:stdgo.GoInt, ?uint:stdgo.GoUInt, ?uintptr:stdgo.GoUIntptr, ?array:stdgo.GoArray<stdgo.GoInt>):Void
```


[\(view code\)](<./Binary.hx#L500>)


## class T\_testNoFixedSize\_14\_\_\_localname\_\_\_Person


```haxe
var age:stdgo.GoInt
```


```haxe
var height:stdgo.GoFloat64
```


```haxe
var weight:stdgo.GoFloat64
```


### T\_testNoFixedSize\_14\_\_\_localname\_\_\_Person function new


```haxe
function new(?age:stdgo.GoInt, ?weight:stdgo.GoFloat64, ?height:stdgo.GoFloat64):Void
```


[\(view code\)](<./Binary.hx#L1755>)


## class T\_testSizeStructCache\_11\_\_\_localname\_\_\_foo


```haxe
var a:stdgo.GoUInt32
```


### T\_testSizeStructCache\_11\_\_\_localname\_\_\_foo function new


```haxe
function new(?a:stdgo.GoUInt32):Void
```


[\(view code\)](<./Binary.hx#L1373>)


## class T\_testSizeStructCache\_12\_\_\_localname\_\_\_bar


```haxe
var a:stdgo.encoding.binary.Struct
```


```haxe
var b:stdgo.encoding.binary.T_testSizeStructCache_11___localname___foo
```


```haxe
var c:stdgo.encoding.binary.Struct
```


### T\_testSizeStructCache\_12\_\_\_localname\_\_\_bar function new


```haxe
function new(?a:stdgo.encoding.binary.Struct, ?b:stdgo.encoding.binary.T_testSizeStructCache_11___localname___foo, ?c:stdgo.encoding.binary.Struct):Void
```


[\(view code\)](<./Binary.hx#L1390>)


## class Unexported


```haxe
var _a:stdgo.GoInt32
```


### Unexported function new


```haxe
function new(?_a:stdgo.GoInt32):Void
```


[\(view code\)](<./Binary.hx#L576>)


# Typedefs


```haxe
import stdgo.encoding.binary.*
```


## typedef AppendByteOrder


```haxe
typedef AppendByteOrder = {
	public function string():stdgo.GoString;
	public function appendUint64(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte>;
	public function appendUint32(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte>;
	public function appendUint16(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoByte>;
};
```



AppendByteOrder specifies how to append 16\-, 32\-, or 64\-bit unsigned integers
into a byte slice.  

## typedef ByteOrder


```haxe
typedef ByteOrder = {
	public function uint64(_0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt64;
	public function uint32(_0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32;
	public function uint16(_0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt16;
	public function string():stdgo.GoString;
	public function putUint64(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt64):Void;
	public function putUint32(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt32):Void;
	public function putUint16(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt16):Void;
};
```



A ByteOrder specifies how to convert byte slices into
16\-, 32\-, or 64\-bit unsigned integers.  

## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_f:stdgo.GoArray<stdgo.GoFloat32>;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	():stdgo.GoArray<stdgo.GoFloat32>;
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_want:stdgo.GoInt;
	_val:stdgo.AnyInterface;
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	{
		stdgo.encoding.binary.Struct;
	};
};
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = {
};
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = {
	():stdgo.GoFloat64;
	<stdgo.GoInt32>;
	Dynamic;
	<stdgo.GoUInt8>;
	b:stdgo.GoUInt8;
	{
		stdgo.GoUInt8;
	};
};
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = {
	_wantValue:stdgo.GoUInt64;
	_wantN:stdgo.GoInt;
	_name:stdgo.GoString;
	_in:stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef T\_decoder


```haxe
typedef T_decoder = stdgo.encoding.binary.T_coder;
```


## typedef T\_encoder


```haxe
typedef T_encoder = stdgo.encoding.binary.T_coder;
```


## typedef T\_testByteOrder\_13\_\_\_localname\_\_\_byteOrder


```haxe
typedef T_testByteOrder_13___localname___byteOrder = {
	public function uint64(_0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt64;
	public function uint32(_0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32;
	public function uint16(_0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt16;
	public function string():stdgo.GoString;
	public function putUint64(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt64):Void;
	public function putUint32(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt32):Void;
	public function putUint16(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt16):Void;
	public function appendUint64(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte>;
	public function appendUint32(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte>;
	public function appendUint16(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoByte>;
};
```


