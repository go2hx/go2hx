package stdgo.compress.zlib;
final noCompression : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib_noCompression.noCompression;
final bestSpeed : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib_bestSpeed.bestSpeed;
final bestCompression : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib_bestCompression.bestCompression;
final defaultCompression : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib_defaultCompression.defaultCompression;
final huffmanOnly : haxe.UInt64 = stdgo._internal.compress.zlib.Zlib_huffmanOnly.huffmanOnly;
var errChecksum(get, set) : stdgo.Error;
private function get_errChecksum():stdgo.Error return stdgo._internal.compress.zlib.Zlib_errChecksum.errChecksum;
private function set_errChecksum(v:stdgo.Error):stdgo.Error {
    stdgo._internal.compress.zlib.Zlib_errChecksum.errChecksum = v;
    return v;
}
var errDictionary(get, set) : stdgo.Error;
private function get_errDictionary():stdgo.Error return stdgo._internal.compress.zlib.Zlib_errDictionary.errDictionary;
private function set_errDictionary(v:stdgo.Error):stdgo.Error {
    stdgo._internal.compress.zlib.Zlib_errDictionary.errDictionary = v;
    return v;
}
var errHeader(get, set) : stdgo.Error;
private function get_errHeader():stdgo.Error return stdgo._internal.compress.zlib.Zlib_errHeader.errHeader;
private function set_errHeader(v:stdgo.Error):stdgo.Error {
    stdgo._internal.compress.zlib.Zlib_errHeader.errHeader = v;
    return v;
}
class Resetter_static_extension {
    static public function reset(t:stdgo._internal.compress.zlib.Zlib_Resetter.Resetter, _r:stdgo._internal.io.Io_Reader.Reader, _dict:Array<std.UInt>):stdgo.Error {
        final _dict = ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.zlib.Zlib_Resetter_static_extension.Resetter_static_extension.reset(t, _r, _dict);
    }
}
typedef Resetter = stdgo._internal.compress.zlib.Zlib_Resetter.Resetter;
@:structInit @:using(stdgo.compress.zlib.Zlib.T_reader_static_extension) abstract T_reader(stdgo._internal.compress.zlib.Zlib_T_reader.T_reader) from stdgo._internal.compress.zlib.Zlib_T_reader.T_reader to stdgo._internal.compress.zlib.Zlib_T_reader.T_reader {
    public var _r(get, set) : stdgo._internal.compress.flate.Flate_Reader.Reader;
    function get__r():stdgo._internal.compress.flate.Flate_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.compress.flate.Flate_Reader.Reader):stdgo._internal.compress.flate.Flate_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _decompressor(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__decompressor():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._decompressor;
    function set__decompressor(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._decompressor = v;
        return v;
    }
    public var _digest(get, set) : stdgo._internal.hash.Hash_Hash32.Hash32;
    function get__digest():stdgo._internal.hash.Hash_Hash32.Hash32 return this._digest;
    function set__digest(v:stdgo._internal.hash.Hash_Hash32.Hash32):stdgo._internal.hash.Hash_Hash32.Hash32 {
        this._digest = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _scratch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__scratch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._scratch) i]);
    function set__scratch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._scratch = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.compress.flate.Flate_Reader.Reader, ?_decompressor:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_digest:stdgo._internal.hash.Hash_Hash32.Hash32, ?_err:stdgo.Error, ?_scratch:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.compress.zlib.Zlib_T_reader.T_reader(_r, _decompressor, _digest, _err, ([for (i in _scratch) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.zlib.Zlib.Writer_static_extension) abstract Writer(stdgo._internal.compress.zlib.Zlib_Writer.Writer) from stdgo._internal.compress.zlib.Zlib_Writer.Writer to stdgo._internal.compress.zlib.Zlib_Writer.Writer {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = v;
        return v;
    }
    public var _dict(get, set) : Array<std.UInt>;
    function get__dict():Array<std.UInt> return [for (i in this._dict) i];
    function set__dict(v:Array<std.UInt>):Array<std.UInt> {
        this._dict = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _compressor(get, set) : stdgo._internal.compress.flate.Flate_Writer.Writer;
    function get__compressor():stdgo._internal.compress.flate.Flate_Writer.Writer return this._compressor;
    function set__compressor(v:stdgo._internal.compress.flate.Flate_Writer.Writer):stdgo._internal.compress.flate.Flate_Writer.Writer {
        this._compressor = v;
        return v;
    }
    public var _digest(get, set) : stdgo._internal.hash.Hash_Hash32.Hash32;
    function get__digest():stdgo._internal.hash.Hash_Hash32.Hash32 return this._digest;
    function set__digest(v:stdgo._internal.hash.Hash_Hash32.Hash32):stdgo._internal.hash.Hash_Hash32.Hash32 {
        this._digest = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _scratch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__scratch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._scratch) i]);
    function set__scratch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._scratch = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_level:StdTypes.Int, ?_dict:Array<std.UInt>, ?_compressor:stdgo._internal.compress.flate.Flate_Writer.Writer, ?_digest:stdgo._internal.hash.Hash_Hash32.Hash32, ?_err:stdgo.Error, ?_scratch:haxe.ds.Vector<std.UInt>, ?_wroteHeader:Bool) this = new stdgo._internal.compress.zlib.Zlib_Writer.Writer(_w, _level, ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>), _compressor, _digest, _err, ([for (i in _scratch) i] : stdgo.GoArray<stdgo.GoUInt8>), _wroteHeader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_readerPointer = stdgo._internal.compress.zlib.Zlib_T_readerPointer.T_readerPointer;
class T_reader_static_extension {
    static public function reset(_z:T_reader, _r:stdgo._internal.io.Io_Reader.Reader, _dict:Array<std.UInt>):stdgo.Error {
        final _dict = ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.zlib.Zlib_T_reader_static_extension.T_reader_static_extension.reset(_z, _r, _dict);
    }
    static public function close(_z:T_reader):stdgo.Error {
        return stdgo._internal.compress.zlib.Zlib_T_reader_static_extension.T_reader_static_extension.close(_z);
    }
    static public function read(_z:T_reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.zlib.Zlib_T_reader_static_extension.T_reader_static_extension.read(_z, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef WriterPointer = stdgo._internal.compress.zlib.Zlib_WriterPointer.WriterPointer;
class Writer_static_extension {
    static public function close(_z:Writer):stdgo.Error {
        return stdgo._internal.compress.zlib.Zlib_Writer_static_extension.Writer_static_extension.close(_z);
    }
    static public function flush(_z:Writer):stdgo.Error {
        return stdgo._internal.compress.zlib.Zlib_Writer_static_extension.Writer_static_extension.flush(_z);
    }
    static public function write(_z:Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.zlib.Zlib_Writer_static_extension.Writer_static_extension.write(_z, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeHeader(_z:Writer):stdgo.Error {
        return stdgo._internal.compress.zlib.Zlib_Writer_static_extension.Writer_static_extension._writeHeader(_z);
    }
    static public function reset(_z:Writer, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        stdgo._internal.compress.zlib.Zlib_Writer_static_extension.Writer_static_extension.reset(_z, _w);
    }
}
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
    static public function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<stdgo._internal.io.Io_ReadCloser.ReadCloser, stdgo.Error> {
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
    static public function newReaderDict(_r:stdgo._internal.io.Io_Reader.Reader, _dict:Array<std.UInt>):stdgo.Tuple<stdgo._internal.io.Io_ReadCloser.ReadCloser, stdgo.Error> {
        final _dict = ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>);
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
    static public function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.compress.zlib.Zlib_newWriter.newWriter(_w);
    }
    /**
        NewWriterLevel is like NewWriter but specifies the compression level instead
        of assuming DefaultCompression.
        
        The compression level can be DefaultCompression, NoCompression, HuffmanOnly
        or any integer value between BestSpeed and BestCompression inclusive.
        The error returned will be nil if the level is valid.
    **/
    static public function newWriterLevel(_w:stdgo._internal.io.Io_Writer.Writer, _level:StdTypes.Int):stdgo.Tuple<Writer, stdgo.Error> {
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
    static public function newWriterLevelDict(_w:stdgo._internal.io.Io_Writer.Writer, _level:StdTypes.Int, _dict:Array<std.UInt>):stdgo.Tuple<Writer, stdgo.Error> {
        final _dict = ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.zlib.Zlib_newWriterLevelDict.newWriterLevelDict(_w, _level, _dict);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
