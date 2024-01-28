package stdgo.encoding.hex;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errLength : Dynamic;
@:invalid var _encDecTests : Dynamic;
@:invalid var _errTests : Dynamic;
@:invalid var _expectedHexDump : Dynamic;
@:invalid var _hextable : Dynamic;
@:invalid var _reverseHexTable : Dynamic;
@:invalid var _bufferSize : Dynamic;
@:invalid var _sink : Dynamic;
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
function encodedLen(_n:stdgo.GoInt):Void {}
function encode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void {}
function decodedLen(_x:stdgo.GoInt):Void {}
function decode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void {}
function encodeToString(_src:stdgo.Slice<stdgo.GoByte>):Void {}
function decodeString(_s:stdgo.GoString):Void {}
function dump(_data:stdgo.Slice<stdgo.GoByte>):Void {}
function newEncoder(_w:stdgo._internal.io.Io.Writer):Void {}
function newDecoder(_r:stdgo._internal.io.Io.Reader):Void {}
function dumper(_w:stdgo._internal.io.Io.Writer):Void {}
function _toChar(_b:stdgo.GoByte):Void {}
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEncodeToString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecodeString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecodeErr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecodeStringErr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecoderErr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDumper(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDumper_doubleclose(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDumper_earlyclose(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDump(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDump(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
@:invalid typedef T_encoder_asInterface = Dynamic;
@:invalid typedef T_encoder_static_extension = Dynamic;
@:invalid typedef T_decoder_asInterface = Dynamic;
@:invalid typedef T_decoder_static_extension = Dynamic;
@:invalid typedef T_dumper_asInterface = Dynamic;
@:invalid typedef T_dumper_static_extension = Dynamic;
@:invalid typedef InvalidByteError_asInterface = Dynamic;
@:invalid typedef InvalidByteError_static_extension = Dynamic;
