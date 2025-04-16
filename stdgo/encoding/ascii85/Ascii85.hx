package stdgo.encoding.ascii85;
typedef CorruptInputError = stdgo._internal.encoding.ascii85.Ascii85_corruptinputerror.CorruptInputError;
typedef CorruptInputErrorPointer = stdgo._internal.encoding.ascii85.Ascii85_corruptinputerrorpointer.CorruptInputErrorPointer;
/**
    * Package ascii85 implements the ascii85 data encoding
    * as used in the btoa tool and Adobe's PostScript and PDF document formats.
**/
class Ascii85 {
    /**
        * Encode encodes src into at most MaxEncodedLen(len(src))
        * bytes of dst, returning the actual number of bytes written.
        * 
        * The encoding handles 4-byte chunks, using a special encoding
        * for the last fragment, so Encode is not appropriate for use on
        * individual blocks of a large data stream. Use NewEncoder() instead.
        * 
        * Often, ascii85-encoded data is wrapped in <~ and ~> symbols.
        * Encode does not add these.
    **/
    static public inline function encode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.encoding.ascii85.Ascii85_encode.encode(_dst, _src);
    /**
        * MaxEncodedLen returns the maximum length of an encoding of n source bytes.
    **/
    static public inline function maxEncodedLen(_n:stdgo.GoInt):stdgo.GoInt return stdgo._internal.encoding.ascii85.Ascii85_maxencodedlen.maxEncodedLen(_n);
    /**
        * NewEncoder returns a new ascii85 stream encoder. Data written to
        * the returned writer will be encoded and then written to w.
        * Ascii85 encodings operate in 32-bit blocks; when finished
        * writing, the caller must Close the returned encoder to flush any
        * trailing partial block.
    **/
    static public inline function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser return stdgo._internal.encoding.ascii85.Ascii85_newencoder.newEncoder(_w);
    /**
        * Decode decodes src into dst, returning both the number
        * of bytes written to dst and the number consumed from src.
        * If src contains invalid ascii85 data, Decode will return the
        * number of bytes successfully written and a CorruptInputError.
        * Decode ignores space and control characters in src.
        * Often, ascii85-encoded data is wrapped in <~ and ~> symbols.
        * Decode expects these to have been stripped by the caller.
        * 
        * If flush is true, Decode assumes that src represents the
        * end of the input stream and processes it completely rather
        * than wait for the completion of another 32-bit block.
        * 
        * NewDecoder wraps an io.Reader interface around Decode.
    **/
    static public inline function decode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _flush:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return stdgo._internal.encoding.ascii85.Ascii85_decode.decode(_dst, _src, _flush);
    /**
        * NewDecoder constructs a new ascii85 stream decoder.
    **/
    static public inline function newDecoder(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return stdgo._internal.encoding.ascii85.Ascii85_newdecoder.newDecoder(_r);
    static public inline function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.ascii85.Ascii85_testencode.testEncode(_t);
    static public inline function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.ascii85.Ascii85_testencoder.testEncoder(_t);
    static public inline function testEncoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.ascii85.Ascii85_testencoderbuffering.testEncoderBuffering(_t);
    static public inline function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.ascii85.Ascii85_testdecode.testDecode(_t);
    static public inline function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.ascii85.Ascii85_testdecoder.testDecoder(_t);
    static public inline function testDecoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.ascii85.Ascii85_testdecoderbuffering.testDecoderBuffering(_t);
    static public inline function testDecodeCorrupt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.ascii85.Ascii85_testdecodecorrupt.testDecodeCorrupt(_t);
    static public inline function testBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.ascii85.Ascii85_testbig.testBig(_t);
    static public inline function testDecoderInternalWhitespace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.encoding.ascii85.Ascii85_testdecoderinternalwhitespace.testDecoderInternalWhitespace(_t);
}
