package stdgo.encoding.binary;
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
    static public inline function read(_r:stdgo._internal.io.Io_Reader.Reader, _order:ByteOrder, _data:stdgo.AnyInterface):stdgo.Error {
        final _data = (_data : stdgo.AnyInterface);
        return stdgo._internal.encoding.binary.Binary_read.read(_r, _order, _data);
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
    static public inline function write(_w:stdgo._internal.io.Io_Writer.Writer, _order:ByteOrder, _data:stdgo.AnyInterface):stdgo.Error {
        final _data = (_data : stdgo.AnyInterface);
        return stdgo._internal.encoding.binary.Binary_write.write(_w, _order, _data);
    }
    /**
        Size returns how many bytes Write would generate to encode the value v, which
        must be a fixed-size value or a slice of fixed-size values, or a pointer to such data.
        If v is neither of these, Size returns -1.
    **/
    static public inline function size(_v:stdgo.AnyInterface):StdTypes.Int {
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.binary.Binary_size.size(_v);
    }
    static public inline function testLittleEndianRead(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testLittleEndianRead.testLittleEndianRead(_t);
    }
    static public inline function testLittleEndianWrite(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testLittleEndianWrite.testLittleEndianWrite(_t);
    }
    static public inline function testLittleEndianPtrWrite(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testLittleEndianPtrWrite.testLittleEndianPtrWrite(_t);
    }
    static public inline function testBigEndianRead(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testBigEndianRead.testBigEndianRead(_t);
    }
    static public inline function testBigEndianWrite(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testBigEndianWrite.testBigEndianWrite(_t);
    }
    static public inline function testBigEndianPtrWrite(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testBigEndianPtrWrite.testBigEndianPtrWrite(_t);
    }
    static public inline function testReadSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testReadSlice.testReadSlice(_t);
    }
    static public inline function testWriteSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testWriteSlice.testWriteSlice(_t);
    }
    static public inline function testReadBool(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testReadBool.testReadBool(_t);
    }
    static public inline function testReadBoolSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testReadBoolSlice.testReadBoolSlice(_t);
    }
    static public inline function testSliceRoundTrip(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testSliceRoundTrip.testSliceRoundTrip(_t);
    }
    static public inline function testWriteT(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testWriteT.testWriteT(_t);
    }
    static public inline function testBlankFields(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testBlankFields.testBlankFields(_t);
    }
    static public inline function testSizeStructCache(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testSizeStructCache.testSizeStructCache(_t);
    }
    static public inline function testSizeInvalid(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testSizeInvalid.testSizeInvalid(_t);
    }
    static public inline function testUnexportedRead(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testUnexportedRead.testUnexportedRead(_t);
    }
    static public inline function testReadErrorMsg(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testReadErrorMsg.testReadErrorMsg(_t);
    }
    static public inline function testReadTruncated(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testReadTruncated.testReadTruncated(_t);
    }
    static public inline function testByteOrder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testByteOrder.testByteOrder(_t);
    }
    static public inline function testEarlyBoundsChecks(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testEarlyBoundsChecks.testEarlyBoundsChecks(_t);
    }
    static public inline function testReadInvalidDestination(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testReadInvalidDestination.testReadInvalidDestination(_t);
    }
    static public inline function testNoFixedSize(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testNoFixedSize.testNoFixedSize(_t);
    }
    static public inline function benchmarkReadSlice1000Int32s(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkReadSlice1000Int32s.benchmarkReadSlice1000Int32s(_b);
    }
    static public inline function benchmarkReadStruct(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkReadStruct.benchmarkReadStruct(_b);
    }
    static public inline function benchmarkWriteStruct(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkWriteStruct.benchmarkWriteStruct(_b);
    }
    static public inline function benchmarkReadInts(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkReadInts.benchmarkReadInts(_b);
    }
    static public inline function benchmarkWriteInts(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkWriteInts.benchmarkWriteInts(_b);
    }
    static public inline function benchmarkWriteSlice1000Int32s(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkWriteSlice1000Int32s.benchmarkWriteSlice1000Int32s(_b);
    }
    static public inline function benchmarkPutUint16(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkPutUint16.benchmarkPutUint16(_b);
    }
    static public inline function benchmarkAppendUint16(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkAppendUint16.benchmarkAppendUint16(_b);
    }
    static public inline function benchmarkPutUint32(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkPutUint32.benchmarkPutUint32(_b);
    }
    static public inline function benchmarkAppendUint32(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkAppendUint32.benchmarkAppendUint32(_b);
    }
    static public inline function benchmarkPutUint64(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkPutUint64.benchmarkPutUint64(_b);
    }
    static public inline function benchmarkAppendUint64(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkAppendUint64.benchmarkAppendUint64(_b);
    }
    static public inline function benchmarkLittleEndianPutUint16(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkLittleEndianPutUint16.benchmarkLittleEndianPutUint16(_b);
    }
    static public inline function benchmarkLittleEndianAppendUint16(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkLittleEndianAppendUint16.benchmarkLittleEndianAppendUint16(_b);
    }
    static public inline function benchmarkLittleEndianPutUint32(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkLittleEndianPutUint32.benchmarkLittleEndianPutUint32(_b);
    }
    static public inline function benchmarkLittleEndianAppendUint32(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkLittleEndianAppendUint32.benchmarkLittleEndianAppendUint32(_b);
    }
    static public inline function benchmarkLittleEndianPutUint64(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkLittleEndianPutUint64.benchmarkLittleEndianPutUint64(_b);
    }
    static public inline function benchmarkLittleEndianAppendUint64(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkLittleEndianAppendUint64.benchmarkLittleEndianAppendUint64(_b);
    }
    static public inline function benchmarkReadFloats(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkReadFloats.benchmarkReadFloats(_b);
    }
    static public inline function benchmarkWriteFloats(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkWriteFloats.benchmarkWriteFloats(_b);
    }
    static public inline function benchmarkReadSlice1000Float32s(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkReadSlice1000Float32s.benchmarkReadSlice1000Float32s(_b);
    }
    static public inline function benchmarkWriteSlice1000Float32s(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkWriteSlice1000Float32s.benchmarkWriteSlice1000Float32s(_b);
    }
    static public inline function benchmarkReadSlice1000Uint8s(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkReadSlice1000Uint8s.benchmarkReadSlice1000Uint8s(_b);
    }
    static public inline function benchmarkWriteSlice1000Uint8s(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkWriteSlice1000Uint8s.benchmarkWriteSlice1000Uint8s(_b);
    }
    static public inline function testNativeEndian(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testNativeEndian.testNativeEndian(_t);
    }
    /**
        AppendUvarint appends the varint-encoded form of x,
        as generated by PutUvarint, to buf and returns the extended buffer.
    **/
    static public inline function appendUvarint(_buf:Array<std.UInt>, _x:haxe.UInt64):Array<std.UInt> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _x = (_x : stdgo.GoUInt64);
        return [for (i in stdgo._internal.encoding.binary.Binary_appendUvarint.appendUvarint(_buf, _x)) i];
    }
    /**
        PutUvarint encodes a uint64 into buf and returns the number of bytes written.
        If the buffer is too small, PutUvarint will panic.
    **/
    static public inline function putUvarint(_buf:Array<std.UInt>, _x:haxe.UInt64):StdTypes.Int {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.encoding.binary.Binary_putUvarint.putUvarint(_buf, _x);
    }
    /**
        Uvarint decodes a uint64 from buf and returns that value and the
        number of bytes read (> 0). If an error occurred, the value is 0
        and the number of bytes n is <= 0 meaning:
        
        	n == 0: buf too small
        	n  < 0: value larger than 64 bits (overflow)
        	        and -n is the number of bytes read
    **/
    static public inline function uvarint(_buf:Array<std.UInt>):stdgo.Tuple<haxe.UInt64, StdTypes.Int> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.binary.Binary_uvarint.uvarint(_buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        AppendVarint appends the varint-encoded form of x,
        as generated by PutVarint, to buf and returns the extended buffer.
    **/
    static public inline function appendVarint(_buf:Array<std.UInt>, _x:haxe.Int64):Array<std.UInt> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _x = (_x : stdgo.GoInt64);
        return [for (i in stdgo._internal.encoding.binary.Binary_appendVarint.appendVarint(_buf, _x)) i];
    }
    /**
        PutVarint encodes an int64 into buf and returns the number of bytes written.
        If the buffer is too small, PutVarint will panic.
    **/
    static public inline function putVarint(_buf:Array<std.UInt>, _x:haxe.Int64):StdTypes.Int {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.encoding.binary.Binary_putVarint.putVarint(_buf, _x);
    }
    /**
        Varint decodes an int64 from buf and returns that value and the
        number of bytes read (> 0). If an error occurred, the value is 0
        and the number of bytes n is <= 0 with the following meaning:
        
        	n == 0: buf too small
        	n  < 0: value larger than 64 bits (overflow)
        	        and -n is the number of bytes read
    **/
    static public inline function varint(_buf:Array<std.UInt>):stdgo.Tuple<haxe.Int64, StdTypes.Int> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.binary.Binary_varint.varint(_buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ReadUvarint reads an encoded unsigned integer from r and returns it as a uint64.
        The error is EOF only if no bytes were read.
        If an EOF happens after reading some but not all the bytes,
        ReadUvarint returns io.ErrUnexpectedEOF.
    **/
    static public inline function readUvarint(_r:stdgo._internal.io.Io_ByteReader.ByteReader):stdgo.Tuple<haxe.UInt64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.binary.Binary_readUvarint.readUvarint(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ReadVarint reads an encoded signed integer from r and returns it as an int64.
        The error is EOF only if no bytes were read.
        If an EOF happens after reading some but not all the bytes,
        ReadVarint returns io.ErrUnexpectedEOF.
    **/
    static public inline function readVarint(_r:stdgo._internal.io.Io_ByteReader.ByteReader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.binary.Binary_readVarint.readVarint(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function testConstants(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testConstants.testConstants(_t);
    }
    static public inline function testVarint(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testVarint.testVarint(_t);
    }
    static public inline function testUvarint(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testUvarint.testUvarint(_t);
    }
    static public inline function testBufferTooSmall(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testBufferTooSmall.testBufferTooSmall(_t);
    }
    /**
        Ensure that we catch overflows of bytes going past MaxVarintLen64.
        See issue https://golang.org/issues/41185
    **/
    static public inline function testBufferTooBigWithOverflow(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testBufferTooBigWithOverflow.testBufferTooBigWithOverflow(_t);
    }
    static public inline function testOverflow(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testOverflow.testOverflow(_t);
    }
    static public inline function testNonCanonicalZero(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.binary.Binary_testNonCanonicalZero.testNonCanonicalZero(_t);
    }
    static public inline function benchmarkPutUvarint32(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkPutUvarint32.benchmarkPutUvarint32(_b);
    }
    static public inline function benchmarkPutUvarint64(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.binary.Binary_benchmarkPutUvarint64.benchmarkPutUvarint64(_b);
    }
}
