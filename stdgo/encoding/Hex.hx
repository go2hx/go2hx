package stdgo.encoding;
/**
    Package hex implements hexadecimal encoding and decoding.
**/
private var __go2hxdoc__package : Bool;
var errLength(get, set) : stdgo.Error;
private function get_errLength():stdgo.Error return stdgo._internal.encoding.hex.Hex.errLength;
private function set_errLength(v:stdgo.Error):stdgo.Error return stdgo._internal.encoding.hex.Hex.errLength = v;
@:forward @:forward.new abstract T_encoder(stdgo._internal.encoding.hex.Hex.T_encoder) from stdgo._internal.encoding.hex.Hex.T_encoder to stdgo._internal.encoding.hex.Hex.T_encoder {

}
@:forward @:forward.new abstract T_decoder(stdgo._internal.encoding.hex.Hex.T_decoder) from stdgo._internal.encoding.hex.Hex.T_decoder to stdgo._internal.encoding.hex.Hex.T_decoder {

}
@:forward @:forward.new abstract T_dumper(stdgo._internal.encoding.hex.Hex.T_dumper) from stdgo._internal.encoding.hex.Hex.T_dumper to stdgo._internal.encoding.hex.Hex.T_dumper {

}
@:forward @:forward.new abstract T_encDecTest(stdgo._internal.encoding.hex.Hex.T_encDecTest) from stdgo._internal.encoding.hex.Hex.T_encDecTest to stdgo._internal.encoding.hex.Hex.T_encDecTest {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.encoding.hex.Hex.T__struct_0_asInterface) from stdgo._internal.encoding.hex.Hex.T__struct_0_asInterface to stdgo._internal.encoding.hex.Hex.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.encoding.hex.Hex.T__struct_0_static_extension) from stdgo._internal.encoding.hex.Hex.T__struct_0_static_extension to stdgo._internal.encoding.hex.Hex.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.encoding.hex.Hex.T__struct_0;
@:forward @:forward.new abstract T__struct_1_asInterface(stdgo._internal.encoding.hex.Hex.T__struct_1_asInterface) from stdgo._internal.encoding.hex.Hex.T__struct_1_asInterface to stdgo._internal.encoding.hex.Hex.T__struct_1_asInterface {

}
@:forward @:forward.new abstract T__struct_1_static_extension(stdgo._internal.encoding.hex.Hex.T__struct_1_static_extension) from stdgo._internal.encoding.hex.Hex.T__struct_1_static_extension to stdgo._internal.encoding.hex.Hex.T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.encoding.hex.Hex.T__struct_1;
@:forward @:forward.new abstract T__struct_2_asInterface(stdgo._internal.encoding.hex.Hex.T__struct_2_asInterface) from stdgo._internal.encoding.hex.Hex.T__struct_2_asInterface to stdgo._internal.encoding.hex.Hex.T__struct_2_asInterface {

}
@:forward @:forward.new abstract T__struct_2_static_extension(stdgo._internal.encoding.hex.Hex.T__struct_2_static_extension) from stdgo._internal.encoding.hex.Hex.T__struct_2_static_extension to stdgo._internal.encoding.hex.Hex.T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.encoding.hex.Hex.T__struct_2;
typedef InvalidByteError = stdgo._internal.encoding.hex.Hex.InvalidByteError;
@:forward @:forward.new abstract T_encoder_asInterface(stdgo._internal.encoding.hex.Hex.T_encoder_asInterface) from stdgo._internal.encoding.hex.Hex.T_encoder_asInterface to stdgo._internal.encoding.hex.Hex.T_encoder_asInterface {

}
@:forward @:forward.new abstract T_encoder_static_extension(stdgo._internal.encoding.hex.Hex.T_encoder_static_extension) from stdgo._internal.encoding.hex.Hex.T_encoder_static_extension to stdgo._internal.encoding.hex.Hex.T_encoder_static_extension {

}
@:forward @:forward.new abstract T_decoder_asInterface(stdgo._internal.encoding.hex.Hex.T_decoder_asInterface) from stdgo._internal.encoding.hex.Hex.T_decoder_asInterface to stdgo._internal.encoding.hex.Hex.T_decoder_asInterface {

}
@:forward @:forward.new abstract T_decoder_static_extension(stdgo._internal.encoding.hex.Hex.T_decoder_static_extension) from stdgo._internal.encoding.hex.Hex.T_decoder_static_extension to stdgo._internal.encoding.hex.Hex.T_decoder_static_extension {

}
@:forward @:forward.new abstract T_dumper_asInterface(stdgo._internal.encoding.hex.Hex.T_dumper_asInterface) from stdgo._internal.encoding.hex.Hex.T_dumper_asInterface to stdgo._internal.encoding.hex.Hex.T_dumper_asInterface {

}
@:forward @:forward.new abstract T_dumper_static_extension(stdgo._internal.encoding.hex.Hex.T_dumper_static_extension) from stdgo._internal.encoding.hex.Hex.T_dumper_static_extension to stdgo._internal.encoding.hex.Hex.T_dumper_static_extension {

}
@:forward @:forward.new abstract InvalidByteError_asInterface(stdgo._internal.encoding.hex.Hex.InvalidByteError_asInterface) from stdgo._internal.encoding.hex.Hex.InvalidByteError_asInterface to stdgo._internal.encoding.hex.Hex.InvalidByteError_asInterface {

}
@:forward @:forward.new abstract InvalidByteError_static_extension(stdgo._internal.encoding.hex.Hex.InvalidByteError_static_extension) from stdgo._internal.encoding.hex.Hex.InvalidByteError_static_extension to stdgo._internal.encoding.hex.Hex.InvalidByteError_static_extension {

}
class Hex {
    /**
        EncodedLen returns the length of an encoding of n source bytes.
        Specifically, it returns n * 2.
    **/
    static public function encodedLen(n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.hex.Hex.encodedLen(n);
    }
    /**
        Encode encodes src into EncodedLen(len(src))
        bytes of dst. As a convenience, it returns the number
        of bytes written to dst, but this value is always EncodedLen(len(src)).
        Encode implements hexadecimal encoding.
    **/
    static public function encode(dst:Array<StdTypes.Int>, src:Array<StdTypes.Int>):StdTypes.Int {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        final src = ([for (i in src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.hex.Hex.encode(dst, src);
    }
    /**
        DecodedLen returns the length of a decoding of x source bytes.
        Specifically, it returns x / 2.
    **/
    static public function decodedLen(x:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.hex.Hex.decodedLen(x);
    }
    /**
        Decode decodes src into DecodedLen(len(src)) bytes,
        returning the actual number of bytes written to dst.
        
        Decode expects that src contains only hexadecimal
        characters and that src has even length.
        If the input is malformed, Decode returns the number
        of bytes decoded before the error.
    **/
    static public function decode(dst:Array<StdTypes.Int>, src:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        final src = ([for (i in src) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex.decode(dst, src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        EncodeToString returns the hexadecimal encoding of src.
    **/
    static public function encodeToString(src:Array<StdTypes.Int>):String {
        final src = ([for (i in src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.hex.Hex.encodeToString(src);
    }
    /**
        DecodeString returns the bytes represented by the hexadecimal string s.
        
        DecodeString expects that src contains only hexadecimal
        characters and that src has even length.
        If the input is malformed, DecodeString returns
        the bytes decoded before the error.
    **/
    static public function decodeString(s:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.hex.Hex.decodeString(s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Dump returns a string that contains a hex dump of the given data. The format
        of the hex dump matches the output of `hexdump -C` on the command line.
    **/
    static public function dump(data:Array<StdTypes.Int>):String {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.hex.Hex.dump(data);
    }
    /**
        NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.
    **/
    static public function newEncoder(w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        return stdgo._internal.encoding.hex.Hex.newEncoder(w);
    }
    /**
        NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
        NewDecoder expects that r contain only an even number of hexadecimal characters.
    **/
    static public function newDecoder(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.encoding.hex.Hex.newDecoder(r);
    }
    /**
        Dumper returns a WriteCloser that writes a hex dump of all written data to
        w. The format of the dump matches the output of `hexdump -C` on the command
        line.
    **/
    static public function dumper(w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser {
        return stdgo._internal.encoding.hex.Hex.dumper(w);
    }
    static public function testEncode(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testEncode(t);
    }
    static public function testDecode(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDecode(t);
    }
    static public function testEncodeToString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testEncodeToString(t);
    }
    static public function testDecodeString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDecodeString(t);
    }
    static public function testDecodeErr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDecodeErr(t);
    }
    static public function testDecodeStringErr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDecodeStringErr(t);
    }
    static public function testEncoderDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testEncoderDecoder(t);
    }
    static public function testDecoderErr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDecoderErr(t);
    }
    static public function testDumper(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDumper(t);
    }
    static public function testDumper_doubleclose(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDumper_doubleclose(t);
    }
    static public function testDumper_earlyclose(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDumper_earlyclose(t);
    }
    static public function testDump(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.hex.Hex.testDump(t);
    }
    static public function benchmarkEncode(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.hex.Hex.benchmarkEncode(b);
    }
    static public function benchmarkDecode(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.hex.Hex.benchmarkDecode(b);
    }
    static public function benchmarkDump(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.hex.Hex.benchmarkDump(b);
    }
}
