package stdgo.compress.lzw;
var lSB : Order = 0i64;
var mSB : Order = 1i64;
typedef Reader = stdgo._internal.compress.lzw.Lzw_reader.Reader;
typedef Writer = stdgo._internal.compress.lzw.Lzw_writer.Writer;
typedef Order = stdgo._internal.compress.lzw.Lzw_order.Order;
typedef ReaderPointer = stdgo._internal.compress.lzw.Lzw_readerpointer.ReaderPointer;
typedef WriterPointer = stdgo._internal.compress.lzw.Lzw_writerpointer.WriterPointer;
typedef OrderPointer = stdgo._internal.compress.lzw.Lzw_orderpointer.OrderPointer;
/**
    * Package lzw implements the Lempel-Ziv-Welch compressed data format,
    * described in T. A. Welch, “A Technique for High-Performance Data
    * Compression”, Computer, 17(6) (June 1984), pp 8-19.
    * 
    * In particular, it implements LZW as used by the GIF and PDF file
    * formats, which means variable-width codes up to 12 bits and the first
    * two non-literal codes are a clear code and an EOF code.
    * 
    * The TIFF file format uses a similar but incompatible version of the LZW
    * algorithm. See the golang.org/x/image/tiff/lzw package for an
    * implementation.
**/
class Lzw {
    /**
        * NewReader creates a new io.ReadCloser.
        * Reads from the returned io.ReadCloser read and decompress data from r.
        * If r does not also implement io.ByteReader,
        * the decompressor may read more data than necessary from r.
        * It is the caller's responsibility to call Close on the ReadCloser when
        * finished reading.
        * The number of bits to use for literal codes, litWidth, must be in the
        * range [2,8] and is typically 8. It must equal the litWidth
        * used during compression.
        * 
        * It is guaranteed that the underlying type of the returned io.ReadCloser
        * is a *Reader.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader, _order:Order, _litWidth:stdgo.GoInt):stdgo._internal.io.Io_readcloser.ReadCloser return stdgo._internal.compress.lzw.Lzw_newreader.newReader(_r, _order, _litWidth);
    /**
        * NewWriter creates a new io.WriteCloser.
        * Writes to the returned io.WriteCloser are compressed and written to w.
        * It is the caller's responsibility to call Close on the WriteCloser when
        * finished writing.
        * The number of bits to use for literal codes, litWidth, must be in the
        * range [2,8] and is typically 8. Input bytes must be less than 1<<litWidth.
        * 
        * It is guaranteed that the underlying type of the returned io.WriteCloser
        * is a *Writer.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer, _order:Order, _litWidth:stdgo.GoInt):stdgo._internal.io.Io_writecloser.WriteCloser return stdgo._internal.compress.lzw.Lzw_newwriter.newWriter(_w, _order, _litWidth);
}
