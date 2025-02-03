package stdgo.compress.flate;
/**
    Package flate implements the DEFLATE compressed data format, described in
    RFC 1951.  The gzip and zlib packages implement access to DEFLATE-based file
    formats.
**/
class Flate {
    /**
        NewWriter returns a new Writer compressing data at the given level.
        Following zlib, levels range from 1 (BestSpeed) to 9 (BestCompression);
        higher levels typically run slower but compress more. Level 0
        (NoCompression) does not attempt any compression; it only adds the
        necessary DEFLATE framing.
        Level -1 (DefaultCompression) uses the default compression level.
        Level -2 (HuffmanOnly) will use Huffman compression only, giving
        a very fast compression for all types of input, but sacrificing considerable
        compression efficiency.
        
        If level is in the range [-2, 9] then the error returned will be nil.
        Otherwise the error returned will be non-nil.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_Writer.Writer, _level:StdTypes.Int):stdgo.Tuple<Writer, stdgo.Error> {
        final _level = (_level : stdgo.GoInt);
        return {
            final obj = stdgo._internal.compress.flate.Flate_newWriter.newWriter(_w, _level);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewWriterDict is like NewWriter but initializes the new
        Writer with a preset dictionary. The returned Writer behaves
        as if the dictionary had been written to it without producing
        any compressed output. The compressed data written to w
        can only be decompressed by a Reader initialized with the
        same dictionary.
    **/
    static public inline function newWriterDict(_w:stdgo._internal.io.Io_Writer.Writer, _level:StdTypes.Int, _dict:Array<std.UInt>):stdgo.Tuple<Writer, stdgo.Error> {
        final _level = (_level : stdgo.GoInt);
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_newWriterDict.newWriterDict(_w, _level, _dict);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewReader returns a new ReadCloser that can be used
        to read the uncompressed version of r.
        If r does not also implement io.ByteReader,
        the decompressor may read more data than necessary from r.
        The reader returns io.EOF after the final block in the DEFLATE stream has
        been encountered. Any trailing data after the final block is ignored.
        
        The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        return stdgo._internal.compress.flate.Flate_newReader.newReader(_r);
    }
    /**
        NewReaderDict is like NewReader but initializes the reader
        with a preset dictionary. The returned Reader behaves as if
        the uncompressed data stream started with the given dictionary,
        which has already been read. NewReaderDict is typically used
        to read data compressed by NewWriterDict.
        
        The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public inline function newReaderDict(_r:stdgo._internal.io.Io_Reader.Reader, _dict:Array<std.UInt>):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_newReaderDict.newReaderDict(_r, _dict);
    }
}
