package stdgo.encoding;
/**
    Package base64 implements base64 encoding as specified by RFC 4648.
**/
private var __go2hxdoc__package : Bool;
final stdPadding : StdTypes.Int = stdgo._internal.encoding.base64.Base64.stdPadding;
final noPadding : StdTypes.Int = stdgo._internal.encoding.base64.Base64.noPadding;
var stdEncoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
private function get_stdEncoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.stdEncoding;
private function set_stdEncoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.stdEncoding = v;
var urlencoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
private function get_urlencoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.urlencoding;
private function set_urlencoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.urlencoding = v;
var rawStdEncoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
private function get_rawStdEncoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.rawStdEncoding;
private function set_rawStdEncoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.rawStdEncoding = v;
var rawURLEncoding(get, set) : stdgo._internal.encoding.base64.Base64.Encoding;
private function get_rawURLEncoding():stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.rawURLEncoding;
private function set_rawURLEncoding(v:stdgo._internal.encoding.base64.Base64.Encoding):stdgo._internal.encoding.base64.Base64.Encoding return stdgo._internal.encoding.base64.Base64.rawURLEncoding = v;
@:forward @:forward.new abstract Encoding(stdgo._internal.encoding.base64.Base64.Encoding) from stdgo._internal.encoding.base64.Base64.Encoding to stdgo._internal.encoding.base64.Base64.Encoding {

}
@:forward @:forward.new abstract T_encoder(stdgo._internal.encoding.base64.Base64.T_encoder) from stdgo._internal.encoding.base64.Base64.T_encoder to stdgo._internal.encoding.base64.Base64.T_encoder {

}
@:forward @:forward.new abstract T_decoder(stdgo._internal.encoding.base64.Base64.T_decoder) from stdgo._internal.encoding.base64.Base64.T_decoder to stdgo._internal.encoding.base64.Base64.T_decoder {

}
@:forward @:forward.new abstract T_newlineFilteringReader(stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader) from stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader to stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader {

}
@:forward @:forward.new abstract T_testpair(stdgo._internal.encoding.base64.Base64.T_testpair) from stdgo._internal.encoding.base64.Base64.T_testpair to stdgo._internal.encoding.base64.Base64.T_testpair {

}
@:forward @:forward.new abstract T_encodingTest(stdgo._internal.encoding.base64.Base64.T_encodingTest) from stdgo._internal.encoding.base64.Base64.T_encodingTest to stdgo._internal.encoding.base64.Base64.T_encodingTest {

}
@:forward @:forward.new abstract T_nextRead(stdgo._internal.encoding.base64.Base64.T_nextRead) from stdgo._internal.encoding.base64.Base64.T_nextRead to stdgo._internal.encoding.base64.Base64.T_nextRead {

}
@:forward @:forward.new abstract T_faultInjectReader(stdgo._internal.encoding.base64.Base64.T_faultInjectReader) from stdgo._internal.encoding.base64.Base64.T_faultInjectReader to stdgo._internal.encoding.base64.Base64.T_faultInjectReader {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.encoding.base64.Base64.T__struct_0_asInterface) from stdgo._internal.encoding.base64.Base64.T__struct_0_asInterface to stdgo._internal.encoding.base64.Base64.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.encoding.base64.Base64.T__struct_0_static_extension) from stdgo._internal.encoding.base64.Base64.T__struct_0_static_extension to stdgo._internal.encoding.base64.Base64.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.encoding.base64.Base64.T__struct_0;
@:forward @:forward.new abstract T__struct_1_asInterface(stdgo._internal.encoding.base64.Base64.T__struct_1_asInterface) from stdgo._internal.encoding.base64.Base64.T__struct_1_asInterface to stdgo._internal.encoding.base64.Base64.T__struct_1_asInterface {

}
@:forward @:forward.new abstract T__struct_1_static_extension(stdgo._internal.encoding.base64.Base64.T__struct_1_static_extension) from stdgo._internal.encoding.base64.Base64.T__struct_1_static_extension to stdgo._internal.encoding.base64.Base64.T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.encoding.base64.Base64.T__struct_1;
typedef CorruptInputError = stdgo._internal.encoding.base64.Base64.CorruptInputError;
@:forward @:forward.new abstract Encoding_asInterface(stdgo._internal.encoding.base64.Base64.Encoding_asInterface) from stdgo._internal.encoding.base64.Base64.Encoding_asInterface to stdgo._internal.encoding.base64.Base64.Encoding_asInterface {

}
@:forward @:forward.new abstract Encoding_static_extension(stdgo._internal.encoding.base64.Base64.Encoding_static_extension) from stdgo._internal.encoding.base64.Base64.Encoding_static_extension to stdgo._internal.encoding.base64.Base64.Encoding_static_extension {

}
@:forward @:forward.new abstract T_encoder_asInterface(stdgo._internal.encoding.base64.Base64.T_encoder_asInterface) from stdgo._internal.encoding.base64.Base64.T_encoder_asInterface to stdgo._internal.encoding.base64.Base64.T_encoder_asInterface {

}
@:forward @:forward.new abstract T_encoder_static_extension(stdgo._internal.encoding.base64.Base64.T_encoder_static_extension) from stdgo._internal.encoding.base64.Base64.T_encoder_static_extension to stdgo._internal.encoding.base64.Base64.T_encoder_static_extension {

}
@:forward @:forward.new abstract T_decoder_asInterface(stdgo._internal.encoding.base64.Base64.T_decoder_asInterface) from stdgo._internal.encoding.base64.Base64.T_decoder_asInterface to stdgo._internal.encoding.base64.Base64.T_decoder_asInterface {

}
@:forward @:forward.new abstract T_decoder_static_extension(stdgo._internal.encoding.base64.Base64.T_decoder_static_extension) from stdgo._internal.encoding.base64.Base64.T_decoder_static_extension to stdgo._internal.encoding.base64.Base64.T_decoder_static_extension {

}
@:forward @:forward.new abstract T_newlineFilteringReader_asInterface(stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_asInterface) from stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_asInterface to stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_asInterface {

}
@:forward @:forward.new abstract T_newlineFilteringReader_static_extension(stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_static_extension) from stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_static_extension to stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_static_extension {

}
@:forward @:forward.new abstract T_faultInjectReader_asInterface(stdgo._internal.encoding.base64.Base64.T_faultInjectReader_asInterface) from stdgo._internal.encoding.base64.Base64.T_faultInjectReader_asInterface to stdgo._internal.encoding.base64.Base64.T_faultInjectReader_asInterface {

}
@:forward @:forward.new abstract T_faultInjectReader_static_extension(stdgo._internal.encoding.base64.Base64.T_faultInjectReader_static_extension) from stdgo._internal.encoding.base64.Base64.T_faultInjectReader_static_extension to stdgo._internal.encoding.base64.Base64.T_faultInjectReader_static_extension {

}
@:forward @:forward.new abstract CorruptInputError_asInterface(stdgo._internal.encoding.base64.Base64.CorruptInputError_asInterface) from stdgo._internal.encoding.base64.Base64.CorruptInputError_asInterface to stdgo._internal.encoding.base64.Base64.CorruptInputError_asInterface {

}
@:forward @:forward.new abstract CorruptInputError_static_extension(stdgo._internal.encoding.base64.Base64.CorruptInputError_static_extension) from stdgo._internal.encoding.base64.Base64.CorruptInputError_static_extension to stdgo._internal.encoding.base64.Base64.CorruptInputError_static_extension {

}
class Base64 {
    /**
        NewEncoding returns a new padded Encoding defined by the given alphabet,
        which must be a 64-byte string that does not contain the padding character
        or CR / LF ('\r', '\n'). The alphabet is treated as sequence of byte values
        without any special treatment for multi-byte UTF-8.
        The resulting Encoding uses the default padding character ('='),
        which may be changed or disabled via WithPadding.
    **/
    static public function newEncoding(encoder:String):Encoding {
        return stdgo._internal.encoding.base64.Base64.newEncoding(encoder);
    }
    /**
        NewEncoder returns a new base64 stream encoder. Data written to
        the returned writer will be encoded using enc and then written to w.
        Base64 encodings operate in 4-byte blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        partially written blocks.
    **/
    static public function newEncoder(enc:Encoding, w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser {
        return stdgo._internal.encoding.base64.Base64.newEncoder(enc, w);
    }
    /**
        NewDecoder constructs a new base64 stream decoder.
    **/
    static public function newDecoder(enc:Encoding, r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.encoding.base64.Base64.newDecoder(enc, r);
    }
    static public function testEncode(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testEncode(t);
    }
    static public function testEncoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testEncoder(t);
    }
    static public function testEncoderBuffering(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testEncoderBuffering(t);
    }
    static public function testDecode(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecode(t);
    }
    static public function testDecoder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoder(t);
    }
    static public function testDecoderBuffering(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderBuffering(t);
    }
    static public function testDecodeCorrupt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecodeCorrupt(t);
    }
    static public function testDecodeBounds(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecodeBounds(t);
    }
    static public function testEncodedLen(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testEncodedLen(t);
    }
    static public function testDecodedLen(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecodedLen(t);
    }
    static public function testBig(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testBig(t);
    }
    static public function testNewLineCharacters(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testNewLineCharacters(t);
    }
    /**
        tests that we don't ignore errors from our underlying reader
    **/
    static public function testDecoderIssue3577(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderIssue3577(t);
    }
    static public function testDecoderIssue4779(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderIssue4779(t);
    }
    static public function testDecoderIssue7733(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderIssue7733(t);
    }
    static public function testDecoderIssue15656(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderIssue15656(t);
    }
    static public function benchmarkEncodeToString(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.base64.Base64.benchmarkEncodeToString(b);
    }
    static public function benchmarkDecodeString(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.base64.Base64.benchmarkDecodeString(b);
    }
    static public function benchmarkNewEncoding(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.base64.Base64.benchmarkNewEncoding(b);
    }
    static public function testDecoderRaw(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.base64.Base64.testDecoderRaw(t);
    }
}
