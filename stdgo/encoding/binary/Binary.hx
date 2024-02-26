package stdgo.encoding.binary;
/**
    // Package binary implements simple translation between numbers and byte
    // sequences and encoding and decoding of varints.
    //
    // Numbers are translated by reading and writing fixed-size values.
    // A fixed-size value is either a fixed-size arithmetic
    // type (bool, int8, uint8, int16, float32, complex64, ...)
    // or an array or struct containing only fixed-size values.
    //
    // The varint functions encode and decode single integer values using
    // a variable-length encoding; smaller values require fewer bytes.
    // For a specification, see
    // https://developers.google.com/protocol-buffers/docs/encoding.
    //
    // This package favors simplicity over efficiency. Clients that require
    // high-performance serialization, especially for large data structures,
    // should look at more advanced solutions such as the encoding/gob
    // package or protocol buffers.
**/
private var __go2hxdoc__package : Bool;
var littleEndian(get, set) : T_littleEndian;
function get_littleEndian():T_littleEndian return stdgo._internal.encoding.binary.Binary.littleEndian;
function set_littleEndian(v:T_littleEndian):T_littleEndian return stdgo._internal.encoding.binary.Binary.littleEndian = v;
var bigEndian(get, set) : T_bigEndian;
function get_bigEndian():T_bigEndian return stdgo._internal.encoding.binary.Binary.bigEndian;
function set_bigEndian(v:T_bigEndian):T_bigEndian return stdgo._internal.encoding.binary.Binary.bigEndian = v;
var nativeEndian(get, set) : T_nativeEndian;
function get_nativeEndian():T_nativeEndian return stdgo._internal.encoding.binary.Binary.nativeEndian;
function set_nativeEndian(v:T_nativeEndian):T_nativeEndian return stdgo._internal.encoding.binary.Binary.nativeEndian = v;
final maxVarintLen16 : haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen16;
final maxVarintLen32 : haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen32;
final maxVarintLen64 : haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen64;
typedef ByteOrder = stdgo._internal.encoding.binary.Binary.ByteOrder;
typedef AppendByteOrder = stdgo._internal.encoding.binary.Binary.AppendByteOrder;
@:invalid typedef T_littleEndian = Dynamic;
@:invalid typedef T_bigEndian = Dynamic;
@:invalid typedef T_coder = Dynamic;
@:invalid typedef Struct = Dynamic;
@:invalid typedef T_ = Dynamic;
@:invalid typedef BlankFields = Dynamic;
@:invalid typedef BlankFieldsProbe = Dynamic;
@:invalid typedef Unexported = Dynamic;
@:invalid typedef T_byteSliceReader = Dynamic;
@:invalid typedef T_nativeEndian = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.encoding.binary.Binary.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.encoding.binary.Binary.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.encoding.binary.Binary.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.encoding.binary.Binary.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.encoding.binary.Binary.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.encoding.binary.Binary.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.encoding.binary.Binary.T__struct_6;
typedef T_decoder = stdgo._internal.encoding.binary.Binary.T_decoder;
typedef T_encoder = stdgo._internal.encoding.binary.Binary.T_encoder;
/**
    // Read reads structured binary data from r into data.
    // Data must be a pointer to a fixed-size value or a slice
    // of fixed-size values.
    // Bytes read from r are decoded using the specified byte order
    // and written to successive fields of the data.
    // When decoding boolean values, a zero byte is decoded as false, and
    // any other non-zero byte is decoded as true.
    // When reading into structs, the field data for fields with
    // blank (_) field names is skipped; i.e., blank field names
    // may be used for padding.
    // When reading into a struct, all non-blank fields must be exported
    // or Read may panic.
    //
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading some but not all the bytes,
    // Read returns ErrUnexpectedEOF.
**/
inline function read(r:stdgo._internal.io.Io.Reader, order:ByteOrder, data:stdgo.AnyInterface):stdgo.Error throw "not implemented";
/**
    // Write writes the binary representation of data into w.
    // Data must be a fixed-size value or a slice of fixed-size
    // values, or a pointer to such data.
    // Boolean values encode as one byte: 1 for true, and 0 for false.
    // Bytes written to w are encoded using the specified byte order
    // and read from successive fields of the data.
    // When writing structs, zero values are written for fields
    // with blank (_) field names.
**/
inline function write(w:stdgo._internal.io.Io.Writer, order:ByteOrder, data:stdgo.AnyInterface):stdgo.Error throw "not implemented";
/**
    // Size returns how many bytes Write would generate to encode the value v, which
    // must be a fixed-size value or a slice of fixed-size values, or a pointer to such data.
    // If v is neither of these, Size returns -1.
**/
inline function size(v:stdgo.AnyInterface):Int throw "not implemented";
inline function testLittleEndianRead(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLittleEndianWrite(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLittleEndianPtrWrite(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBigEndianRead(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBigEndianWrite(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBigEndianPtrWrite(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReadSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriteSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReadBool(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReadBoolSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSliceRoundTrip(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriteT(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBlankFields(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testSizeStructCache_11___localname___foo = Dynamic;
@:invalid typedef T_testSizeStructCache_12___localname___bar = Dynamic;
inline function testSizeStructCache(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSizeInvalid(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnexportedRead(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReadErrorMsg(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReadTruncated(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_testByteOrder_13___localname___byteOrder = stdgo._internal.encoding.binary.Binary.T_testByteOrder_13___localname___byteOrder;
inline function testByteOrder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEarlyBoundsChecks(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReadInvalidDestination(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_testNoFixedSize_14___localname___Person = Dynamic;
inline function testNoFixedSize(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkReadSlice1000Int32s(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkReadStruct(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkWriteStruct(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkReadInts(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkWriteInts(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkWriteSlice1000Int32s(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkPutUint16(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAppendUint16(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkPutUint32(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAppendUint32(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkPutUint64(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAppendUint64(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkLittleEndianPutUint16(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkLittleEndianAppendUint16(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkLittleEndianPutUint32(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkLittleEndianAppendUint32(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkLittleEndianPutUint64(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkLittleEndianAppendUint64(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkReadFloats(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkWriteFloats(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkReadSlice1000Float32s(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkWriteSlice1000Float32s(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkReadSlice1000Uint8s(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkWriteSlice1000Uint8s(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testNativeEndian(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // AppendUvarint appends the varint-encoded form of x,
    // as generated by PutUvarint, to buf and returns the extended buffer.
**/
inline function appendUvarint(buf:Array<Int>, x:haxe.UInt64):Array<Int> throw "not implemented";
/**
    // PutUvarint encodes a uint64 into buf and returns the number of bytes written.
    // If the buffer is too small, PutUvarint will panic.
**/
inline function putUvarint(buf:Array<Int>, x:haxe.UInt64):Int throw "not implemented";
/**
    // Uvarint decodes a uint64 from buf and returns that value and the
    // number of bytes read (> 0). If an error occurred, the value is 0
    // and the number of bytes n is <= 0 meaning:
    //
    //	n == 0: buf too small
    //	n  < 0: value larger than 64 bits (overflow)
    //	        and -n is the number of bytes read
**/
inline function uvarint(buf:Array<Int>):stdgo.Tuple<haxe.UInt64, Int> throw "not implemented";
/**
    // AppendVarint appends the varint-encoded form of x,
    // as generated by PutVarint, to buf and returns the extended buffer.
**/
inline function appendVarint(buf:Array<Int>, x:haxe.Int64):Array<Int> throw "not implemented";
/**
    // PutVarint encodes an int64 into buf and returns the number of bytes written.
    // If the buffer is too small, PutVarint will panic.
**/
inline function putVarint(buf:Array<Int>, x:haxe.Int64):Int throw "not implemented";
/**
    // Varint decodes an int64 from buf and returns that value and the
    // number of bytes read (> 0). If an error occurred, the value is 0
    // and the number of bytes n is <= 0 with the following meaning:
    //
    //	n == 0: buf too small
    //	n  < 0: value larger than 64 bits (overflow)
    //	        and -n is the number of bytes read
**/
inline function varint(buf:Array<Int>):stdgo.Tuple<haxe.Int64, Int> throw "not implemented";
/**
    // ReadUvarint reads an encoded unsigned integer from r and returns it as a uint64.
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading some but not all the bytes,
    // ReadUvarint returns io.ErrUnexpectedEOF.
**/
inline function readUvarint(r:stdgo._internal.io.Io.ByteReader):stdgo.Tuple<haxe.UInt64, stdgo.Error> throw "not implemented";
/**
    // ReadVarint reads an encoded signed integer from r and returns it as an int64.
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading some but not all the bytes,
    // ReadVarint returns io.ErrUnexpectedEOF.
**/
inline function readVarint(r:stdgo._internal.io.Io.ByteReader):stdgo.Tuple<haxe.Int64, stdgo.Error> throw "not implemented";
inline function testConstants(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testVarint(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUvarint(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBufferTooSmall(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Ensure that we catch overflows of bytes going past MaxVarintLen64.
    // See issue https://golang.org/issues/41185
**/
inline function testBufferTooBigWithOverflow(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testOverflow(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNonCanonicalZero(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkPutUvarint32(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkPutUvarint64(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef T_littleEndian_asInterface = Dynamic;
@:invalid typedef T_littleEndian_static_extension = Dynamic;
@:invalid typedef T_bigEndian_asInterface = Dynamic;
@:invalid typedef T_bigEndian_static_extension = Dynamic;
@:invalid typedef T_byteSliceReader_asInterface = Dynamic;
@:invalid typedef T_byteSliceReader_static_extension = Dynamic;
@:invalid typedef T_nativeEndian_asInterface = Dynamic;
@:invalid typedef T_nativeEndian_static_extension = Dynamic;
@:invalid typedef T_decoder_asInterface = Dynamic;
@:invalid typedef T_decoder_static_extension = Dynamic;
@:invalid typedef T_encoder_asInterface = Dynamic;
@:invalid typedef T_encoder_static_extension = Dynamic;
