package stdgo.compress.gzip;
var noCompression : stdgo.GoUInt64 = 0i64;
var bestSpeed : stdgo.GoUInt64 = 1i64;
var bestCompression : stdgo.GoUInt64 = 9i64;
var defaultCompression : stdgo.GoUInt64 = -1i64;
var huffmanOnly : stdgo.GoUInt64 = -2i64;
var errChecksum(get, set) : stdgo.Error;
private function get_errChecksum():stdgo.Error return stdgo._internal.compress.gzip.Gzip_errchecksum.errChecksum;
private function set_errChecksum(v:stdgo.Error):stdgo.Error {
        stdgo._internal.compress.gzip.Gzip_errchecksum.errChecksum = v;
        return v;
    }
var errHeader(get, set) : stdgo.Error;
private function get_errHeader():stdgo.Error return stdgo._internal.compress.gzip.Gzip_errheader.errHeader;
private function set_errHeader(v:stdgo.Error):stdgo.Error {
        stdgo._internal.compress.gzip.Gzip_errheader.errHeader = v;
        return v;
    }
typedef Header = stdgo._internal.compress.gzip.Gzip_header.Header;
typedef Reader = stdgo._internal.compress.gzip.Gzip_reader.Reader;
typedef Writer = stdgo._internal.compress.gzip.Gzip_writer.Writer;
typedef HeaderPointer = stdgo._internal.compress.gzip.Gzip_headerpointer.HeaderPointer;
typedef ReaderPointer = stdgo._internal.compress.gzip.Gzip_readerpointer.ReaderPointer;
typedef WriterPointer = stdgo._internal.compress.gzip.Gzip_writerpointer.WriterPointer;
/**
    * Package gzip implements reading and writing of gzip format compressed files,
    * as specified in RFC 1952.
**/
class Gzip {
    /**
        * NewReader creates a new Reader reading the given reader.
        * If r does not also implement io.ByteReader,
        * the decompressor may read more data than necessary from r.
        * 
        * It is the caller's responsibility to call Close on the Reader when done.
        * 
        * The Reader.Header fields will be valid in the Reader returned.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>; var _1 : stdgo.Error; } return stdgo._internal.compress.gzip.Gzip_newreader.newReader(_r);
    /**
        * NewWriter returns a new Writer.
        * Writes to the returned writer are compressed and written to w.
        * 
        * It is the caller's responsibility to call Close on the Writer when done.
        * Writes may be buffered and not flushed until Close.
        * 
        * Callers that wish to set the fields in Writer.Header must do so before
        * the first call to Write, Flush, or Close.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> return stdgo._internal.compress.gzip.Gzip_newwriter.newWriter(_w);
    /**
        * NewWriterLevel is like NewWriter but specifies the compression level instead
        * of assuming DefaultCompression.
        * 
        * The compression level can be DefaultCompression, NoCompression, HuffmanOnly
        * or any integer value between BestSpeed and BestCompression inclusive.
        * The error returned will be nil if the level is valid.
    **/
    static public inline function newWriterLevel(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>; var _1 : stdgo.Error; } return stdgo._internal.compress.gzip.Gzip_newwriterlevel.newWriterLevel(_w, _level);
}
