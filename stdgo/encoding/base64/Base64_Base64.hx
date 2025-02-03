package stdgo.encoding.base64;
/**
    Package base64 implements base64 encoding as specified by RFC 4648.
**/
class Base64 {
    /**
        NewEncoding returns a new padded Encoding defined by the given alphabet,
        which must be a 64-byte string that does not contain the padding character
        or CR / LF ('\r', '\n'). The alphabet is treated as sequence of byte values
        without any special treatment for multi-byte UTF-8.
        The resulting Encoding uses the default padding character ('='),
        which may be changed or disabled via WithPadding.
    **/
    static public inline function newEncoding(_encoder:String):Encoding {
        final _encoder = (_encoder : stdgo.GoString);
        return stdgo._internal.encoding.base64.Base64_newEncoding.newEncoding(_encoder);
    }
    /**
        NewEncoder returns a new base64 stream encoder. Data written to
        the returned writer will be encoded using enc and then written to w.
        Base64 encodings operate in 4-byte blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        partially written blocks.
    **/
    static public inline function newEncoder(_enc:Encoding, _w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
        return stdgo._internal.encoding.base64.Base64_newEncoder.newEncoder(_enc, _w);
    }
    /**
        NewDecoder constructs a new base64 stream decoder.
    **/
    static public inline function newDecoder(_enc:Encoding, _r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
        return stdgo._internal.encoding.base64.Base64_newDecoder.newDecoder(_enc, _r);
    }
    static public inline function testEncode(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testEncode.testEncode(_t);
    }
    static public inline function testEncoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testEncoder.testEncoder(_t);
    }
    static public inline function testEncoderBuffering(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testEncoderBuffering.testEncoderBuffering(_t);
    }
    static public inline function testDecode(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testDecode.testDecode(_t);
    }
    static public inline function testDecoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testDecoder.testDecoder(_t);
    }
    static public inline function testDecoderBuffering(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testDecoderBuffering.testDecoderBuffering(_t);
    }
    static public inline function testDecodeCorrupt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testDecodeCorrupt.testDecodeCorrupt(_t);
    }
    static public inline function testDecodeBounds(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testDecodeBounds.testDecodeBounds(_t);
    }
    static public inline function testEncodedLen(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testEncodedLen.testEncodedLen(_t);
    }
    static public inline function testDecodedLen(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testDecodedLen.testDecodedLen(_t);
    }
    static public inline function testBig(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testBig.testBig(_t);
    }
    static public inline function testNewLineCharacters(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testNewLineCharacters.testNewLineCharacters(_t);
    }
    /**
        tests that we don't ignore errors from our underlying reader
    **/
    static public inline function testDecoderIssue3577(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testDecoderIssue3577.testDecoderIssue3577(_t);
    }
    static public inline function testDecoderIssue4779(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testDecoderIssue4779.testDecoderIssue4779(_t);
    }
    static public inline function testDecoderIssue7733(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testDecoderIssue7733.testDecoderIssue7733(_t);
    }
    static public inline function testDecoderIssue15656(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testDecoderIssue15656.testDecoderIssue15656(_t);
    }
    static public inline function benchmarkEncodeToString(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.base64.Base64_benchmarkEncodeToString.benchmarkEncodeToString(_b);
    }
    static public inline function benchmarkDecodeString(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.base64.Base64_benchmarkDecodeString.benchmarkDecodeString(_b);
    }
    static public inline function benchmarkNewEncoding(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.encoding.base64.Base64_benchmarkNewEncoding.benchmarkNewEncoding(_b);
    }
    static public inline function testDecoderRaw(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.encoding.base64.Base64_testDecoderRaw.testDecoderRaw(_t);
    }
}
