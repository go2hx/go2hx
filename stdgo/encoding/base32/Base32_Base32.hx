package stdgo.encoding.base32;
/**
    Package base32 implements base32 encoding as specified by RFC 4648.
**/
class Base32 {
    /**
        NewEncoding returns a new Encoding defined by the given alphabet,
        which must be a 32-byte string. The alphabet is treated as sequence
        of byte values without any special treatment for multi-byte UTF-8.
    **/
    static public inline function newEncoding(_encoder:String):Encoding {
        final _encoder = (_encoder : stdgo.GoString);
        return stdgo._internal.encoding.base32.Base32_newEncoding.newEncoding(_encoder);
    }
    /**
        NewEncoder returns a new base32 stream encoder. Data written to
        the returned writer will be encoded using enc and then written to w.
        Base32 encodings operate in 5-byte blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        partially written blocks.
    **/
    static public inline function newEncoder(_enc:Encoding, _w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_Encoding.Encoding>);
        return stdgo._internal.encoding.base32.Base32_newEncoder.newEncoder(_enc, _w);
    }
    /**
        NewDecoder constructs a new base32 stream decoder.
    **/
    static public inline function newDecoder(_enc:Encoding, _r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base32.Base32_Encoding.Encoding>);
        return stdgo._internal.encoding.base32.Base32_newDecoder.newDecoder(_enc, _r);
    }
}
