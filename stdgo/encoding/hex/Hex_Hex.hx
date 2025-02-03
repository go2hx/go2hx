package stdgo.encoding.hex;
/**
    Package hex implements hexadecimal encoding and decoding.
**/
class Hex {
    /**
        EncodedLen returns the length of an encoding of n source bytes.
        Specifically, it returns n * 2.
    **/
    static public inline function encodedLen(_n:StdTypes.Int):StdTypes.Int {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.encoding.hex.Hex_encodedLen.encodedLen(_n);
    }
    /**
        Encode encodes src into EncodedLen(len(src))
        bytes of dst. As a convenience, it returns the number
        of bytes written to dst, but this value is always EncodedLen(len(src)).
        Encode implements hexadecimal encoding.
    **/
    static public inline function encode(_dst:Array<std.UInt>, _src:Array<std.UInt>):StdTypes.Int {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.hex.Hex_encode.encode(_dst, _src);
    }
    /**
        DecodedLen returns the length of a decoding of x source bytes.
        Specifically, it returns x / 2.
    **/
    static public inline function decodedLen(_x:StdTypes.Int):StdTypes.Int {
        final _x = (_x : stdgo.GoInt);
        return stdgo._internal.encoding.hex.Hex_decodedLen.decodedLen(_x);
    }
    /**
        Decode decodes src into DecodedLen(len(src)) bytes,
        returning the actual number of bytes written to dst.
        
        Decode expects that src contains only hexadecimal
        characters and that src has even length.
        If the input is malformed, Decode returns the number
        of bytes decoded before the error.
    **/
    static public inline function decode(_dst:Array<std.UInt>, _src:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_decode.decode(_dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        EncodeToString returns the hexadecimal encoding of src.
    **/
    static public inline function encodeToString(_src:Array<std.UInt>):String {
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.hex.Hex_encodeToString.encodeToString(_src);
    }
    /**
        DecodeString returns the bytes represented by the hexadecimal string s.
        
        DecodeString expects that src contains only hexadecimal
        characters and that src has even length.
        If the input is malformed, DecodeString returns
        the bytes decoded before the error.
    **/
    static public inline function decodeString(_s:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_decodeString.decodeString(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Dump returns a string that contains a hex dump of the given data. The format
        of the hex dump matches the output of `hexdump -C` on the command line.
    **/
    static public inline function dump(_data:Array<std.UInt>):String {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.hex.Hex_dump.dump(_data);
    }
    /**
        NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.
    **/
    static public inline function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        return stdgo._internal.encoding.hex.Hex_newEncoder.newEncoder(_w);
    }
    /**
        NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
        NewDecoder expects that r contain only an even number of hexadecimal characters.
    **/
    static public inline function newDecoder(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.encoding.hex.Hex_newDecoder.newDecoder(_r);
    }
    /**
        Dumper returns a WriteCloser that writes a hex dump of all written data to
        w. The format of the dump matches the output of `hexdump -C` on the command
        line.
    **/
    static public inline function dumper(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.encoding.hex.Hex_dumper.dumper(_w);
    }
    static public inline function testEncode(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testEncode.testEncode(_t);
    }
    static public inline function testDecode(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testDecode.testDecode(_t);
    }
    static public inline function testEncodeToString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testEncodeToString.testEncodeToString(_t);
    }
    static public inline function testDecodeString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testDecodeString.testDecodeString(_t);
    }
    static public inline function testDecodeErr(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testDecodeErr.testDecodeErr(_t);
    }
    static public inline function testDecodeStringErr(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testDecodeStringErr.testDecodeStringErr(_t);
    }
    static public inline function testEncoderDecoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testEncoderDecoder.testEncoderDecoder(_t);
    }
    static public inline function testDecoderErr(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testDecoderErr.testDecoderErr(_t);
    }
    static public inline function testDumper(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testDumper.testDumper(_t);
    }
    static public inline function testDumper_doubleclose(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testDumper_doubleclose.testDumper_doubleclose(_t);
    }
    static public inline function testDumper_earlyclose(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testDumper_earlyclose.testDumper_earlyclose(_t);
    }
    static public inline function testDump(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.hex.Hex_testDump.testDump(_t);
    }
    static public inline function benchmarkEncode(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.hex.Hex_benchmarkEncode.benchmarkEncode(_b);
    }
    static public inline function benchmarkDecode(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.hex.Hex_benchmarkDecode.benchmarkDecode(_b);
    }
    static public inline function benchmarkDump(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.hex.Hex_benchmarkDump.benchmarkDump(_b);
    }
}
