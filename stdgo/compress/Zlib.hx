package stdgo.compress;
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
final noCompression : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.noCompression;
final bestSpeed : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.bestSpeed;
final bestCompression : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.bestCompression;
final defaultCompression : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.defaultCompression;
final huffmanOnly : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.huffmanOnly;
var errChecksum(get, set) : stdgo.Error;
private function get_errChecksum():stdgo.Error return stdgo._internal.compress.zlib.Zlib.errChecksum;
private function set_errChecksum(v:stdgo.Error):stdgo.Error return stdgo._internal.compress.zlib.Zlib.errChecksum = v;
var errDictionary(get, set) : stdgo.Error;
private function get_errDictionary():stdgo.Error return stdgo._internal.compress.zlib.Zlib.errDictionary;
private function set_errDictionary(v:stdgo.Error):stdgo.Error return stdgo._internal.compress.zlib.Zlib.errDictionary = v;
var errHeader(get, set) : stdgo.Error;
private function get_errHeader():stdgo.Error return stdgo._internal.compress.zlib.Zlib.errHeader;
private function set_errHeader(v:stdgo.Error):stdgo.Error return stdgo._internal.compress.zlib.Zlib.errHeader = v;
@:forward @:forward.new abstract Resetter_static_extension(stdgo._internal.compress.zlib.Zlib.Resetter_static_extension) from stdgo._internal.compress.zlib.Zlib.Resetter_static_extension to stdgo._internal.compress.zlib.Zlib.Resetter_static_extension {

}
typedef Resetter = stdgo._internal.compress.zlib.Zlib.Resetter;
@:forward @:forward.new abstract T_reader(stdgo._internal.compress.zlib.Zlib.T_reader) from stdgo._internal.compress.zlib.Zlib.T_reader to stdgo._internal.compress.zlib.Zlib.T_reader {

}
@:forward @:forward.new abstract T_zlibTest(stdgo._internal.compress.zlib.Zlib.T_zlibTest) from stdgo._internal.compress.zlib.Zlib.T_zlibTest to stdgo._internal.compress.zlib.Zlib.T_zlibTest {

}
@:forward @:forward.new abstract Writer(stdgo._internal.compress.zlib.Zlib.Writer) from stdgo._internal.compress.zlib.Zlib.Writer to stdgo._internal.compress.zlib.Zlib.Writer {

}
@:forward @:forward.new abstract T_reader_asInterface(stdgo._internal.compress.zlib.Zlib.T_reader_asInterface) from stdgo._internal.compress.zlib.Zlib.T_reader_asInterface to stdgo._internal.compress.zlib.Zlib.T_reader_asInterface {

}
@:forward @:forward.new abstract T_reader_static_extension(stdgo._internal.compress.zlib.Zlib.T_reader_static_extension) from stdgo._internal.compress.zlib.Zlib.T_reader_static_extension to stdgo._internal.compress.zlib.Zlib.T_reader_static_extension {

}
@:forward @:forward.new abstract Writer_asInterface(stdgo._internal.compress.zlib.Zlib.Writer_asInterface) from stdgo._internal.compress.zlib.Zlib.Writer_asInterface to stdgo._internal.compress.zlib.Zlib.Writer_asInterface {

}
@:forward @:forward.new abstract Writer_static_extension(stdgo._internal.compress.zlib.Zlib.Writer_static_extension) from stdgo._internal.compress.zlib.Zlib.Writer_static_extension to stdgo._internal.compress.zlib.Zlib.Writer_static_extension {

}
class Zlib {
    /**
        NewReader creates a new ReadCloser.
        Reads from the returned ReadCloser read and decompress data from r.
        If r does not implement io.ByteReader, the decompressor may read more
        data than necessary from r.
        It is the caller's responsibility to call Close on the ReadCloser when done.
        
        The ReadCloser returned by NewReader also implements Resetter.
    **/
    static public function newReader(r:stdgo._internal.io.Io.Reader):stdgo.Tuple<stdgo._internal.io.Io.ReadCloser, stdgo.Error> {
        return {
            final obj = stdgo._internal.compress.zlib.Zlib.newReader(r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewReaderDict is like NewReader but uses a preset dictionary.
        NewReaderDict ignores the dictionary if the compressed data does not refer to it.
        If the compressed data refers to a different dictionary, NewReaderDict returns ErrDictionary.
        
        The ReadCloser returned by NewReaderDict also implements Resetter.
    **/
    static public function newReaderDict(r:stdgo._internal.io.Io.Reader, dict:Array<StdTypes.Int>):stdgo.Tuple<stdgo._internal.io.Io.ReadCloser, stdgo.Error> {
        final dict = ([for (i in dict) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.compress.zlib.Zlib.newReaderDict(r, dict);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testDecompressor(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.zlib.Zlib.testDecompressor(t);
    }
    /**
        NewWriter creates a new Writer.
        Writes to the returned Writer are compressed and written to w.
        
        It is the caller's responsibility to call Close on the Writer when done.
        Writes may be buffered and not flushed until Close.
    **/
    static public function newWriter(w:stdgo._internal.io.Io.Writer):Writer {
        return stdgo._internal.compress.zlib.Zlib.newWriter(w);
    }
    /**
        NewWriterLevel is like NewWriter but specifies the compression level instead
        of assuming DefaultCompression.
        
        The compression level can be DefaultCompression, NoCompression, HuffmanOnly
        or any integer value between BestSpeed and BestCompression inclusive.
        The error returned will be nil if the level is valid.
    **/
    static public function newWriterLevel(w:stdgo._internal.io.Io.Writer, level:StdTypes.Int):stdgo.Tuple<Writer, stdgo.Error> {
        return {
            final obj = stdgo._internal.compress.zlib.Zlib.newWriterLevel(w, level);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewWriterLevelDict is like NewWriterLevel but specifies a dictionary to
        compress with.
        
        The dictionary may be nil. If not, its contents should not be modified until
        the Writer is closed.
    **/
    static public function newWriterLevelDict(w:stdgo._internal.io.Io.Writer, level:StdTypes.Int, dict:Array<StdTypes.Int>):stdgo.Tuple<Writer, stdgo.Error> {
        final dict = ([for (i in dict) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.compress.zlib.Zlib.newWriterLevelDict(w, level, dict);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testWriter(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.zlib.Zlib.testWriter(t);
    }
    static public function testWriterBig(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.zlib.Zlib.testWriterBig(t);
    }
    static public function testWriterDict(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.zlib.Zlib.testWriterDict(t);
    }
    static public function testWriterReset(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.zlib.Zlib.testWriterReset(t);
    }
    static public function testWriterDictIsUsed(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.zlib.Zlib.testWriterDictIsUsed(t);
    }
}
