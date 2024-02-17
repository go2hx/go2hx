package stdgo.encoding.hex;
/**
    // Package hex implements hexadecimal encoding and decoding.
**/
private var __go2hxdoc__package : Bool;
var errLength(get, set) : stdgo.Error;
function get_errLength():stdgo.Error return stdgo._internal.encoding.hex.Hex.errLength;
function set_errLength(v:stdgo.Error):stdgo.Error return stdgo._internal.encoding.hex.Hex.errLength = v;
@:invalid typedef T_encoder = Dynamic;
@:invalid typedef T_decoder = Dynamic;
@:invalid typedef T_dumper = Dynamic;
@:invalid typedef T_encDecTest = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.encoding.hex.Hex.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.encoding.hex.Hex.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.encoding.hex.Hex.T__struct_2;
typedef InvalidByteError = stdgo._internal.encoding.hex.Hex.InvalidByteError;
/**
    // EncodedLen returns the length of an encoding of n source bytes.
    // Specifically, it returns n * 2.
**/
inline function encodedLen(n:Int):Int throw "not implemented";
/**
    // Encode encodes src into EncodedLen(len(src))
    // bytes of dst. As a convenience, it returns the number
    // of bytes written to dst, but this value is always EncodedLen(len(src)).
    // Encode implements hexadecimal encoding.
**/
inline function encode(dst:Array<Int>, src:Array<Int>):Int throw "not implemented";
/**
    // DecodedLen returns the length of a decoding of x source bytes.
    // Specifically, it returns x / 2.
**/
inline function decodedLen(x:Int):Int throw "not implemented";
/**
    // Decode decodes src into DecodedLen(len(src)) bytes,
    // returning the actual number of bytes written to dst.
    //
    // Decode expects that src contains only hexadecimal
    // characters and that src has even length.
    // If the input is malformed, Decode returns the number
    // of bytes decoded before the error.
**/
inline function decode(dst:Array<Int>, src:Array<Int>):stdgo.Tuple.<Int, stdgo.Error> throw "not implemented";
/**
    // EncodeToString returns the hexadecimal encoding of src.
**/
inline function encodeToString(src:Array<Int>):String throw "not implemented";
/**
    // DecodeString returns the bytes represented by the hexadecimal string s.
    //
    // DecodeString expects that src contains only hexadecimal
    // characters and that src has even length.
    // If the input is malformed, DecodeString returns
    // the bytes decoded before the error.
**/
inline function decodeString(s:String):stdgo.Tuple.<Array<Int>, stdgo.Error> throw "not implemented";
/**
    // Dump returns a string that contains a hex dump of the given data. The format
    // of the hex dump matches the output of `hexdump -C` on the command line.
**/
inline function dump(data:Array<Int>):String throw "not implemented";
/**
    // NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.
**/
inline function newEncoder(w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer throw "not implemented";
/**
    // NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
    // NewDecoder expects that r contain only an even number of hexadecimal characters.
**/
inline function newDecoder(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw "not implemented";
/**
    // Dumper returns a WriteCloser that writes a hex dump of all written data to
    // w. The format of the dump matches the output of `hexdump -C` on the command
    // line.
**/
inline function dumper(w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser throw "not implemented";
inline function testEncode(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecode(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEncodeToString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecodeString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecodeErr(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecodeStringErr(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEncoderDecoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecoderErr(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDumper(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDumper_doubleclose(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDumper_earlyclose(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDump(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkEncode(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecode(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDump(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef T_encoder_asInterface = Dynamic;
@:invalid typedef T_encoder_static_extension = Dynamic;
@:invalid typedef T_decoder_asInterface = Dynamic;
@:invalid typedef T_decoder_static_extension = Dynamic;
@:invalid typedef T_dumper_asInterface = Dynamic;
@:invalid typedef T_dumper_static_extension = Dynamic;
@:invalid typedef InvalidByteError_asInterface = Dynamic;
@:invalid typedef InvalidByteError_static_extension = Dynamic;
