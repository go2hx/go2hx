package stdgo.encoding.base32;
var stdPadding : stdgo.GoInt32 = 61i64;
var noPadding : stdgo.GoInt32 = -1i64;
var stdEncoding(get, set) : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>;
private function get_stdEncoding():stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> return stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding;
private function set_stdEncoding(v:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>):stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> {
        stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding = v;
        return v;
    }
var hexEncoding(get, set) : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>;
private function get_hexEncoding():stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> return stdgo._internal.encoding.base32.Base32_hexencoding.hexEncoding;
private function set_hexEncoding(v:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>):stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> {
        stdgo._internal.encoding.base32.Base32_hexencoding.hexEncoding = v;
        return v;
    }
typedef Encoding = stdgo._internal.encoding.base32.Base32_encoding.Encoding;
typedef CorruptInputError = stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError;
typedef EncodingPointer = stdgo._internal.encoding.base32.Base32_encodingpointer.EncodingPointer;
typedef CorruptInputErrorPointer = stdgo._internal.encoding.base32.Base32_corruptinputerrorpointer.CorruptInputErrorPointer;
/**
    * Package base32 implements base32 encoding as specified by RFC 4648.
**/
class Base32 {
    /**
        * NewEncoding returns a new Encoding defined by the given alphabet,
        * which must be a 32-byte string. The alphabet is treated as sequence
        * of byte values without any special treatment for multi-byte UTF-8.
    **/
    static public inline function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> return stdgo._internal.encoding.base32.Base32_newencoding.newEncoding(_encoder);
    /**
        * NewEncoder returns a new base32 stream encoder. Data written to
        * the returned writer will be encoded using enc and then written to w.
        * Base32 encodings operate in 5-byte blocks; when finished
        * writing, the caller must Close the returned encoder to flush any
        * partially written blocks.
    **/
    static public inline function newEncoder(_enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser return stdgo._internal.encoding.base32.Base32_newencoder.newEncoder(_enc, _w);
    /**
        * NewDecoder constructs a new base32 stream decoder.
    **/
    static public inline function newDecoder(_enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>, _r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return stdgo._internal.encoding.base32.Base32_newdecoder.newDecoder(_enc, _r);
    static public inline function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testencode.testEncode(_t);
    static public inline function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testencoder.testEncoder(_t);
    static public inline function testEncoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testencoderbuffering.testEncoderBuffering(_t);
    static public inline function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testdecode.testDecode(_t);
    static public inline function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testdecoder.testDecoder(_t);
    /**
        * TestIssue20044 tests that decoder.Read behaves correctly when the caller
        * supplied reader returns an error.
    **/
    static public inline function testIssue20044(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testissue20044.testIssue20044(_t);
    /**
        * TestDecoderError verifies decode errors are propagated when there are no read
        * errors.
    **/
    static public inline function testDecoderError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testdecodererror.testDecoderError(_t);
    /**
        * TestReaderEOF ensures decoder.Read behaves correctly when input data is
        * exhausted.
    **/
    static public inline function testReaderEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testreadereof.testReaderEOF(_t);
    static public inline function testDecoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testdecoderbuffering.testDecoderBuffering(_t);
    static public inline function testDecodeCorrupt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testdecodecorrupt.testDecodeCorrupt(_t);
    static public inline function testBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testbig.testBig(_t);
    static public inline function testNewLineCharacters(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testnewlinecharacters.testNewLineCharacters(_t);
    static public inline function testDecoderIssue4779(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testdecoderissue4779.testDecoderIssue4779(_t);
    static public inline function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.base32.Base32_benchmarkencode.benchmarkEncode(_b);
    static public inline function benchmarkEncodeToString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.base32.Base32_benchmarkencodetostring.benchmarkEncodeToString(_b);
    static public inline function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.base32.Base32_benchmarkdecode.benchmarkDecode(_b);
    static public inline function benchmarkDecodeString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.encoding.base32.Base32_benchmarkdecodestring.benchmarkDecodeString(_b);
    static public inline function testWithCustomPadding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testwithcustompadding.testWithCustomPadding(_t);
    static public inline function testWithoutPadding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testwithoutpadding.testWithoutPadding(_t);
    static public inline function testDecodeWithPadding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testdecodewithpadding.testDecodeWithPadding(_t);
    static public inline function testDecodeWithWrongPadding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testdecodewithwrongpadding.testDecodeWithWrongPadding(_t);
    static public inline function testBufferedDecodingSameError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testbuffereddecodingsameerror.testBufferedDecodingSameError(_t);
    static public inline function testBufferedDecodingPadding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testbuffereddecodingpadding.testBufferedDecodingPadding(_t);
    static public inline function testEncodedDecodedLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testencodeddecodedlen.testEncodedDecodedLen(_t);
    static public inline function testWithoutPaddingClose(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testwithoutpaddingclose.testWithoutPaddingClose(_t);
    static public inline function testDecodeReadAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testdecodereadall.testDecodeReadAll(_t);
    static public inline function testDecodeSmallBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.base32.Base32_testdecodesmallbuffer.testDecodeSmallBuffer(_t);
}
