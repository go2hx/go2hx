package stdgo.encoding.ascii85;
/**
    Package ascii85 implements the ascii85 data encoding
    as used in the btoa tool and Adobe's PostScript and PDF document formats.
**/
class Ascii85 {
    /**
        Encode encodes src into at most MaxEncodedLen(len(src))
        bytes of dst, returning the actual number of bytes written.
        
        The encoding handles 4-byte chunks, using a special encoding
        for the last fragment, so Encode is not appropriate for use on
        individual blocks of a large data stream. Use NewEncoder() instead.
        
        Often, ascii85-encoded data is wrapped in <~ and ~> symbols.
        Encode does not add these.
    **/
    static public inline function encode(_dst:Array<std.UInt>, _src:Array<std.UInt>):StdTypes.Int {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.ascii85.Ascii85_encode.encode(_dst, _src);
    }
    /**
        MaxEncodedLen returns the maximum length of an encoding of n source bytes.
    **/
    static public inline function maxEncodedLen(_n:StdTypes.Int):StdTypes.Int {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.encoding.ascii85.Ascii85_maxEncodedLen.maxEncodedLen(_n);
    }
    /**
        NewEncoder returns a new ascii85 stream encoder. Data written to
        the returned writer will be encoded and then written to w.
        Ascii85 encodings operate in 32-bit blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        trailing partial block.
    **/
    static public inline function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.encoding.ascii85.Ascii85_newEncoder.newEncoder(_w);
    }
    /**
        Decode decodes src into dst, returning both the number
        of bytes written to dst and the number consumed from src.
        If src contains invalid ascii85 data, Decode will return the
        number of bytes successfully written and a CorruptInputError.
        Decode ignores space and control characters in src.
        Often, ascii85-encoded data is wrapped in <~ and ~> symbols.
        Decode expects these to have been stripped by the caller.
        
        If flush is true, Decode assumes that src represents the
        end of the input stream and processes it completely rather
        than wait for the completion of another 32-bit block.
        
        NewDecoder wraps an io.Reader interface around Decode.
    **/
    static public inline function decode(_dst:Array<std.UInt>, _src:Array<std.UInt>, _flush:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.ascii85.Ascii85_decode.decode(_dst, _src, _flush);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        NewDecoder constructs a new ascii85 stream decoder.
    **/
    static public inline function newDecoder(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.encoding.ascii85.Ascii85_newDecoder.newDecoder(_r);
    }
}
