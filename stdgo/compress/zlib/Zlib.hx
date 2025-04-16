package stdgo.compress.zlib;
var noCompression : stdgo.GoUInt64 = 0i32;
var bestSpeed : stdgo.GoUInt64 = 1i32;
var bestCompression : stdgo.GoUInt64 = 9i32;
var defaultCompression : stdgo.GoUInt64 = -1i32;
var huffmanOnly : stdgo.GoUInt64 = -2i32;
var errChecksum(get, set) : stdgo.Error;
private function get_errChecksum():stdgo.Error return stdgo._internal.compress.zlib.Zlib_errchecksum.errChecksum;
private function set_errChecksum(v:stdgo.Error):stdgo.Error {
        stdgo._internal.compress.zlib.Zlib_errchecksum.errChecksum = v;
        return v;
    }
var errDictionary(get, set) : stdgo.Error;
private function get_errDictionary():stdgo.Error return stdgo._internal.compress.zlib.Zlib_errdictionary.errDictionary;
private function set_errDictionary(v:stdgo.Error):stdgo.Error {
        stdgo._internal.compress.zlib.Zlib_errdictionary.errDictionary = v;
        return v;
    }
var errHeader(get, set) : stdgo.Error;
private function get_errHeader():stdgo.Error return stdgo._internal.compress.zlib.Zlib_errheader.errHeader;
private function set_errHeader(v:stdgo.Error):stdgo.Error {
        stdgo._internal.compress.zlib.Zlib_errheader.errHeader = v;
        return v;
    }
typedef Resetter = stdgo._internal.compress.zlib.Zlib_resetter.Resetter;
typedef Writer = stdgo._internal.compress.zlib.Zlib_writer.Writer;
typedef WriterPointer = stdgo._internal.compress.zlib.Zlib_writerpointer.WriterPointer;
/**
    * 
    * Package zlib implements reading and writing of zlib format compressed data,
    * as specified in RFC 1950.
    * 
    * The implementation provides filters that uncompress during reading
    * and compress during writing.  For example, to write compressed data
    * to a buffer:
    * 
    * 	var b bytes.Buffer
    * 	w := zlib.NewWriter(&b)
    * 	w.Write([]byte("hello, world\n"))
    * 	w.Close()
    * 
    * and to read that data back:
    * 
    * 	r, err := zlib.NewReader(&b)
    * 	io.Copy(os.Stdout, r)
    * 	r.Close()
    * 
**/
class Zlib {
    /**
        * NewReader creates a new ReadCloser.
        * Reads from the returned ReadCloser read and decompress data from r.
        * If r does not implement io.ByteReader, the decompressor may read more
        * data than necessary from r.
        * It is the caller's responsibility to call Close on the ReadCloser when done.
        * 
        * The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } return stdgo._internal.compress.zlib.Zlib_newreader.newReader(_r);
    /**
        * NewReaderDict is like NewReader but uses a preset dictionary.
        * NewReaderDict ignores the dictionary if the compressed data does not refer to it.
        * If the compressed data refers to a different dictionary, NewReaderDict returns ErrDictionary.
        * 
        * The ReadCloser returned by NewReaderDict also implements Resetter.
    **/
    static public inline function newReaderDict(_r:stdgo._internal.io.Io_reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } return stdgo._internal.compress.zlib.Zlib_newreaderdict.newReaderDict(_r, _dict);
    /**
        * NewWriter creates a new Writer.
        * Writes to the returned Writer are compressed and written to w.
        * 
        * It is the caller's responsibility to call Close on the Writer when done.
        * Writes may be buffered and not flushed until Close.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> return stdgo._internal.compress.zlib.Zlib_newwriter.newWriter(_w);
    /**
        * NewWriterLevel is like NewWriter but specifies the compression level instead
        * of assuming DefaultCompression.
        * 
        * The compression level can be DefaultCompression, NoCompression, HuffmanOnly
        * or any integer value between BestSpeed and BestCompression inclusive.
        * The error returned will be nil if the level is valid.
    **/
    static public inline function newWriterLevel(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>; var _1 : stdgo.Error; } return stdgo._internal.compress.zlib.Zlib_newwriterlevel.newWriterLevel(_w, _level);
    /**
        * NewWriterLevelDict is like NewWriterLevel but specifies a dictionary to
        * compress with.
        * 
        * The dictionary may be nil. If not, its contents should not be modified until
        * the Writer is closed.
    **/
    static public inline function newWriterLevelDict(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>; var _1 : stdgo.Error; } return stdgo._internal.compress.zlib.Zlib_newwriterleveldict.newWriterLevelDict(_w, _level, _dict);
}
