package stdgo.compress.gzip;
/**
    Package gzip implements reading and writing of gzip format compressed files,
    as specified in RFC 1952.
**/
class Gzip {
    /**
        NewReader creates a new Reader reading the given reader.
        If r does not also implement io.ByteReader,
        the decompressor may read more data than necessary from r.
        
        It is the caller's responsibility to call Close on the Reader when done.
        
        The Reader.Header fields will be valid in the Reader returned.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_newReader.newReader(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewWriter returns a new Writer.
        Writes to the returned writer are compressed and written to w.
        
        It is the caller's responsibility to call Close on the Writer when done.
        Writes may be buffered and not flushed until Close.
        
        Callers that wish to set the fields in Writer.Header must do so before
        the first call to Write, Flush, or Close.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.compress.gzip.Gzip_newWriter.newWriter(_w);
    }
    /**
        NewWriterLevel is like NewWriter but specifies the compression level instead
        of assuming DefaultCompression.
        
        The compression level can be DefaultCompression, NoCompression, HuffmanOnly
        or any integer value between BestSpeed and BestCompression inclusive.
        The error returned will be nil if the level is valid.
    **/
    static public inline function newWriterLevel(_w:stdgo._internal.io.Io_Writer.Writer, _level:StdTypes.Int):stdgo.Tuple<Writer, stdgo.Error> {
        final _level = (_level : stdgo.GoInt);
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_newWriterLevel.newWriterLevel(_w, _level);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
