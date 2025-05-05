package stdgo.compress.flate;
var noCompression : stdgo.GoUInt64 = 0i64;
var bestSpeed : stdgo.GoUInt64 = 1i64;
var bestCompression : stdgo.GoUInt64 = 9i64;
var defaultCompression : stdgo.GoUInt64 = -1i64;
var huffmanOnly : stdgo.GoUInt64 = -2i64;
typedef Resetter = stdgo._internal.compress.flate.Flate_resetter.Resetter;
typedef Reader = stdgo._internal.compress.flate.Flate_reader.Reader;
typedef Writer = stdgo._internal.compress.flate.Flate_writer.Writer;
typedef ReadError = stdgo._internal.compress.flate.Flate_readerror.ReadError;
typedef WriteError = stdgo._internal.compress.flate.Flate_writeerror.WriteError;
typedef CorruptInputError = stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError;
typedef InternalError = stdgo._internal.compress.flate.Flate_internalerror.InternalError;
typedef WriterPointer = stdgo._internal.compress.flate.Flate_writerpointer.WriterPointer;
typedef ReadErrorPointer = stdgo._internal.compress.flate.Flate_readerrorpointer.ReadErrorPointer;
typedef WriteErrorPointer = stdgo._internal.compress.flate.Flate_writeerrorpointer.WriteErrorPointer;
typedef CorruptInputErrorPointer = stdgo._internal.compress.flate.Flate_corruptinputerrorpointer.CorruptInputErrorPointer;
typedef InternalErrorPointer = stdgo._internal.compress.flate.Flate_internalerrorpointer.InternalErrorPointer;
/**
    * Package flate implements the DEFLATE compressed data format, described in
    * RFC 1951.  The gzip and zlib packages implement access to DEFLATE-based file
    * formats.
**/
class Flate {
    /**
        * NewWriter returns a new Writer compressing data at the given level.
        * Following zlib, levels range from 1 (BestSpeed) to 9 (BestCompression);
        * higher levels typically run slower but compress more. Level 0
        * (NoCompression) does not attempt any compression; it only adds the
        * necessary DEFLATE framing.
        * Level -1 (DefaultCompression) uses the default compression level.
        * Level -2 (HuffmanOnly) will use Huffman compression only, giving
        * a very fast compression for all types of input, but sacrificing considerable
        * compression efficiency.
        * 
        * If level is in the range [-2, 9] then the error returned will be nil.
        * Otherwise the error returned will be non-nil.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>; var _1 : stdgo.Error; } return stdgo._internal.compress.flate.Flate_newwriter.newWriter(_w, _level);
    /**
        * NewWriterDict is like NewWriter but initializes the new
        * Writer with a preset dictionary. The returned Writer behaves
        * as if the dictionary had been written to it without producing
        * any compressed output. The compressed data written to w
        * can only be decompressed by a Reader initialized with the
        * same dictionary.
    **/
    static public inline function newWriterDict(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>; var _1 : stdgo.Error; } return stdgo._internal.compress.flate.Flate_newwriterdict.newWriterDict(_w, _level, _dict);
    /**
        * NewReader returns a new ReadCloser that can be used
        * to read the uncompressed version of r.
        * If r does not also implement io.ByteReader,
        * the decompressor may read more data than necessary from r.
        * The reader returns io.EOF after the final block in the DEFLATE stream has
        * been encountered. Any trailing data after the final block is ignored.
        * 
        * The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_readcloser.ReadCloser return stdgo._internal.compress.flate.Flate_newreader.newReader(_r);
    /**
        * NewReaderDict is like NewReader but initializes the reader
        * with a preset dictionary. The returned Reader behaves as if
        * the uncompressed data stream started with the given dictionary,
        * which has already been read. NewReaderDict is typically used
        * to read data compressed by NewWriterDict.
        * 
        * The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public inline function newReaderDict(_r:stdgo._internal.io.Io_reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.io.Io_readcloser.ReadCloser return stdgo._internal.compress.flate.Flate_newreaderdict.newReaderDict(_r, _dict);
}
