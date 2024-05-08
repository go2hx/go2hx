package stdgo.encoding;
/**
    Package binary implements simple translation between numbers and byte
    sequences and encoding and decoding of varints.
    
    Numbers are translated by reading and writing fixed-size values.
    A fixed-size value is either a fixed-size arithmetic
    type (bool, int8, uint8, int16, float32, complex64, ...)
    or an array or struct containing only fixed-size values.
    
    The varint functions encode and decode single integer values using
    a variable-length encoding; smaller values require fewer bytes.
    For a specification, see
    https://developers.google.com/protocol-buffers/docs/encoding.
    
    This package favors simplicity over efficiency. Clients that require
    high-performance serialization, especially for large data structures,
    should look at more advanced solutions such as the encoding/gob
    package or protocol buffers.
**/
private var __go2hxdoc__package : Bool;
var littleEndian(get, set) : T_littleEndian;
private function get_littleEndian():T_littleEndian return stdgo._internal.encoding.binary.Binary.littleEndian;
private function set_littleEndian(v:T_littleEndian):T_littleEndian return stdgo._internal.encoding.binary.Binary.littleEndian = v;
var bigEndian(get, set) : T_bigEndian;
private function get_bigEndian():T_bigEndian return stdgo._internal.encoding.binary.Binary.bigEndian;
private function set_bigEndian(v:T_bigEndian):T_bigEndian return stdgo._internal.encoding.binary.Binary.bigEndian = v;
var nativeEndian(get, set) : T_nativeEndian;
private function get_nativeEndian():T_nativeEndian return stdgo._internal.encoding.binary.Binary.nativeEndian;
private function set_nativeEndian(v:T_nativeEndian):T_nativeEndian return stdgo._internal.encoding.binary.Binary.nativeEndian = v;
final maxVarintLen16 : haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen16;
final maxVarintLen32 : haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen32;
final maxVarintLen64 : haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen64;
@:forward @:forward.new abstract ByteOrder_static_extension(stdgo._internal.encoding.binary.Binary.ByteOrder_static_extension) from stdgo._internal.encoding.binary.Binary.ByteOrder_static_extension to stdgo._internal.encoding.binary.Binary.ByteOrder_static_extension {

}
typedef ByteOrder = stdgo._internal.encoding.binary.Binary.ByteOrder;
@:forward @:forward.new abstract AppendByteOrder_static_extension(stdgo._internal.encoding.binary.Binary.AppendByteOrder_static_extension) from stdgo._internal.encoding.binary.Binary.AppendByteOrder_static_extension to stdgo._internal.encoding.binary.Binary.AppendByteOrder_static_extension {

}
typedef AppendByteOrder = stdgo._internal.encoding.binary.Binary.AppendByteOrder;
@:forward @:forward.new abstract T_littleEndian(stdgo._internal.encoding.binary.Binary.T_littleEndian) from stdgo._internal.encoding.binary.Binary.T_littleEndian to stdgo._internal.encoding.binary.Binary.T_littleEndian {

}
@:forward @:forward.new abstract T_bigEndian(stdgo._internal.encoding.binary.Binary.T_bigEndian) from stdgo._internal.encoding.binary.Binary.T_bigEndian to stdgo._internal.encoding.binary.Binary.T_bigEndian {

}
@:forward @:forward.new abstract T_coder(stdgo._internal.encoding.binary.Binary.T_coder) from stdgo._internal.encoding.binary.Binary.T_coder to stdgo._internal.encoding.binary.Binary.T_coder {

}
@:forward @:forward.new abstract Struct(stdgo._internal.encoding.binary.Binary.Struct) from stdgo._internal.encoding.binary.Binary.Struct to stdgo._internal.encoding.binary.Binary.Struct {

}
@:forward @:forward.new abstract T_(stdgo._internal.encoding.binary.Binary.T_) from stdgo._internal.encoding.binary.Binary.T_ to stdgo._internal.encoding.binary.Binary.T_ {

}
@:forward @:forward.new abstract BlankFields(stdgo._internal.encoding.binary.Binary.BlankFields) from stdgo._internal.encoding.binary.Binary.BlankFields to stdgo._internal.encoding.binary.Binary.BlankFields {

}
@:forward @:forward.new abstract BlankFieldsProbe(stdgo._internal.encoding.binary.Binary.BlankFieldsProbe) from stdgo._internal.encoding.binary.Binary.BlankFieldsProbe to stdgo._internal.encoding.binary.Binary.BlankFieldsProbe {

}
@:forward @:forward.new abstract Unexported(stdgo._internal.encoding.binary.Binary.Unexported) from stdgo._internal.encoding.binary.Binary.Unexported to stdgo._internal.encoding.binary.Binary.Unexported {

}
@:forward @:forward.new abstract T_byteSliceReader(stdgo._internal.encoding.binary.Binary.T_byteSliceReader) from stdgo._internal.encoding.binary.Binary.T_byteSliceReader to stdgo._internal.encoding.binary.Binary.T_byteSliceReader {

}
@:forward @:forward.new abstract T_nativeEndian(stdgo._internal.encoding.binary.Binary.T_nativeEndian) from stdgo._internal.encoding.binary.Binary.T_nativeEndian to stdgo._internal.encoding.binary.Binary.T_nativeEndian {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.encoding.binary.Binary.T__struct_0_asInterface) from stdgo._internal.encoding.binary.Binary.T__struct_0_asInterface to stdgo._internal.encoding.binary.Binary.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.encoding.binary.Binary.T__struct_0_static_extension) from stdgo._internal.encoding.binary.Binary.T__struct_0_static_extension to stdgo._internal.encoding.binary.Binary.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.encoding.binary.Binary.T__struct_0;
@:forward @:forward.new abstract T__struct_1_asInterface(stdgo._internal.encoding.binary.Binary.T__struct_1_asInterface) from stdgo._internal.encoding.binary.Binary.T__struct_1_asInterface to stdgo._internal.encoding.binary.Binary.T__struct_1_asInterface {

}
@:forward @:forward.new abstract T__struct_1_static_extension(stdgo._internal.encoding.binary.Binary.T__struct_1_static_extension) from stdgo._internal.encoding.binary.Binary.T__struct_1_static_extension to stdgo._internal.encoding.binary.Binary.T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.encoding.binary.Binary.T__struct_1;
@:forward @:forward.new abstract T__struct_2_asInterface(stdgo._internal.encoding.binary.Binary.T__struct_2_asInterface) from stdgo._internal.encoding.binary.Binary.T__struct_2_asInterface to stdgo._internal.encoding.binary.Binary.T__struct_2_asInterface {

}
@:forward @:forward.new abstract T__struct_2_static_extension(stdgo._internal.encoding.binary.Binary.T__struct_2_static_extension) from stdgo._internal.encoding.binary.Binary.T__struct_2_static_extension to stdgo._internal.encoding.binary.Binary.T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.encoding.binary.Binary.T__struct_2;
@:forward @:forward.new abstract T__struct_3_asInterface(stdgo._internal.encoding.binary.Binary.T__struct_3_asInterface) from stdgo._internal.encoding.binary.Binary.T__struct_3_asInterface to stdgo._internal.encoding.binary.Binary.T__struct_3_asInterface {

}
@:forward @:forward.new abstract T__struct_3_static_extension(stdgo._internal.encoding.binary.Binary.T__struct_3_static_extension) from stdgo._internal.encoding.binary.Binary.T__struct_3_static_extension to stdgo._internal.encoding.binary.Binary.T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.encoding.binary.Binary.T__struct_3;
@:forward @:forward.new abstract T__struct_4_asInterface(stdgo._internal.encoding.binary.Binary.T__struct_4_asInterface) from stdgo._internal.encoding.binary.Binary.T__struct_4_asInterface to stdgo._internal.encoding.binary.Binary.T__struct_4_asInterface {

}
@:forward @:forward.new abstract T__struct_4_static_extension(stdgo._internal.encoding.binary.Binary.T__struct_4_static_extension) from stdgo._internal.encoding.binary.Binary.T__struct_4_static_extension to stdgo._internal.encoding.binary.Binary.T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.encoding.binary.Binary.T__struct_4;
@:forward @:forward.new abstract T__struct_5_asInterface(stdgo._internal.encoding.binary.Binary.T__struct_5_asInterface) from stdgo._internal.encoding.binary.Binary.T__struct_5_asInterface to stdgo._internal.encoding.binary.Binary.T__struct_5_asInterface {

}
@:forward @:forward.new abstract T__struct_5_static_extension(stdgo._internal.encoding.binary.Binary.T__struct_5_static_extension) from stdgo._internal.encoding.binary.Binary.T__struct_5_static_extension to stdgo._internal.encoding.binary.Binary.T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.encoding.binary.Binary.T__struct_5;
@:forward @:forward.new abstract T__struct_6_asInterface(stdgo._internal.encoding.binary.Binary.T__struct_6_asInterface) from stdgo._internal.encoding.binary.Binary.T__struct_6_asInterface to stdgo._internal.encoding.binary.Binary.T__struct_6_asInterface {

}
@:forward @:forward.new abstract T__struct_6_static_extension(stdgo._internal.encoding.binary.Binary.T__struct_6_static_extension) from stdgo._internal.encoding.binary.Binary.T__struct_6_static_extension to stdgo._internal.encoding.binary.Binary.T__struct_6_static_extension {

}
typedef T__struct_6 = stdgo._internal.encoding.binary.Binary.T__struct_6;
typedef T_decoder = stdgo._internal.encoding.binary.Binary.T_decoder;
typedef T_encoder = stdgo._internal.encoding.binary.Binary.T_encoder;
@:forward @:forward.new abstract T_testSizeStructCache_11___localname___foo(stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo) from stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo to stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo {

}
@:forward @:forward.new abstract T_testSizeStructCache_12___localname___bar(stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_12___localname___bar) from stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_12___localname___bar to stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_12___localname___bar {

}
@:forward @:forward.new abstract T_testByteOrder_13___localname___byteOrder_static_extension(stdgo._internal.encoding.binary.Binary.T_testByteOrder_13___localname___byteOrder_static_extension) from stdgo._internal.encoding.binary.Binary.T_testByteOrder_13___localname___byteOrder_static_extension to stdgo._internal.encoding.binary.Binary.T_testByteOrder_13___localname___byteOrder_static_extension {

}
typedef T_testByteOrder_13___localname___byteOrder = stdgo._internal.encoding.binary.Binary.T_testByteOrder_13___localname___byteOrder;
@:forward @:forward.new abstract T_testNoFixedSize_14___localname___Person(stdgo._internal.encoding.binary.Binary.T_testNoFixedSize_14___localname___Person) from stdgo._internal.encoding.binary.Binary.T_testNoFixedSize_14___localname___Person to stdgo._internal.encoding.binary.Binary.T_testNoFixedSize_14___localname___Person {

}
@:forward @:forward.new abstract T_littleEndian_asInterface(stdgo._internal.encoding.binary.Binary.T_littleEndian_asInterface) from stdgo._internal.encoding.binary.Binary.T_littleEndian_asInterface to stdgo._internal.encoding.binary.Binary.T_littleEndian_asInterface {

}
@:forward @:forward.new abstract T_littleEndian_static_extension(stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension) from stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension to stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension {

}
@:forward @:forward.new abstract T_bigEndian_asInterface(stdgo._internal.encoding.binary.Binary.T_bigEndian_asInterface) from stdgo._internal.encoding.binary.Binary.T_bigEndian_asInterface to stdgo._internal.encoding.binary.Binary.T_bigEndian_asInterface {

}
@:forward @:forward.new abstract T_bigEndian_static_extension(stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension) from stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension to stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension {

}
@:forward @:forward.new abstract T_byteSliceReader_asInterface(stdgo._internal.encoding.binary.Binary.T_byteSliceReader_asInterface) from stdgo._internal.encoding.binary.Binary.T_byteSliceReader_asInterface to stdgo._internal.encoding.binary.Binary.T_byteSliceReader_asInterface {

}
@:forward @:forward.new abstract T_byteSliceReader_static_extension(stdgo._internal.encoding.binary.Binary.T_byteSliceReader_static_extension) from stdgo._internal.encoding.binary.Binary.T_byteSliceReader_static_extension to stdgo._internal.encoding.binary.Binary.T_byteSliceReader_static_extension {

}
@:forward @:forward.new abstract T_nativeEndian_asInterface(stdgo._internal.encoding.binary.Binary.T_nativeEndian_asInterface) from stdgo._internal.encoding.binary.Binary.T_nativeEndian_asInterface to stdgo._internal.encoding.binary.Binary.T_nativeEndian_asInterface {

}
@:forward @:forward.new abstract T_nativeEndian_static_extension(stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension) from stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension to stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension {

}
@:forward @:forward.new abstract T_decoder_asInterface(stdgo._internal.encoding.binary.Binary.T_decoder_asInterface) from stdgo._internal.encoding.binary.Binary.T_decoder_asInterface to stdgo._internal.encoding.binary.Binary.T_decoder_asInterface {

}
@:forward @:forward.new abstract T_decoder_static_extension(stdgo._internal.encoding.binary.Binary.T_decoder_static_extension) from stdgo._internal.encoding.binary.Binary.T_decoder_static_extension to stdgo._internal.encoding.binary.Binary.T_decoder_static_extension {

}
@:forward @:forward.new abstract T_encoder_asInterface(stdgo._internal.encoding.binary.Binary.T_encoder_asInterface) from stdgo._internal.encoding.binary.Binary.T_encoder_asInterface to stdgo._internal.encoding.binary.Binary.T_encoder_asInterface {

}
@:forward @:forward.new abstract T_encoder_static_extension(stdgo._internal.encoding.binary.Binary.T_encoder_static_extension) from stdgo._internal.encoding.binary.Binary.T_encoder_static_extension to stdgo._internal.encoding.binary.Binary.T_encoder_static_extension {

}
class Binary {
    /**
        Read reads structured binary data from r into data.
        Data must be a pointer to a fixed-size value or a slice
        of fixed-size values.
        Bytes read from r are decoded using the specified byte order
        and written to successive fields of the data.
        When decoding boolean values, a zero byte is decoded as false, and
        any other non-zero byte is decoded as true.
        When reading into structs, the field data for fields with
        blank (_) field names is skipped; i.e., blank field names
        may be used for padding.
        When reading into a struct, all non-blank fields must be exported
        or Read may panic.
        
        The error is EOF only if no bytes were read.
        If an EOF happens after reading some but not all the bytes,
        Read returns ErrUnexpectedEOF.
    **/
    static public function read(r:stdgo._internal.io.Io.Reader, order:ByteOrder, data:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.binary.Binary.read(r, order, data);
    }
    /**
        Write writes the binary representation of data into w.
        Data must be a fixed-size value or a slice of fixed-size
        values, or a pointer to such data.
        Boolean values encode as one byte: 1 for true, and 0 for false.
        Bytes written to w are encoded using the specified byte order
        and read from successive fields of the data.
        When writing structs, zero values are written for fields
        with blank (_) field names.
    **/
    static public function write(w:stdgo._internal.io.Io.Writer, order:ByteOrder, data:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.binary.Binary.write(w, order, data);
    }
    /**
        Size returns how many bytes Write would generate to encode the value v, which
        must be a fixed-size value or a slice of fixed-size values, or a pointer to such data.
        If v is neither of these, Size returns -1.
    **/
    static public function size(v:stdgo.AnyInterface):StdTypes.Int {
        return stdgo._internal.encoding.binary.Binary.size(v);
    }
    static public function testLittleEndianRead(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testLittleEndianRead(t);
    }
    static public function testLittleEndianWrite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testLittleEndianWrite(t);
    }
    static public function testLittleEndianPtrWrite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testLittleEndianPtrWrite(t);
    }
    static public function testBigEndianRead(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBigEndianRead(t);
    }
    static public function testBigEndianWrite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBigEndianWrite(t);
    }
    static public function testBigEndianPtrWrite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBigEndianPtrWrite(t);
    }
    static public function testReadSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadSlice(t);
    }
    static public function testWriteSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testWriteSlice(t);
    }
    static public function testReadBool(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadBool(t);
    }
    static public function testReadBoolSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadBoolSlice(t);
    }
    static public function testSliceRoundTrip(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testSliceRoundTrip(t);
    }
    static public function testWriteT(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testWriteT(t);
    }
    static public function testBlankFields(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBlankFields(t);
    }
    static public function testSizeStructCache(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testSizeStructCache(t);
    }
    static public function testSizeInvalid(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testSizeInvalid(t);
    }
    static public function testUnexportedRead(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testUnexportedRead(t);
    }
    static public function testReadErrorMsg(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadErrorMsg(t);
    }
    static public function testReadTruncated(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadTruncated(t);
    }
    static public function testByteOrder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testByteOrder(t);
    }
    static public function testEarlyBoundsChecks(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testEarlyBoundsChecks(t);
    }
    static public function testReadInvalidDestination(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadInvalidDestination(t);
    }
    static public function testNoFixedSize(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testNoFixedSize(t);
    }
    static public function benchmarkReadSlice1000Int32s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Int32s(b);
    }
    static public function benchmarkReadStruct(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadStruct(b);
    }
    static public function benchmarkWriteStruct(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteStruct(b);
    }
    static public function benchmarkReadInts(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadInts(b);
    }
    static public function benchmarkWriteInts(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteInts(b);
    }
    static public function benchmarkWriteSlice1000Int32s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Int32s(b);
    }
    static public function benchmarkPutUint16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUint16(b);
    }
    static public function benchmarkAppendUint16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkAppendUint16(b);
    }
    static public function benchmarkPutUint32(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUint32(b);
    }
    static public function benchmarkAppendUint32(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkAppendUint32(b);
    }
    static public function benchmarkPutUint64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUint64(b);
    }
    static public function benchmarkAppendUint64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkAppendUint64(b);
    }
    static public function benchmarkLittleEndianPutUint16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint16(b);
    }
    static public function benchmarkLittleEndianAppendUint16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint16(b);
    }
    static public function benchmarkLittleEndianPutUint32(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint32(b);
    }
    static public function benchmarkLittleEndianAppendUint32(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint32(b);
    }
    static public function benchmarkLittleEndianPutUint64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint64(b);
    }
    static public function benchmarkLittleEndianAppendUint64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint64(b);
    }
    static public function benchmarkReadFloats(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadFloats(b);
    }
    static public function benchmarkWriteFloats(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteFloats(b);
    }
    static public function benchmarkReadSlice1000Float32s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Float32s(b);
    }
    static public function benchmarkWriteSlice1000Float32s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Float32s(b);
    }
    static public function benchmarkReadSlice1000Uint8s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Uint8s(b);
    }
    static public function benchmarkWriteSlice1000Uint8s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Uint8s(b);
    }
    static public function testNativeEndian(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testNativeEndian(t);
    }
    /**
        AppendUvarint appends the varint-encoded form of x,
        as generated by PutUvarint, to buf and returns the extended buffer.
    **/
    static public function appendUvarint(buf:Array<StdTypes.Int>, x:haxe.UInt64):Array<StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.appendUvarint(buf, x)) i];
    }
    /**
        PutUvarint encodes a uint64 into buf and returns the number of bytes written.
        If the buffer is too small, PutUvarint will panic.
    **/
    static public function putUvarint(buf:Array<StdTypes.Int>, x:haxe.UInt64):StdTypes.Int {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.putUvarint(buf, x);
    }
    /**
        Uvarint decodes a uint64 from buf and returns that value and the
        number of bytes read (> 0). If an error occurred, the value is 0
        and the number of bytes n is <= 0 meaning:
        
        	n == 0: buf too small
        	n  < 0: value larger than 64 bits (overflow)
        	        and -n is the number of bytes read
    **/
    static public function uvarint(buf:Array<StdTypes.Int>):stdgo.Tuple<haxe.UInt64, StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.binary.Binary.uvarint(buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        AppendVarint appends the varint-encoded form of x,
        as generated by PutVarint, to buf and returns the extended buffer.
    **/
    static public function appendVarint(buf:Array<StdTypes.Int>, x:haxe.Int64):Array<StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.appendVarint(buf, x)) i];
    }
    /**
        PutVarint encodes an int64 into buf and returns the number of bytes written.
        If the buffer is too small, PutVarint will panic.
    **/
    static public function putVarint(buf:Array<StdTypes.Int>, x:haxe.Int64):StdTypes.Int {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.putVarint(buf, x);
    }
    /**
        Varint decodes an int64 from buf and returns that value and the
        number of bytes read (> 0). If an error occurred, the value is 0
        and the number of bytes n is <= 0 with the following meaning:
        
        	n == 0: buf too small
        	n  < 0: value larger than 64 bits (overflow)
        	        and -n is the number of bytes read
    **/
    static public function varint(buf:Array<StdTypes.Int>):stdgo.Tuple<haxe.Int64, StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.binary.Binary.varint(buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ReadUvarint reads an encoded unsigned integer from r and returns it as a uint64.
        The error is EOF only if no bytes were read.
        If an EOF happens after reading some but not all the bytes,
        ReadUvarint returns io.ErrUnexpectedEOF.
    **/
    static public function readUvarint(r:stdgo._internal.io.Io.ByteReader):stdgo.Tuple<haxe.UInt64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.binary.Binary.readUvarint(r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ReadVarint reads an encoded signed integer from r and returns it as an int64.
        The error is EOF only if no bytes were read.
        If an EOF happens after reading some but not all the bytes,
        ReadVarint returns io.ErrUnexpectedEOF.
    **/
    static public function readVarint(r:stdgo._internal.io.Io.ByteReader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.binary.Binary.readVarint(r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testConstants(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testConstants(t);
    }
    static public function testVarint(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testVarint(t);
    }
    static public function testUvarint(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testUvarint(t);
    }
    static public function testBufferTooSmall(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBufferTooSmall(t);
    }
    /**
        Ensure that we catch overflows of bytes going past MaxVarintLen64.
        See issue https://golang.org/issues/41185
    **/
    static public function testBufferTooBigWithOverflow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBufferTooBigWithOverflow(t);
    }
    static public function testOverflow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testOverflow(t);
    }
    static public function testNonCanonicalZero(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testNonCanonicalZero(t);
    }
    static public function benchmarkPutUvarint32(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUvarint32(b);
    }
    static public function benchmarkPutUvarint64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUvarint64(b);
    }
}
