package stdgo.compress.zlib;
/**
    /|*
    Package zlib implements reading and writing of zlib format compressed data,
    as specified in RFC 1950.
    
    The implementation provides filters that uncompress during reading
    and compress during writing.  For example, to write compressed data
    to a buffer:
    
    	var b bytes.Buffer
    	w := zlib.NewWriter(&b)
    	w.Write([]byte("hello, world\n"))
    	w.Close()
    
    and to read that data back:
    
    	r, err := zlib.NewReader(&b)
    	io.Copy(os.Stdout, r)
    	r.Close()
    *|/
**/
class Zlib {
    /**
        NewReader creates a new ReadCloser.
        Reads from the returned ReadCloser read and decompress data from r.
        If r does not implement io.ByteReader, the decompressor may read more
        data than necessary from r.
        It is the caller's responsibility to call Close on the ReadCloser when done.
        
        The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<stdgo._internal.io.Io_ReadCloser.ReadCloser, stdgo.Error> {
        return {
            final obj = stdgo._internal.compress.zlib.Zlib_newReader.newReader(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewReaderDict is like NewReader but uses a preset dictionary.
        NewReaderDict ignores the dictionary if the compressed data does not refer to it.
        If the compressed data refers to a different dictionary, NewReaderDict returns ErrDictionary.
        
        The ReadCloser returned by NewReaderDict also implements Resetter.
    **/
    static public inline function newReaderDict(_r:stdgo._internal.io.Io_Reader.Reader, _dict:Array<std.UInt>):stdgo.Tuple<stdgo._internal.io.Io_ReadCloser.ReadCloser, stdgo.Error> {
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.zlib.Zlib_newReaderDict.newReaderDict(_r, _dict);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewWriter creates a new Writer.
        Writes to the returned Writer are compressed and written to w.
        
        It is the caller's responsibility to call Close on the Writer when done.
        Writes may be buffered and not flushed until Close.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.compress.zlib.Zlib_newWriter.newWriter(_w);
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
            final obj = stdgo._internal.compress.zlib.Zlib_newWriterLevel.newWriterLevel(_w, _level);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewWriterLevelDict is like NewWriterLevel but specifies a dictionary to
        compress with.
        
        The dictionary may be nil. If not, its contents should not be modified until
        the Writer is closed.
    **/
    static public inline function newWriterLevelDict(_w:stdgo._internal.io.Io_Writer.Writer, _level:StdTypes.Int, _dict:Array<std.UInt>):stdgo.Tuple<Writer, stdgo.Error> {
        final _level = (_level : stdgo.GoInt);
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.zlib.Zlib_newWriterLevelDict.newWriterLevelDict(_w, _level, _dict);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
