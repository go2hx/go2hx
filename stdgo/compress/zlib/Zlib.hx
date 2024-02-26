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
private var __go2hxdoc__package : Bool;
var errChecksum(get, set) : stdgo.Error;
function get_errChecksum():stdgo.Error return stdgo._internal.compress.zlib.Zlib.errChecksum;
function set_errChecksum(v:stdgo.Error):stdgo.Error return stdgo._internal.compress.zlib.Zlib.errChecksum = v;
var errDictionary(get, set) : stdgo.Error;
function get_errDictionary():stdgo.Error return stdgo._internal.compress.zlib.Zlib.errDictionary;
function set_errDictionary(v:stdgo.Error):stdgo.Error return stdgo._internal.compress.zlib.Zlib.errDictionary = v;
var errHeader(get, set) : stdgo.Error;
function get_errHeader():stdgo.Error return stdgo._internal.compress.zlib.Zlib.errHeader;
function set_errHeader(v:stdgo.Error):stdgo.Error return stdgo._internal.compress.zlib.Zlib.errHeader = v;
final noCompression : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.noCompression;
final bestSpeed : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.bestSpeed;
final bestCompression : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.bestCompression;
final defaultCompression : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.defaultCompression;
final huffmanOnly : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.huffmanOnly;
typedef Resetter = stdgo._internal.compress.zlib.Zlib.Resetter;
@:invalid typedef T_reader = Dynamic;
@:invalid typedef T_zlibTest = Dynamic;
@:invalid typedef Writer = Dynamic;
/**
    // NewReader creates a new ReadCloser.
    // Reads from the returned ReadCloser read and decompress data from r.
    // If r does not implement io.ByteReader, the decompressor may read more
    // data than necessary from r.
    // It is the caller's responsibility to call Close on the ReadCloser when done.
    //
    // The ReadCloser returned by NewReader also implements Resetter.
**/
inline function newReader(r:stdgo._internal.io.Io.Reader):stdgo.Tuple<stdgo._internal.io.Io.ReadCloser, stdgo.Error> throw "not implemented";
/**
    // NewReaderDict is like NewReader but uses a preset dictionary.
    // NewReaderDict ignores the dictionary if the compressed data does not refer to it.
    // If the compressed data refers to a different dictionary, NewReaderDict returns ErrDictionary.
    //
    // The ReadCloser returned by NewReaderDict also implements Resetter.
**/
inline function newReaderDict(r:stdgo._internal.io.Io.Reader, dict:Array<Int>):stdgo.Tuple<stdgo._internal.io.Io.ReadCloser, stdgo.Error> throw "not implemented";
inline function testDecompressor(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // NewWriter creates a new Writer.
    // Writes to the returned Writer are compressed and written to w.
    //
    // It is the caller's responsibility to call Close on the Writer when done.
    // Writes may be buffered and not flushed until Close.
**/
inline function newWriter(w:stdgo._internal.io.Io.Writer):Writer throw "not implemented";
/**
    // NewWriterLevel is like NewWriter but specifies the compression level instead
    // of assuming DefaultCompression.
    //
    // The compression level can be DefaultCompression, NoCompression, HuffmanOnly
    // or any integer value between BestSpeed and BestCompression inclusive.
    // The error returned will be nil if the level is valid.
**/
inline function newWriterLevel(w:stdgo._internal.io.Io.Writer, level:Int):stdgo.Tuple<Writer, stdgo.Error> throw "not implemented";
/**
    // NewWriterLevelDict is like NewWriterLevel but specifies a dictionary to
    // compress with.
    //
    // The dictionary may be nil. If not, its contents should not be modified until
    // the Writer is closed.
**/
inline function newWriterLevelDict(w:stdgo._internal.io.Io.Writer, level:Int, dict:Array<Int>):stdgo.Tuple<Writer, stdgo.Error> throw "not implemented";
inline function testWriter(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriterBig(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriterDict(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriterReset(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriterDictIsUsed(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_reader_asInterface = Dynamic;
@:invalid typedef T_reader_static_extension = Dynamic;
@:invalid typedef Writer_asInterface = Dynamic;
@:invalid typedef Writer_static_extension = Dynamic;
