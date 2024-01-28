package stdgo.encoding.base64;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var stdEncoding : Dynamic;
@:invalid var urlencoding : Dynamic;
@:invalid var rawStdEncoding : Dynamic;
@:invalid var rawURLEncoding : Dynamic;
@:invalid var _pairs : Dynamic;
@:invalid var _funnyEncoding : Dynamic;
@:invalid var _encodingTests : Dynamic;
@:invalid var _bigtest : Dynamic;
@:invalid var stdPadding : Dynamic;
@:invalid var noPadding : Dynamic;
@:invalid var _decodeMapInitialize : Dynamic;
@:invalid var _encodeStd : Dynamic;
@:invalid var _encodeURL : Dynamic;
@:invalid typedef Encoding = Dynamic;
@:invalid typedef T_encoder = Dynamic;
@:invalid typedef T_decoder = Dynamic;
@:invalid typedef T_newlineFilteringReader = Dynamic;
@:invalid typedef T_testpair = Dynamic;
@:invalid typedef T_encodingTest = Dynamic;
@:invalid typedef T_nextRead = Dynamic;
@:invalid typedef T_faultInjectReader = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.encoding.base64.Base64.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.encoding.base64.Base64.T__struct_1;
typedef CorruptInputError = stdgo._internal.encoding.base64.Base64.CorruptInputError;
function newEncoding(_encoder:stdgo.GoString):Void {}
function newEncoder(_enc:stdgo.Ref<Encoding>, _w:stdgo._internal.io.Io.Writer):Void {}
function _assemble32(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte):Void {}
function _assemble64(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte, _n5:stdgo.GoByte, _n6:stdgo.GoByte, _n7:stdgo.GoByte, _n8:stdgo.GoByte):Void {}
function newDecoder(_enc:stdgo.Ref<Encoding>, _r:stdgo._internal.io.Io.Reader):Void {}
function _stdRef(_ref:stdgo.GoString):Void {}
function _urlRef(_ref:stdgo.GoString):Void {}
function _rawRef(_ref:stdgo.GoString):Void {}
function _rawURLRef(_ref:stdgo.GoString):Void {}
function _funnyRef(_ref:stdgo.GoString):Void {}
function _testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {}
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEncoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecodeCorrupt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecodeBounds(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEncodedLen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecodedLen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBig(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNewLineCharacters(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecoderIssue3577(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecoderIssue4779(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecoderIssue7733(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecoderIssue15656(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkEncodeToString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDecodeString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkNewEncoding(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testDecoderRaw(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef Encoding_asInterface = Dynamic;
@:invalid typedef Encoding_static_extension = Dynamic;
@:invalid typedef T_encoder_asInterface = Dynamic;
@:invalid typedef T_encoder_static_extension = Dynamic;
@:invalid typedef T_decoder_asInterface = Dynamic;
@:invalid typedef T_decoder_static_extension = Dynamic;
@:invalid typedef T_newlineFilteringReader_asInterface = Dynamic;
@:invalid typedef T_newlineFilteringReader_static_extension = Dynamic;
@:invalid typedef T_faultInjectReader_asInterface = Dynamic;
@:invalid typedef T_faultInjectReader_static_extension = Dynamic;
@:invalid typedef CorruptInputError_asInterface = Dynamic;
@:invalid typedef CorruptInputError_static_extension = Dynamic;
