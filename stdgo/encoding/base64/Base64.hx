package stdgo.encoding.base64;
/**
    // Package base64 implements base64 encoding as specified by RFC 4648.
**/
private var __go2hxdoc__package : Bool;
final stdPadding : Int = stdgo._internal.encoding.base64.Base64.stdPadding;
final noPadding : Int = stdgo._internal.encoding.base64.Base64.noPadding;
var stdEncoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
function get_stdEncoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.stdEncoding;
function set_stdEncoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.stdEncoding = v;
var urlencoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
function get_urlencoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.urlencoding;
function set_urlencoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.urlencoding = v;
var rawStdEncoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
function get_rawStdEncoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.rawStdEncoding;
function set_rawStdEncoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.rawStdEncoding = v;
var rawURLEncoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
function get_rawURLEncoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.rawURLEncoding;
function set_rawURLEncoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.rawURLEncoding = v;
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
/**
    // NewEncoding returns a new padded Encoding defined by the given alphabet,
    // which must be a 64-byte string that does not contain the padding character
    // or CR / LF ('\r', '\n'). The alphabet is treated as sequence of byte values
    // without any special treatment for multi-byte UTF-8.
    // The resulting Encoding uses the default padding character ('='),
    // which may be changed or disabled via WithPadding.
**/
inline function newEncoding(encoder:String):Encoding throw "not implemented";
/**
    // NewEncoder returns a new base64 stream encoder. Data written to
    // the returned writer will be encoded using enc and then written to w.
    // Base64 encodings operate in 4-byte blocks; when finished
    // writing, the caller must Close the returned encoder to flush any
    // partially written blocks.
**/
inline function newEncoder(enc:Encoding, w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser throw "not implemented";
/**
    // NewDecoder constructs a new base64 stream decoder.
**/
inline function newDecoder(enc:Encoding, r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw "not implemented";
inline function testEncode(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEncoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEncoderBuffering(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecode(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecoderBuffering(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecodeCorrupt(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecodeBounds(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEncodedLen(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecodedLen(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBig(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNewLineCharacters(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // tests that we don't ignore errors from our underlying reader
**/
inline function testDecoderIssue3577(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecoderIssue4779(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecoderIssue7733(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDecoderIssue15656(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkEncodeToString(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecodeString(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNewEncoding(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testDecoderRaw(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
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
