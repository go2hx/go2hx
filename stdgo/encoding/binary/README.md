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

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function appendUvarint(buf:Array<Int>, x:haxe.UInt64):Array<Int>`](<#function-appenduvarint>)

- [`function appendVarint(buf:Array<Int>, x:haxe.Int64):Array<Int>`](<#function-appendvarint>)

- [`function benchmarkAppendUint16(b:stdgo._internal.testing.B):Void`](<#function-benchmarkappenduint16>)

- [`function benchmarkAppendUint32(b:stdgo._internal.testing.B):Void`](<#function-benchmarkappenduint32>)

- [`function benchmarkAppendUint64(b:stdgo._internal.testing.B):Void`](<#function-benchmarkappenduint64>)

- [`function benchmarkLittleEndianAppendUint16(b:stdgo._internal.testing.B):Void`](<#function-benchmarklittleendianappenduint16>)

- [`function benchmarkLittleEndianAppendUint32(b:stdgo._internal.testing.B):Void`](<#function-benchmarklittleendianappenduint32>)

- [`function benchmarkLittleEndianAppendUint64(b:stdgo._internal.testing.B):Void`](<#function-benchmarklittleendianappenduint64>)

- [`function benchmarkLittleEndianPutUint16(b:stdgo._internal.testing.B):Void`](<#function-benchmarklittleendianputuint16>)

- [`function benchmarkLittleEndianPutUint32(b:stdgo._internal.testing.B):Void`](<#function-benchmarklittleendianputuint32>)

- [`function benchmarkLittleEndianPutUint64(b:stdgo._internal.testing.B):Void`](<#function-benchmarklittleendianputuint64>)

- [`function benchmarkPutUint16(b:stdgo._internal.testing.B):Void`](<#function-benchmarkputuint16>)

- [`function benchmarkPutUint32(b:stdgo._internal.testing.B):Void`](<#function-benchmarkputuint32>)

- [`function benchmarkPutUint64(b:stdgo._internal.testing.B):Void`](<#function-benchmarkputuint64>)

- [`function benchmarkPutUvarint32(b:stdgo._internal.testing.B):Void`](<#function-benchmarkputuvarint32>)

- [`function benchmarkPutUvarint64(b:stdgo._internal.testing.B):Void`](<#function-benchmarkputuvarint64>)

- [`function benchmarkReadFloats(b:stdgo._internal.testing.B):Void`](<#function-benchmarkreadfloats>)

- [`function benchmarkReadInts(b:stdgo._internal.testing.B):Void`](<#function-benchmarkreadints>)

- [`function benchmarkReadSlice1000Float32s(b:stdgo._internal.testing.B):Void`](<#function-benchmarkreadslice1000float32s>)

- [`function benchmarkReadSlice1000Int32s(b:stdgo._internal.testing.B):Void`](<#function-benchmarkreadslice1000int32s>)

- [`function benchmarkReadSlice1000Uint8s(b:stdgo._internal.testing.B):Void`](<#function-benchmarkreadslice1000uint8s>)

- [`function benchmarkReadStruct(b:stdgo._internal.testing.B):Void`](<#function-benchmarkreadstruct>)

- [`function benchmarkWriteFloats(b:stdgo._internal.testing.B):Void`](<#function-benchmarkwritefloats>)

- [`function benchmarkWriteInts(b:stdgo._internal.testing.B):Void`](<#function-benchmarkwriteints>)

- [`function benchmarkWriteSlice1000Float32s(b:stdgo._internal.testing.B):Void`](<#function-benchmarkwriteslice1000float32s>)

- [`function benchmarkWriteSlice1000Int32s(b:stdgo._internal.testing.B):Void`](<#function-benchmarkwriteslice1000int32s>)

- [`function benchmarkWriteSlice1000Uint8s(b:stdgo._internal.testing.B):Void`](<#function-benchmarkwriteslice1000uint8s>)

- [`function benchmarkWriteStruct(b:stdgo._internal.testing.B):Void`](<#function-benchmarkwritestruct>)

- [`function get_bigEndian():stdgo.encoding.binary.T_bigEndian`](<#function-get_bigendian>)

- [`function get_littleEndian():stdgo.encoding.binary.T_littleEndian`](<#function-get_littleendian>)

- [`function get_nativeEndian():stdgo.encoding.binary.T_nativeEndian`](<#function-get_nativeendian>)

- [`function putUvarint(buf:Array<Int>, x:haxe.UInt64):Int`](<#function-putuvarint>)

- [`function putVarint(buf:Array<Int>, x:haxe.Int64):Int`](<#function-putvarint>)

- [`function read(r:stdgo._internal.io.Reader, order:stdgo.encoding.binary.ByteOrder, data:stdgo.AnyInterface):stdgo.Error`](<#function-read>)

- [`function readUvarint(r:stdgo._internal.io.ByteReader):stdgo.Tuple<haxe.UInt64, stdgo.Error>`](<#function-readuvarint>)

- [`function readVarint(r:stdgo._internal.io.ByteReader):stdgo.Tuple<haxe.Int64, stdgo.Error>`](<#function-readvarint>)

- [`function set_bigEndian(v:stdgo.encoding.binary.T_bigEndian):stdgo.encoding.binary.T_bigEndian`](<#function-set_bigendian>)

- [`function set_littleEndian(v:stdgo.encoding.binary.T_littleEndian):stdgo.encoding.binary.T_littleEndian`](<#function-set_littleendian>)

- [`function set_nativeEndian(v:stdgo.encoding.binary.T_nativeEndian):stdgo.encoding.binary.T_nativeEndian`](<#function-set_nativeendian>)

- [`function size(v:stdgo.AnyInterface):Int`](<#function-size>)

- [`function testBigEndianPtrWrite(t:stdgo._internal.testing.T_):Void`](<#function-testbigendianptrwrite>)

- [`function testBigEndianRead(t:stdgo._internal.testing.T_):Void`](<#function-testbigendianread>)

- [`function testBigEndianWrite(t:stdgo._internal.testing.T_):Void`](<#function-testbigendianwrite>)

- [`function testBlankFields(t:stdgo._internal.testing.T_):Void`](<#function-testblankfields>)

- [`function testBufferTooBigWithOverflow(t:stdgo._internal.testing.T_):Void`](<#function-testbuffertoobigwithoverflow>)

- [`function testBufferTooSmall(t:stdgo._internal.testing.T_):Void`](<#function-testbuffertoosmall>)

- [`function testByteOrder(t:stdgo._internal.testing.T_):Void`](<#function-testbyteorder>)

- [`function testConstants(t:stdgo._internal.testing.T_):Void`](<#function-testconstants>)

- [`function testEarlyBoundsChecks(t:stdgo._internal.testing.T_):Void`](<#function-testearlyboundschecks>)

- [`function testLittleEndianPtrWrite(t:stdgo._internal.testing.T_):Void`](<#function-testlittleendianptrwrite>)

- [`function testLittleEndianRead(t:stdgo._internal.testing.T_):Void`](<#function-testlittleendianread>)

- [`function testLittleEndianWrite(t:stdgo._internal.testing.T_):Void`](<#function-testlittleendianwrite>)

- [`function testNativeEndian(t:stdgo._internal.testing.T_):Void`](<#function-testnativeendian>)

- [`function testNoFixedSize(t:stdgo._internal.testing.T_):Void`](<#function-testnofixedsize>)

- [`function testNonCanonicalZero(t:stdgo._internal.testing.T_):Void`](<#function-testnoncanonicalzero>)

- [`function testOverflow(t:stdgo._internal.testing.T_):Void`](<#function-testoverflow>)

- [`function testReadBool(t:stdgo._internal.testing.T_):Void`](<#function-testreadbool>)

- [`function testReadBoolSlice(t:stdgo._internal.testing.T_):Void`](<#function-testreadboolslice>)

- [`function testReadErrorMsg(t:stdgo._internal.testing.T_):Void`](<#function-testreaderrormsg>)

- [`function testReadInvalidDestination(t:stdgo._internal.testing.T_):Void`](<#function-testreadinvaliddestination>)

- [`function testReadSlice(t:stdgo._internal.testing.T_):Void`](<#function-testreadslice>)

- [`function testReadTruncated(t:stdgo._internal.testing.T_):Void`](<#function-testreadtruncated>)

- [`function testSizeInvalid(t:stdgo._internal.testing.T_):Void`](<#function-testsizeinvalid>)

- [`function testSizeStructCache(t:stdgo._internal.testing.T_):Void`](<#function-testsizestructcache>)

- [`function testSliceRoundTrip(t:stdgo._internal.testing.T_):Void`](<#function-testsliceroundtrip>)

- [`function testUnexportedRead(t:stdgo._internal.testing.T_):Void`](<#function-testunexportedread>)

- [`function testUvarint(t:stdgo._internal.testing.T_):Void`](<#function-testuvarint>)

- [`function testVarint(t:stdgo._internal.testing.T_):Void`](<#function-testvarint>)

- [`function testWriteSlice(t:stdgo._internal.testing.T_):Void`](<#function-testwriteslice>)

- [`function testWriteT(t:stdgo._internal.testing.T_):Void`](<#function-testwritet>)

- [`function uvarint(buf:Array<Int>):stdgo.Tuple<haxe.UInt64, Int>`](<#function-uvarint>)

- [`function varint(buf:Array<Int>):stdgo.Tuple<haxe.Int64, Int>`](<#function-varint>)

- [`function write(w:stdgo._internal.io.Writer, order:stdgo.encoding.binary.ByteOrder, data:stdgo.AnyInterface):stdgo.Error`](<#function-write>)

- [typedef AppendByteOrder](<#typedef-appendbyteorder>)

- [typedef AppendByteOrder\_static\_extension](<#typedef-appendbyteorder_static_extension>)

- [typedef BlankFields](<#typedef-blankfields>)

- [typedef BlankFieldsProbe](<#typedef-blankfieldsprobe>)

- [typedef ByteOrder](<#typedef-byteorder>)

- [typedef ByteOrder\_static\_extension](<#typedef-byteorder_static_extension>)

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

- [typedef T\_testByteOrder\_16\_\_\_localname\_\_\_byteOrder](<#typedef-t_testbyteorder_16localnamebyteorder>)

- [typedef T\_testByteOrder\_16\_\_\_localname\_\_\_byteOrder\_static\_extension](<#typedef-t_testbyteorder_16localnamebyteorder_static_extension>)

- [typedef T\_testNoFixedSize\_17\_\_\_localname\_\_\_Person](<#typedef-t_testnofixedsize_17localnameperson>)

- [typedef T\_testSizeStructCache\_14\_\_\_localname\_\_\_foo](<#typedef-t_testsizestructcache_14localnamefoo>)

- [typedef T\_testSizeStructCache\_15\_\_\_localname\_\_\_bar](<#typedef-t_testsizestructcache_15localnamebar>)

- [typedef Unexported](<#typedef-unexported>)

# Constants


```haxe
import stdgo.encoding.binary.Binary
```


```haxe
final maxVarintLen16:haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen16
```


```haxe
final maxVarintLen32:haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen32
```


```haxe
final maxVarintLen64:haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen64
```


# Variables


```haxe
import stdgo.encoding.binary.Binary
```


```haxe
var bigEndian:stdgo.encoding.binary.T_bigEndian
```


```haxe
var littleEndian:stdgo.encoding.binary.T_littleEndian
```


```haxe
var nativeEndian:stdgo.encoding.binary.T_nativeEndian
```


# Functions


```haxe
import stdgo.encoding.binary.Binary
```


## function appendUvarint


```haxe
function appendUvarint(buf:Array<Int>, x:haxe.UInt64):Array<Int>
```



AppendUvarint appends the varint\-encoded form of x,
as generated by PutUvarint, to buf and returns the extended buffer.  

[\(view code\)](<./Binary.hx#L163>)


## function appendVarint


```haxe
function appendVarint(buf:Array<Int>, x:haxe.Int64):Array<Int>
```



AppendVarint appends the varint\-encoded form of x,
as generated by PutVarint, to buf and returns the extended buffer.  

[\(view code\)](<./Binary.hx#L183>)


## function benchmarkAppendUint16


```haxe
function benchmarkAppendUint16(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L141>)


## function benchmarkAppendUint32


```haxe
function benchmarkAppendUint32(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L143>)


## function benchmarkAppendUint64


```haxe
function benchmarkAppendUint64(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L145>)


## function benchmarkLittleEndianAppendUint16


```haxe
function benchmarkLittleEndianAppendUint16(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L147>)


## function benchmarkLittleEndianAppendUint32


```haxe
function benchmarkLittleEndianAppendUint32(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L149>)


## function benchmarkLittleEndianAppendUint64


```haxe
function benchmarkLittleEndianAppendUint64(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L151>)


## function benchmarkLittleEndianPutUint16


```haxe
function benchmarkLittleEndianPutUint16(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L146>)


## function benchmarkLittleEndianPutUint32


```haxe
function benchmarkLittleEndianPutUint32(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L148>)


## function benchmarkLittleEndianPutUint64


```haxe
function benchmarkLittleEndianPutUint64(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L150>)


## function benchmarkPutUint16


```haxe
function benchmarkPutUint16(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L140>)


## function benchmarkPutUint32


```haxe
function benchmarkPutUint32(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L142>)


## function benchmarkPutUint64


```haxe
function benchmarkPutUint64(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L144>)


## function benchmarkPutUvarint32


```haxe
function benchmarkPutUvarint32(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L224>)


## function benchmarkPutUvarint64


```haxe
function benchmarkPutUvarint64(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L225>)


## function benchmarkReadFloats


```haxe
function benchmarkReadFloats(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L152>)


## function benchmarkReadInts


```haxe
function benchmarkReadInts(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L137>)


## function benchmarkReadSlice1000Float32s


```haxe
function benchmarkReadSlice1000Float32s(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L154>)


## function benchmarkReadSlice1000Int32s


```haxe
function benchmarkReadSlice1000Int32s(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L134>)


## function benchmarkReadSlice1000Uint8s


```haxe
function benchmarkReadSlice1000Uint8s(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L156>)


## function benchmarkReadStruct


```haxe
function benchmarkReadStruct(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L135>)


## function benchmarkWriteFloats


```haxe
function benchmarkWriteFloats(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L153>)


## function benchmarkWriteInts


```haxe
function benchmarkWriteInts(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L138>)


## function benchmarkWriteSlice1000Float32s


```haxe
function benchmarkWriteSlice1000Float32s(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L155>)


## function benchmarkWriteSlice1000Int32s


```haxe
function benchmarkWriteSlice1000Int32s(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L139>)


## function benchmarkWriteSlice1000Uint8s


```haxe
function benchmarkWriteSlice1000Uint8s(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L157>)


## function benchmarkWriteStruct


```haxe
function benchmarkWriteStruct(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Binary.hx#L136>)


## function get\_bigEndian


```haxe
function get_bigEndian():stdgo.encoding.binary.T_bigEndian
```


[\(view code\)](<./Binary.hx#L26>)


## function get\_littleEndian


```haxe
function get_littleEndian():stdgo.encoding.binary.T_littleEndian
```


[\(view code\)](<./Binary.hx#L23>)


## function get\_nativeEndian


```haxe
function get_nativeEndian():stdgo.encoding.binary.T_nativeEndian
```


[\(view code\)](<./Binary.hx#L29>)


## function putUvarint


```haxe
function putUvarint(buf:Array<Int>, x:haxe.UInt64):Int
```



PutUvarint encodes a uint64 into buf and returns the number of bytes written.
If the buffer is too small, PutUvarint will panic.  

[\(view code\)](<./Binary.hx#L168>)


## function putVarint


```haxe
function putVarint(buf:Array<Int>, x:haxe.Int64):Int
```



PutVarint encodes an int64 into buf and returns the number of bytes written.
If the buffer is too small, PutVarint will panic.  

[\(view code\)](<./Binary.hx#L188>)


## function read


```haxe
function read(r:stdgo._internal.io.Reader, order:stdgo.encoding.binary.ByteOrder, data:stdgo.AnyInterface):stdgo.Error
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

[\(view code\)](<./Binary.hx#L89>)


## function readUvarint


```haxe
function readUvarint(r:stdgo._internal.io.ByteReader):stdgo.Tuple<haxe.UInt64, stdgo.Error>
```



ReadUvarint reads an encoded unsigned integer from r and returns it as a uint64.
The error is EOF only if no bytes were read.
If an EOF happens after reading some but not all the bytes,
ReadUvarint returns io.ErrUnexpectedEOF.  

[\(view code\)](<./Binary.hx#L205>)


## function readVarint


```haxe
function readVarint(r:stdgo._internal.io.ByteReader):stdgo.Tuple<haxe.Int64, stdgo.Error>
```



ReadVarint reads an encoded signed integer from r and returns it as an int64.
The error is EOF only if no bytes were read.
If an EOF happens after reading some but not all the bytes,
ReadVarint returns io.ErrUnexpectedEOF.  

[\(view code\)](<./Binary.hx#L212>)


## function set\_bigEndian


```haxe
function set_bigEndian(v:stdgo.encoding.binary.T_bigEndian):stdgo.encoding.binary.T_bigEndian
```


[\(view code\)](<./Binary.hx#L27>)


## function set\_littleEndian


```haxe
function set_littleEndian(v:stdgo.encoding.binary.T_littleEndian):stdgo.encoding.binary.T_littleEndian
```


[\(view code\)](<./Binary.hx#L24>)


## function set\_nativeEndian


```haxe
function set_nativeEndian(v:stdgo.encoding.binary.T_nativeEndian):stdgo.encoding.binary.T_nativeEndian
```


[\(view code\)](<./Binary.hx#L30>)


## function size


```haxe
function size(v:stdgo.AnyInterface):Int
```



Size returns how many bytes Write would generate to encode the value v, which
must be a fixed\-size value or a slice of fixed\-size values, or a pointer to such data.
If v is neither of these, Size returns \-1.  

[\(view code\)](<./Binary.hx#L106>)


## function testBigEndianPtrWrite


```haxe
function testBigEndianPtrWrite(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L112>)


## function testBigEndianRead


```haxe
function testBigEndianRead(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L110>)


## function testBigEndianWrite


```haxe
function testBigEndianWrite(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L111>)


## function testBlankFields


```haxe
function testBlankFields(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L119>)


## function testBufferTooBigWithOverflow


```haxe
function testBufferTooBigWithOverflow(t:stdgo._internal.testing.T_):Void
```



Ensure that we catch overflows of bytes going past MaxVarintLen64.
See issue https://golang.org/issues/41185  

[\(view code\)](<./Binary.hx#L221>)


## function testBufferTooSmall


```haxe
function testBufferTooSmall(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L216>)


## function testByteOrder


```haxe
function testByteOrder(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L129>)


## function testConstants


```haxe
function testConstants(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L213>)


## function testEarlyBoundsChecks


```haxe
function testEarlyBoundsChecks(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L130>)


## function testLittleEndianPtrWrite


```haxe
function testLittleEndianPtrWrite(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L109>)


## function testLittleEndianRead


```haxe
function testLittleEndianRead(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L107>)


## function testLittleEndianWrite


```haxe
function testLittleEndianWrite(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L108>)


## function testNativeEndian


```haxe
function testNativeEndian(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L158>)


## function testNoFixedSize


```haxe
function testNoFixedSize(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L133>)


## function testNonCanonicalZero


```haxe
function testNonCanonicalZero(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L223>)


## function testOverflow


```haxe
function testOverflow(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L222>)


## function testReadBool


```haxe
function testReadBool(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L115>)


## function testReadBoolSlice


```haxe
function testReadBoolSlice(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L116>)


## function testReadErrorMsg


```haxe
function testReadErrorMsg(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L125>)


## function testReadInvalidDestination


```haxe
function testReadInvalidDestination(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L131>)


## function testReadSlice


```haxe
function testReadSlice(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L113>)


## function testReadTruncated


```haxe
function testReadTruncated(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L126>)


## function testSizeInvalid


```haxe
function testSizeInvalid(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L123>)


## function testSizeStructCache


```haxe
function testSizeStructCache(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L122>)


## function testSliceRoundTrip


```haxe
function testSliceRoundTrip(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L117>)


## function testUnexportedRead


```haxe
function testUnexportedRead(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L124>)


## function testUvarint


```haxe
function testUvarint(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L215>)


## function testVarint


```haxe
function testVarint(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L214>)


## function testWriteSlice


```haxe
function testWriteSlice(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L114>)


## function testWriteT


```haxe
function testWriteT(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Binary.hx#L118>)


## function uvarint


```haxe
function uvarint(buf:Array<Int>):stdgo.Tuple<haxe.UInt64, Int>
```



Uvarint decodes a uint64 from buf and returns that value and the
number of bytes read \(\> 0\). If an error occurred, the value is 0
and the number of bytes n is \<= 0 meaning:  

```
	n == 0: buf too small
	n  < 0: value larger than 64 bits (overflow)
	        and -n is the number of bytes read
```
[\(view code\)](<./Binary.hx#L178>)


## function varint


```haxe
function varint(buf:Array<Int>):stdgo.Tuple<haxe.Int64, Int>
```



Varint decodes an int64 from buf and returns that value and the
number of bytes read \(\> 0\). If an error occurred, the value is 0
and the number of bytes n is \<= 0 with the following meaning:  

```
	n == 0: buf too small
	n  < 0: value larger than 64 bits (overflow)
	        and -n is the number of bytes read
```
[\(view code\)](<./Binary.hx#L198>)


## function write


```haxe
function write(w:stdgo._internal.io.Writer, order:stdgo.encoding.binary.ByteOrder, data:stdgo.AnyInterface):stdgo.Error
```



Write writes the binary representation of data into w.
Data must be a fixed\-size value or a slice of fixed\-size
values, or a pointer to such data.
Boolean values encode as one byte: 1 for true, and 0 for false.
Bytes written to w are encoded using the specified byte order
and read from successive fields of the data.
When writing structs, zero values are written for fields
with blank \(\_\) field names.  

[\(view code\)](<./Binary.hx#L100>)


# Typedefs


```haxe
import stdgo.encoding.binary.*
```


## typedef AppendByteOrder


```haxe
typedef AppendByteOrder = stdgo._internal.encoding.binary.AppendByteOrder;
```


## typedef AppendByteOrder\_static\_extension


```haxe
typedef AppendByteOrder_static_extension = Dynamic;
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


## typedef ByteOrder\_static\_extension


```haxe
typedef ByteOrder_static_extension = Dynamic;
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


## typedef T\_testByteOrder\_16\_\_\_localname\_\_\_byteOrder


```haxe
typedef T_testByteOrder_16___localname___byteOrder = stdgo._internal.encoding.binary.T_testByteOrder_16___localname___byteOrder;
```


## typedef T\_testByteOrder\_16\_\_\_localname\_\_\_byteOrder\_static\_extension


```haxe
typedef T_testByteOrder_16___localname___byteOrder_static_extension = Dynamic;
```


## typedef T\_testNoFixedSize\_17\_\_\_localname\_\_\_Person


```haxe
typedef T_testNoFixedSize_17___localname___Person = Dynamic;
```


## typedef T\_testSizeStructCache\_14\_\_\_localname\_\_\_foo


```haxe
typedef T_testSizeStructCache_14___localname___foo = Dynamic;
```


## typedef T\_testSizeStructCache\_15\_\_\_localname\_\_\_bar


```haxe
typedef T_testSizeStructCache_15___localname___bar = Dynamic;
```


## typedef Unexported


```haxe
typedef Unexported = Dynamic;
```


