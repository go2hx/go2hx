package stdgo.encoding.binary;
var littleEndian(get, set) : stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian;
private function get_littleEndian():stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian return stdgo._internal.encoding.binary.Binary_littleendian.littleEndian;
private function set_littleEndian(v:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian):stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian {
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian = v;
        return v;
    }
var bigEndian(get, set) : stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian;
private function get_bigEndian():stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian return stdgo._internal.encoding.binary.Binary_bigendian.bigEndian;
private function set_bigEndian(v:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian):stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian {
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian = v;
        return v;
    }
var nativeEndian(get, set) : stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian;
private function get_nativeEndian():stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian return stdgo._internal.encoding.binary.Binary_nativeendian.nativeEndian;
private function set_nativeEndian(v:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian):stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian {
        stdgo._internal.encoding.binary.Binary_nativeendian.nativeEndian = v;
        return v;
    }
var maxVarintLen16 : stdgo.GoUInt64 = 3i64;
var maxVarintLen32 : stdgo.GoUInt64 = 5i64;
var maxVarintLen64 : stdgo.GoUInt64 = 10i64;
typedef ByteOrder = stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder;
typedef AppendByteOrder = stdgo._internal.encoding.binary.Binary_appendbyteorder.AppendByteOrder;
typedef Struct = stdgo._internal.encoding.binary.Binary_struct.Struct;
typedef BlankFields = stdgo._internal.encoding.binary.Binary_blankfields.BlankFields;
typedef BlankFieldsProbe = stdgo._internal.encoding.binary.Binary_blankfieldsprobe.BlankFieldsProbe;
typedef Unexported = stdgo._internal.encoding.binary.Binary_unexported.Unexported;
typedef StructPointer = stdgo._internal.encoding.binary.Binary_structpointer.StructPointer;
typedef BlankFieldsPointer = stdgo._internal.encoding.binary.Binary_blankfieldspointer.BlankFieldsPointer;
typedef BlankFieldsProbePointer = stdgo._internal.encoding.binary.Binary_blankfieldsprobepointer.BlankFieldsProbePointer;
typedef UnexportedPointer = stdgo._internal.encoding.binary.Binary_unexportedpointer.UnexportedPointer;
/**
    * Package binary implements simple translation between numbers and byte
    * sequences and encoding and decoding of varints.
    * 
    * Numbers are translated by reading and writing fixed-size values.
    * A fixed-size value is either a fixed-size arithmetic
    * type (bool, int8, uint8, int16, float32, complex64, ...)
    * or an array or struct containing only fixed-size values.
    * 
    * The varint functions encode and decode single integer values using
    * a variable-length encoding; smaller values require fewer bytes.
    * For a specification, see
    * https://developers.google.com/protocol-buffers/docs/encoding.
    * 
    * This package favors simplicity over efficiency. Clients that require
    * high-performance serialization, especially for large data structures,
    * should look at more advanced solutions such as the encoding/gob
    * package or protocol buffers.
**/
class Binary {
    /**
        * Read reads structured binary data from r into data.
        * Data must be a pointer to a fixed-size value or a slice
        * of fixed-size values.
        * Bytes read from r are decoded using the specified byte order
        * and written to successive fields of the data.
        * When decoding boolean values, a zero byte is decoded as false, and
        * any other non-zero byte is decoded as true.
        * When reading into structs, the field data for fields with
        * blank (_) field names is skipped; i.e., blank field names
        * may be used for padding.
        * When reading into a struct, all non-blank fields must be exported
        * or Read may panic.
        * 
        * The error is EOF only if no bytes were read.
        * If an EOF happens after reading some but not all the bytes,
        * Read returns ErrUnexpectedEOF.
    **/
    static public inline function read(_r:stdgo._internal.io.Io_reader.Reader, _order:ByteOrder, _data:stdgo.AnyInterface):stdgo.Error return stdgo._internal.encoding.binary.Binary_read.read(_r, _order, _data);
    /**
        * Write writes the binary representation of data into w.
        * Data must be a fixed-size value or a slice of fixed-size
        * values, or a pointer to such data.
        * Boolean values encode as one byte: 1 for true, and 0 for false.
        * Bytes written to w are encoded using the specified byte order
        * and read from successive fields of the data.
        * When writing structs, zero values are written for fields
        * with blank (_) field names.
    **/
    static public inline function write(_w:stdgo._internal.io.Io_writer.Writer, _order:ByteOrder, _data:stdgo.AnyInterface):stdgo.Error return stdgo._internal.encoding.binary.Binary_write.write(_w, _order, _data);
    /**
        * Size returns how many bytes Write would generate to encode the value v, which
        * must be a fixed-size value or a slice of fixed-size values, or a pointer to such data.
        * If v is neither of these, Size returns -1.
    **/
    static public inline function size(_v:stdgo.AnyInterface):stdgo.GoInt return stdgo._internal.encoding.binary.Binary_size.size(_v);
    static public inline function testLittleEndianRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testlittleendianread.testLittleEndianRead(_t);
    static public inline function testLittleEndianWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testlittleendianwrite.testLittleEndianWrite(_t);
    static public inline function testLittleEndianPtrWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testlittleendianptrwrite.testLittleEndianPtrWrite(_t);
    static public inline function testBigEndianRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testbigendianread.testBigEndianRead(_t);
    static public inline function testBigEndianWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testbigendianwrite.testBigEndianWrite(_t);
    static public inline function testBigEndianPtrWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testbigendianptrwrite.testBigEndianPtrWrite(_t);
    static public inline function testReadSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testreadslice.testReadSlice(_t);
    static public inline function testWriteSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testwriteslice.testWriteSlice(_t);
    static public inline function testReadBool(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testreadbool.testReadBool(_t);
    static public inline function testReadBoolSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testreadboolslice.testReadBoolSlice(_t);
    static public inline function testSliceRoundTrip(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testsliceroundtrip.testSliceRoundTrip(_t);
    static public inline function testWriteT(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testwritet.testWriteT(_t);
    static public inline function testBlankFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testblankfields.testBlankFields(_t);
    static public inline function testSizeStructCache(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testsizestructcache.testSizeStructCache(_t);
    static public inline function testSizeInvalid(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testsizeinvalid.testSizeInvalid(_t);
    static public inline function testUnexportedRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testunexportedread.testUnexportedRead(_t);
    static public inline function testReadErrorMsg(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testreaderrormsg.testReadErrorMsg(_t);
    static public inline function testReadTruncated(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testreadtruncated.testReadTruncated(_t);
    static public inline function testByteOrder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testbyteorder.testByteOrder(_t);
    static public inline function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testearlyboundschecks.testEarlyBoundsChecks(_t);
    static public inline function testReadInvalidDestination(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testreadinvaliddestination.testReadInvalidDestination(_t);
    static public inline function testNoFixedSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testnofixedsize.testNoFixedSize(_t);
    static public inline function benchmarkReadSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkreadslice1000int32s.benchmarkReadSlice1000Int32s(_b);
    static public inline function benchmarkReadStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkreadstruct.benchmarkReadStruct(_b);
    static public inline function benchmarkWriteStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkwritestruct.benchmarkWriteStruct(_b);
    static public inline function benchmarkReadInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkreadints.benchmarkReadInts(_b);
    static public inline function benchmarkWriteInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkwriteints.benchmarkWriteInts(_b);
    static public inline function benchmarkWriteSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkwriteslice1000int32s.benchmarkWriteSlice1000Int32s(_b);
    static public inline function benchmarkPutUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkputuint16.benchmarkPutUint16(_b);
    static public inline function benchmarkAppendUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkappenduint16.benchmarkAppendUint16(_b);
    static public inline function benchmarkPutUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkputuint32.benchmarkPutUint32(_b);
    static public inline function benchmarkAppendUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkappenduint32.benchmarkAppendUint32(_b);
    static public inline function benchmarkPutUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkputuint64.benchmarkPutUint64(_b);
    static public inline function benchmarkAppendUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkappenduint64.benchmarkAppendUint64(_b);
    static public inline function benchmarkLittleEndianPutUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarklittleendianputuint16.benchmarkLittleEndianPutUint16(_b);
    static public inline function benchmarkLittleEndianAppendUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarklittleendianappenduint16.benchmarkLittleEndianAppendUint16(_b);
    static public inline function benchmarkLittleEndianPutUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarklittleendianputuint32.benchmarkLittleEndianPutUint32(_b);
    static public inline function benchmarkLittleEndianAppendUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarklittleendianappenduint32.benchmarkLittleEndianAppendUint32(_b);
    static public inline function benchmarkLittleEndianPutUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarklittleendianputuint64.benchmarkLittleEndianPutUint64(_b);
    static public inline function benchmarkLittleEndianAppendUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarklittleendianappenduint64.benchmarkLittleEndianAppendUint64(_b);
    static public inline function benchmarkReadFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkreadfloats.benchmarkReadFloats(_b);
    static public inline function benchmarkWriteFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkwritefloats.benchmarkWriteFloats(_b);
    static public inline function benchmarkReadSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkreadslice1000float32s.benchmarkReadSlice1000Float32s(_b);
    static public inline function benchmarkWriteSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkwriteslice1000float32s.benchmarkWriteSlice1000Float32s(_b);
    static public inline function benchmarkReadSlice1000Uint8s(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkreadslice1000uint8s.benchmarkReadSlice1000Uint8s(_b);
    static public inline function benchmarkWriteSlice1000Uint8s(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkwriteslice1000uint8s.benchmarkWriteSlice1000Uint8s(_b);
    static public inline function testNativeEndian(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testnativeendian.testNativeEndian(_t);
    /**
        * AppendUvarint appends the varint-encoded form of x,
        * as generated by PutUvarint, to buf and returns the extended buffer.
    **/
    static public inline function appendUvarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.encoding.binary.Binary_appenduvarint.appendUvarint(_buf, _x);
    /**
        * PutUvarint encodes a uint64 into buf and returns the number of bytes written.
        * If the buffer is too small, PutUvarint will panic.
    **/
    static public inline function putUvarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt64):stdgo.GoInt return stdgo._internal.encoding.binary.Binary_putuvarint.putUvarint(_buf, _x);
    /**
        * Uvarint decodes a uint64 from buf and returns that value and the
        * number of bytes read (> 0). If an error occurred, the value is 0
        * and the number of bytes n is <= 0 meaning:
        * 
        * 	n == 0: buf too small
        * 	n  < 0: value larger than 64 bits (overflow)
        * 	        and -n is the number of bytes read
    **/
    static public inline function uvarint(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; } return stdgo._internal.encoding.binary.Binary_uvarint.uvarint(_buf);
    /**
        * AppendVarint appends the varint-encoded form of x,
        * as generated by PutVarint, to buf and returns the extended buffer.
    **/
    static public inline function appendVarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt64):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.encoding.binary.Binary_appendvarint.appendVarint(_buf, _x);
    /**
        * PutVarint encodes an int64 into buf and returns the number of bytes written.
        * If the buffer is too small, PutVarint will panic.
    **/
    static public inline function putVarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt64):stdgo.GoInt return stdgo._internal.encoding.binary.Binary_putvarint.putVarint(_buf, _x);
    /**
        * Varint decodes an int64 from buf and returns that value and the
        * number of bytes read (> 0). If an error occurred, the value is 0
        * and the number of bytes n is <= 0 with the following meaning:
        * 
        * 	n == 0: buf too small
        * 	n  < 0: value larger than 64 bits (overflow)
        * 	        and -n is the number of bytes read
    **/
    static public inline function varint(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt; } return stdgo._internal.encoding.binary.Binary_varint.varint(_buf);
    /**
        * ReadUvarint reads an encoded unsigned integer from r and returns it as a uint64.
        * The error is EOF only if no bytes were read.
        * If an EOF happens after reading some but not all the bytes,
        * ReadUvarint returns io.ErrUnexpectedEOF.
    **/
    static public inline function readUvarint(_r:stdgo._internal.io.Io_bytereader.ByteReader):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } return stdgo._internal.encoding.binary.Binary_readuvarint.readUvarint(_r);
    /**
        * ReadVarint reads an encoded signed integer from r and returns it as an int64.
        * The error is EOF only if no bytes were read.
        * If an EOF happens after reading some but not all the bytes,
        * ReadVarint returns io.ErrUnexpectedEOF.
    **/
    static public inline function readVarint(_r:stdgo._internal.io.Io_bytereader.ByteReader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return stdgo._internal.encoding.binary.Binary_readvarint.readVarint(_r);
    static public inline function testConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testconstants.testConstants(_t);
    static public inline function testVarint(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testvarint.testVarint(_t);
    static public inline function testUvarint(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testuvarint.testUvarint(_t);
    static public inline function testBufferTooSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testbuffertoosmall.testBufferTooSmall(_t);
    /**
        * Ensure that we catch overflows of bytes going past MaxVarintLen64.
        * See issue https://golang.org/issues/41185
    **/
    static public inline function testBufferTooBigWithOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testbuffertoobigwithoverflow.testBufferTooBigWithOverflow(_t);
    static public inline function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testoverflow.testOverflow(_t);
    static public inline function testNonCanonicalZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.binary.Binary_testnoncanonicalzero.testNonCanonicalZero(_t);
    static public inline function benchmarkPutUvarint32(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkputuvarint32.benchmarkPutUvarint32(_b);
    static public inline function benchmarkPutUvarint64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.binary.Binary_benchmarkputuvarint64.benchmarkPutUvarint64(_b);
}
