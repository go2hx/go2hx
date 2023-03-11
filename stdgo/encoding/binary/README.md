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

<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
=== RUN  TestLittleEndianRead
Exception: sync.load is not yet implemented
Called from stdgo.encoding.binary._Binary.$Binary_Fields_._dataSize (stdgo/encoding/binary/Binary.hx line 1060)
Called from stdgo.encoding.binary._Binary.$Binary_Fields_.read (stdgo/encoding/binary/Binary.hx line 849)
Called from stdgo.encoding.binary._Binary.$Binary_Fields_._testRead (stdgo/encoding/binary/Binary.hx line 1178)
Called from stdgo.encoding.binary._Binary.$Binary_Fields_.testLittleEndianRead (stdgo/encoding/binary/Binary.hx line 1187)
Called from stdgo.testing.M.run (stdgo/testing/Testing.hx line 355)
Called from stdgo.encoding.binary_test._Binary.$Binary_Fields_.main (stdgo/encoding/binary_test/Binary.hx line 107)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
=== RUN  TestLittleEndianRead
Exception: sync.load is not yet implemented
Called from stdgo.encoding.binary._Binary.Binary_Fields_.testLittleEndianRead (stdgo/encoding/binary/Binary.hx line 1187 column 9)
Called from stdgo.encoding.binary._Binary.Binary_Fields_._testRead (stdgo/encoding/binary/Binary.hx line 1178 column 26)
Called from stdgo.encoding.binary._Binary.Binary_Fields_.read (stdgo/encoding/binary/Binary.hx line 849 column 25)
Called from stdgo.encoding.binary._Binary.Binary_Fields_._dataSize (stdgo/encoding/binary/Binary.hx line 1060 column 35)
Called from stdgo.sync.Map__static_extension.load (stdgo/sync/Sync.hx line 1193 column 109)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

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

- [`function testBigEndianPtrWrite(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbigendianptrwrite>)

- [`function testBigEndianRead(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbigendianread>)

- [`function testBigEndianWrite(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbigendianwrite>)

- [`function testBlankFields(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testblankfields>)

- [`function testBufferTooBigWithOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuffertoobigwithoverflow>)

- [`function testBufferTooSmall(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuffertoosmall>)

- [`function testByteOrder(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbyteorder>)

- [`function testConstants(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testconstants>)

- [`function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testearlyboundschecks>)

- [`function testLittleEndianPtrWrite(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlittleendianptrwrite>)

- [`function testLittleEndianRead(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlittleendianread>)

- [`function testLittleEndianWrite(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlittleendianwrite>)

- [`function testNonCanonicalZero(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnoncanonicalzero>)

- [`function testOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testoverflow>)

- [`function testReadBool(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadbool>)

- [`function testReadBoolSlice(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadboolslice>)

- [`function testReadErrorMsg(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderrormsg>)

- [`function testReadInvalidDestination(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadinvaliddestination>)

- [`function testReadSlice(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadslice>)

- [`function testReadTruncated(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadtruncated>)

- [`function testSizeStructCache(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsizestructcache>)

- [`function testSliceRoundTrip(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsliceroundtrip>)

- [`function testUnexportedRead(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testunexportedread>)

- [`function testUvarint(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testuvarint>)

- [`function testVarint(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testvarint>)

- [`function testWriteSlice(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testwriteslice>)

- [`function testWriteT(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testwritet>)

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

- [class T](<#class-t>)

  - [`function new(?int_:Null<stdgo.GoInt>, ?uint:Null<stdgo.GoUInt>, ?uintptr:stdgo.GoUIntptr, ?array:stdgo.GoArray<stdgo.GoInt>):Void`](<#t-function-new>)

- [class T\_testSizeStructCache\_0\_\_\_localname\_\_\_foo](<#class-t_testsizestructcache_0localnamefoo>)

  - [`function new(?a:stdgo.GoUInt32):Void`](<#t_testsizestructcache_0localnamefoo-function-new>)

- [class T\_testSizeStructCache\_1\_\_\_localname\_\_\_bar](<#class-t_testsizestructcache_1localnamebar>)

  - [`function new(?a:stdgo.encoding.binary.Struct, ?b:stdgo.encoding.binary.T_testSizeStructCache_0___localname___foo, ?c:stdgo.encoding.binary.Struct):Void`](<#t_testsizestructcache_1localnamebar-function-new>)

- [class Unexported](<#class-unexported>)

  - [`function new(?_a:stdgo.GoInt32):Void`](<#unexported-function-new>)

- [typedef AppendByteOrder](<#typedef-appendbyteorder>)

- [typedef ByteOrder](<#typedef-byteorder>)

- [typedef T\_testByteOrder\_0\_\_\_localname\_\_\_byteOrder](<#typedef-t_testbyteorder_0localnamebyteorder>)

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
final maxVarintLen16:stdgo.GoUInt64 = ((3i64 : GoUInt64))
```



MaxVarintLenN is the maximum length of a varint\-encoded N\-bit integer.  

```haxe
final maxVarintLen32:stdgo.GoUInt64 = ((5i64 : GoUInt64))
```



MaxVarintLenN is the maximum length of a varint\-encoded N\-bit integer.  

```haxe
final maxVarintLen64:stdgo.GoUInt64 = ((10i64 : GoUInt64))
```



MaxVarintLenN is the maximum length of a varint\-encoded N\-bit integer.  

# Variables


```haxe
import stdgo.encoding.binary.Binary
```


```haxe
var bigEndian:stdgo.encoding.binary.T_bigEndian
```



BigEndian is the big\-endian implementation of ByteOrder and AppendByteOrder.  

```haxe
var littleEndian:stdgo.encoding.binary.T_littleEndian
```



LittleEndian is the little\-endian implementation of ByteOrder and AppendByteOrder.  

# Functions


```haxe
import stdgo.encoding.binary.Binary
```


## function appendUvarint


```haxe
function appendUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte>
```



AppendUvarint appends the varint\-encoded form of x,
as generated by PutUvarint, to buf and returns the extended buffer.  

[\(view code\)](<./Binary.hx#L2034>)


## function appendVarint


```haxe
function appendVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):stdgo.Slice<stdgo.GoByte>
```



AppendVarint appends the varint\-encoded form of x,
as generated by PutVarint, to buf and returns the extended buffer.  

[\(view code\)](<./Binary.hx#L2086>)


## function benchmarkAppendUint16


```haxe
function benchmarkAppendUint16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1823>)


## function benchmarkAppendUint32


```haxe
function benchmarkAppendUint32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1841>)


## function benchmarkAppendUint64


```haxe
function benchmarkAppendUint64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1859>)


## function benchmarkLittleEndianAppendUint16


```haxe
function benchmarkLittleEndianAppendUint16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1877>)


## function benchmarkLittleEndianAppendUint32


```haxe
function benchmarkLittleEndianAppendUint32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1895>)


## function benchmarkLittleEndianAppendUint64


```haxe
function benchmarkLittleEndianAppendUint64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1913>)


## function benchmarkLittleEndianPutUint16


```haxe
function benchmarkLittleEndianPutUint16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1868>)


## function benchmarkLittleEndianPutUint32


```haxe
function benchmarkLittleEndianPutUint32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1886>)


## function benchmarkLittleEndianPutUint64


```haxe
function benchmarkLittleEndianPutUint64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1904>)


## function benchmarkPutUint16


```haxe
function benchmarkPutUint16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1814>)


## function benchmarkPutUint32


```haxe
function benchmarkPutUint32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1832>)


## function benchmarkPutUint64


```haxe
function benchmarkPutUint64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1850>)


## function benchmarkPutUvarint32


```haxe
function benchmarkPutUvarint32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2416>)


## function benchmarkPutUvarint64


```haxe
function benchmarkPutUvarint64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2431>)


## function benchmarkReadFloats


```haxe
function benchmarkReadFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1922>)


## function benchmarkReadInts


```haxe
function benchmarkReadInts(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1742>)


## function benchmarkReadSlice1000Float32s


```haxe
function benchmarkReadSlice1000Float32s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1973>)


## function benchmarkReadSlice1000Int32s


```haxe
function benchmarkReadSlice1000Int32s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1699>)


## function benchmarkReadSlice1000Uint8s


```haxe
function benchmarkReadSlice1000Uint8s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2002>)


## function benchmarkReadStruct


```haxe
function benchmarkReadStruct(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1713>)


## function benchmarkWriteFloats


```haxe
function benchmarkWriteFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1955>)


## function benchmarkWriteInts


```haxe
function benchmarkWriteInts(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1775>)


## function benchmarkWriteSlice1000Float32s


```haxe
function benchmarkWriteSlice1000Float32s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1987>)


## function benchmarkWriteSlice1000Int32s


```haxe
function benchmarkWriteSlice1000Int32s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1799>)


## function benchmarkWriteSlice1000Uint8s


```haxe
function benchmarkWriteSlice1000Uint8s(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L2016>)


## function benchmarkWriteStruct


```haxe
function benchmarkWriteStruct(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Binary.hx#L1732>)


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
        var _buf = new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (__0 => _x in (new Slice<GoUInt64>(0, 0, (1i64 : GoUInt64), (2i64 : GoUInt64), (127i64 : GoUInt64), (128i64 : GoUInt64), (255i64 : GoUInt64), (256i64 : GoUInt64)) : Slice<GoUInt64>)) {
            var _n:GoInt = stdgo.encoding.binary.Binary.putUvarint(_buf, _x);
            stdgo.fmt.Fmt.printf(("%x\n" : GoString), Go.toInterface((_buf.__slice__(0, _n) : Slice<GoUInt8>)));
        };
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L2045>)


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
        var _buf = new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (__0 => _x in (new Slice<GoInt64>(
0,
0,
(-65i64 : GoInt64),
(-64i64 : GoInt64),
(-2i64 : GoInt64),
(-1i64 : GoInt64),
(0i64 : GoInt64),
(1i64 : GoInt64),
(2i64 : GoInt64),
(63i64 : GoInt64),
(64i64 : GoInt64)) : Slice<GoInt64>)) {
            var _n:GoInt = stdgo.encoding.binary.Binary.putVarint(_buf, _x);
            stdgo.fmt.Fmt.printf(("%x\n" : GoString), Go.toInterface((_buf.__slice__(0, _n) : Slice<GoUInt8>)));
        };
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L2097>)


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
        var _pi:GoFloat64 = (0 : GoFloat64);
        var _b = (new Slice<GoUInt8>(0, 0, (24 : GoUInt8), (45 : GoUInt8), (68 : GoUInt8), (84 : GoUInt8), (251 : GoUInt8), (33 : GoUInt8), (9 : GoUInt8), (64 : GoUInt8)) : Slice<GoUInt8>);
        var _buf = stdgo.bytes.Bytes.newReader(_b);
        var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_buf), Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), Go.toInterface(Go.pointer(_pi)));
        if (_err != null) {
            stdgo.fmt.Fmt.println(Go.toInterface(("binary.Read failed:" : GoString)), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.print(Go.toInterface(_pi));
    }
```


</p>
</details>


### exampleRead\_multi


<details><summary></summary>
<p>


```haxe
function exampleRead_multi():Void {
        var _b = (new Slice<GoUInt8>(
0,
0,
(24 : GoUInt8),
(45 : GoUInt8),
(68 : GoUInt8),
(84 : GoUInt8),
(251 : GoUInt8),
(33 : GoUInt8),
(9 : GoUInt8),
(64 : GoUInt8),
(255 : GoUInt8),
(1 : GoUInt8),
(2 : GoUInt8),
(3 : GoUInt8),
(190 : GoUInt8),
(239 : GoUInt8)) : Slice<GoUInt8>);
        var _r = stdgo.bytes.Bytes.newReader(_b);
        var _data:T__struct_7 = ({ pi : (0 : GoFloat64), uate : (0 : GoUInt8), mine : new GoArray<GoUInt8>(...[for (i in 0 ... 3) (0 : GoUInt8)]), too : (0 : GoUInt16) } : T__struct_7);
        {
            var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_r), Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), Go.toInterface(Go.asInterface((Go.setRef(_data) : Ref<T__struct_7>))));
            if (_err != null) {
                stdgo.fmt.Fmt.println(Go.toInterface(("binary.Read failed:" : GoString)), Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.println(Go.toInterface(_data.pi));
        stdgo.fmt.Fmt.println(Go.toInterface(_data.uate));
        stdgo.fmt.Fmt.printf(("% x\n" : GoString), Go.toInterface(_data.mine));
        stdgo.fmt.Fmt.println(Go.toInterface(_data.too));
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L734>)


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

[\(view code\)](<./Binary.hx#L2127>)


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

[\(view code\)](<./Binary.hx#L2158>)


## function size


```haxe
function size(_v:stdgo.AnyInterface):stdgo.GoInt
```



Size returns how many bytes Write would generate to encode the value v, which
must be a fixed\-size value or a slice of fixed\-size values, or a pointer to such data.
If v is neither of these, Size returns \-1.  

[\(view code\)](<./Binary.hx#L1037>)


## function testBigEndianPtrWrite


```haxe
function testBigEndianPtrWrite(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1201>)


## function testBigEndianRead


```haxe
function testBigEndianRead(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1195>)


## function testBigEndianWrite


```haxe
function testBigEndianWrite(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1198>)


## function testBlankFields


```haxe
function testBlankFields(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1297>)


## function testBufferTooBigWithOverflow


```haxe
function testBufferTooBigWithOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Ensure that we catch overflows of bytes going past MaxVarintLen64.
See issue https://golang.org/issues/41185  

[\(view code\)](<./Binary.hx#L2273>)


## function testBufferTooSmall


```haxe
function testBufferTooSmall(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L2248>)


## function testByteOrder


```haxe
function testByteOrder(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1603>)


## function testConstants


```haxe
function testConstants(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L2173>)


## function testEarlyBoundsChecks


```haxe
function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1666>)


## function testLittleEndianPtrWrite


```haxe
function testLittleEndianPtrWrite(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1192>)


## function testLittleEndianRead


```haxe
function testLittleEndianRead(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1186>)


## function testLittleEndianWrite


```haxe
function testLittleEndianWrite(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1189>)


## function testNonCanonicalZero


```haxe
function testNonCanonicalZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L2409>)


## function testOverflow


```haxe
function testOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L2362>)


## function testReadBool


```haxe
function testReadBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1214>)


## function testReadBoolSlice


```haxe
function testReadBoolSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1226>)


## function testReadErrorMsg


```haxe
function testReadErrorMsg(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1447>)


## function testReadInvalidDestination


```haxe
function testReadInvalidDestination(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1674>)


## function testReadSlice


```haxe
function testReadSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1204>)


## function testReadTruncated


```haxe
function testReadTruncated(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1469>)


## function testSizeStructCache


```haxe
function testSizeStructCache(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1367>)


## function testSliceRoundTrip


```haxe
function testSliceRoundTrip(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1231>)


## function testUnexportedRead


```haxe
function testUnexportedRead(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1398>)


## function testUvarint


```haxe
function testUvarint(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L2237>)


## function testVarint


```haxe
function testVarint(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L2224>)


## function testWriteSlice


```haxe
function testWriteSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1209>)


## function testWriteT


```haxe
function testWriteT(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Binary.hx#L1269>)


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
        var _inputs = (new Slice<Slice<GoUInt8>>(0, 0, (new Slice<GoUInt8>(0, 0, (1 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (2 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (127 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (128 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (255 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (128 : GoUInt8), (2 : GoUInt8)) : Slice<GoUInt8>)) : Slice<Slice<GoUInt8>>);
        for (__0 => _b in _inputs) {
            var __tmp__ = stdgo.encoding.binary.Binary.uvarint(_b), _x:GoUInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
            if (_n != ((_b.length))) {
                stdgo.fmt.Fmt.println(Go.toInterface(("Uvarint did not consume all of in" : GoString)));
            };
            stdgo.fmt.Fmt.println(Go.toInterface(_x));
        };
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L2064>)


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
        var _inputs = (new Slice<Slice<GoUInt8>>(
0,
0,
(new Slice<GoUInt8>(0, 0, (129 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>),
(new Slice<GoUInt8>(0, 0, (127 : GoUInt8)) : Slice<GoUInt8>),
(new Slice<GoUInt8>(0, 0, (3 : GoUInt8)) : Slice<GoUInt8>),
(new Slice<GoUInt8>(0, 0, (1 : GoUInt8)) : Slice<GoUInt8>),
(new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>),
(new Slice<GoUInt8>(0, 0, (2 : GoUInt8)) : Slice<GoUInt8>),
(new Slice<GoUInt8>(0, 0, (4 : GoUInt8)) : Slice<GoUInt8>),
(new Slice<GoUInt8>(0, 0, (126 : GoUInt8)) : Slice<GoUInt8>),
(new Slice<GoUInt8>(0, 0, (128 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>)) : Slice<Slice<GoUInt8>>);
        for (__0 => _b in _inputs) {
            var __tmp__ = stdgo.encoding.binary.Binary.varint(_b), _x:GoInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
            if (_n != ((_b.length))) {
                stdgo.fmt.Fmt.println(Go.toInterface(("Varint did not consume all of in" : GoString)));
            };
            stdgo.fmt.Fmt.println(Go.toInterface(_x));
        };
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L2113>)


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
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _pi:GoFloat64 = (3.141592653589793 : GoFloat64);
        var _err:Error = stdgo.encoding.binary.Binary.write(Go.asInterface(_buf), Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), Go.toInterface(_pi));
        if (_err != null) {
            stdgo.fmt.Fmt.println(Go.toInterface(("binary.Write failed:" : GoString)), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("% x" : GoString), Go.toInterface(_buf.bytes()));
    }
```


</p>
</details>


### exampleWrite\_multi


<details><summary></summary>
<p>


```haxe
function exampleWrite_multi():Void {
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _data:Slice<AnyInterface> = (new Slice<AnyInterface>(0, 0, Go.toInterface((61374 : GoUInt16)), Go.toInterface((-54 : GoInt8)), Go.toInterface((254 : GoUInt8))) : Slice<AnyInterface>);
        for (__0 => _v in _data) {
            var _err:Error = stdgo.encoding.binary.Binary.write(Go.asInterface(_buf), Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), _v);
            if (_err != null) {
                stdgo.fmt.Fmt.println(Go.toInterface(("binary.Write failed:" : GoString)), Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(("%x" : GoString), Go.toInterface(_buf.bytes()));
    }
```


</p>
</details>


[\(view code\)](<./Binary.hx#L877>)


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


[\(view code\)](<./Binary.hx#L531>)


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


[\(view code\)](<./Binary.hx#L558>)


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


[\(view code\)](<./Binary.hx#L456>)


## class T


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


### T function new


```haxe
function new(?int_:Null<stdgo.GoInt>, ?uint:Null<stdgo.GoUInt>, ?uintptr:stdgo.GoUIntptr, ?array:stdgo.GoArray<stdgo.GoInt>):Void
```


[\(view code\)](<./Binary.hx#L503>)


## class T\_testSizeStructCache\_0\_\_\_localname\_\_\_foo


```haxe
var a:stdgo.GoUInt32
```


### T\_testSizeStructCache\_0\_\_\_localname\_\_\_foo function new


```haxe
function new(?a:stdgo.GoUInt32):Void
```


[\(view code\)](<./Binary.hx#L1340>)


## class T\_testSizeStructCache\_1\_\_\_localname\_\_\_bar


```haxe
var a:stdgo.encoding.binary.Struct
```


```haxe
var b:stdgo.encoding.binary.T_testSizeStructCache_0___localname___foo
```


```haxe
var c:stdgo.encoding.binary.Struct
```


### T\_testSizeStructCache\_1\_\_\_localname\_\_\_bar function new


```haxe
function new(?a:stdgo.encoding.binary.Struct, ?b:stdgo.encoding.binary.T_testSizeStructCache_0___localname___foo, ?c:stdgo.encoding.binary.Struct):Void
```


[\(view code\)](<./Binary.hx#L1357>)


## class Unexported


```haxe
var _a:stdgo.GoInt32
```


### Unexported function new


```haxe
function new(?_a:stdgo.GoInt32):Void
```


[\(view code\)](<./Binary.hx#L579>)


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

## typedef T\_testByteOrder\_0\_\_\_localname\_\_\_byteOrder


```haxe
typedef T_testByteOrder_0___localname___byteOrder = {
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


