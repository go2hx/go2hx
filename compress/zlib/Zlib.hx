package compress.zlib;
final noCompression : haxe.UInt64 = _internal.compress.zlib.Zlib.noCompression;
final bestSpeed : haxe.UInt64 = _internal.compress.zlib.Zlib.bestSpeed;
final bestCompression : haxe.UInt64 = _internal.compress.zlib.Zlib.bestCompression;
final defaultCompression : haxe.UInt64 = _internal.compress.zlib.Zlib.defaultCompression;
final huffmanOnly : haxe.UInt64 = _internal.compress.zlib.Zlib.huffmanOnly;
var errChecksum(get, set) : stdgo.Error;
private function get_errChecksum():stdgo.Error return _internal.compress.zlib.Zlib.errChecksum;
private function set_errChecksum(v:stdgo.Error):stdgo.Error {
        _internal.compress.zlib.Zlib.errChecksum = v;
        return v;
    }
var errDictionary(get, set) : stdgo.Error;
private function get_errDictionary():stdgo.Error return _internal.compress.zlib.Zlib.errDictionary;
private function set_errDictionary(v:stdgo.Error):stdgo.Error {
        _internal.compress.zlib.Zlib.errDictionary = v;
        return v;
    }
var errHeader(get, set) : stdgo.Error;
private function get_errHeader():stdgo.Error return _internal.compress.zlib.Zlib.errHeader;
private function set_errHeader(v:stdgo.Error):stdgo.Error {
        _internal.compress.zlib.Zlib.errHeader = v;
        return v;
    }
class Resetter_static_extension {
    static public function reset(t:Resetter, r:stdgo._internal.io.Io.Reader, dict:Array<StdTypes.Int>):stdgo.Error {
        final dict = ([for (i in dict) i] : stdgo.Slice<stdgo.GoByte>);
        return _internal.compress.zlib.Zlib.Resetter_static_extension.reset(t, r, dict);
    }
}
typedef Resetter = _internal.compress.zlib.Zlib.Resetter;
@:structInit @:private @:using(compress.zlib.Zlib.T_reader_static_extension) abstract T_reader(_internal.compress.zlib.Zlib.T_reader) from _internal.compress.zlib.Zlib.T_reader to _internal.compress.zlib.Zlib.T_reader {
    public var _r(get, set) : stdgo._internal.compress.flate.Flate.Reader;
    function get__r():stdgo._internal.compress.flate.Flate.Reader return this._r;
    function set__r(v:stdgo._internal.compress.flate.Flate.Reader):stdgo._internal.compress.flate.Flate.Reader {
        this._r = v;
        return v;
    }
    public var _decompressor(get, set) : stdgo._internal.io.Io.ReadCloser;
    function get__decompressor():stdgo._internal.io.Io.ReadCloser return this._decompressor;
    function set__decompressor(v:stdgo._internal.io.Io.ReadCloser):stdgo._internal.io.Io.ReadCloser {
        this._decompressor = v;
        return v;
    }
    public var _digest(get, set) : stdgo._internal.hash.Hash.Hash32;
    function get__digest():stdgo._internal.hash.Hash.Hash32 return this._digest;
    function set__digest(v:stdgo._internal.hash.Hash.Hash32):stdgo._internal.hash.Hash.Hash32 {
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
    public function new(?_r:stdgo._internal.compress.flate.Flate.Reader, ?_decompressor:stdgo._internal.io.Io.ReadCloser, ?_digest:stdgo._internal.hash.Hash.Hash32, ?_err:stdgo.Error, ?_scratch:haxe.ds.Vector<std.UInt>) this = new _internal.compress.zlib.Zlib.T_reader(_r, _decompressor, _digest, _err, ([for (i in _scratch) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_zlibTest(_internal.compress.zlib.Zlib.T_zlibTest) from _internal.compress.zlib.Zlib.T_zlibTest to _internal.compress.zlib.Zlib.T_zlibTest {
    public var _desc(get, set) : String;
    function get__desc():String return this._desc;
    function set__desc(v:String):String {
        this._desc = v;
        return v;
    }
    public var _raw(get, set) : String;
    function get__raw():String return this._raw;
    function set__raw(v:String):String {
        this._raw = v;
        return v;
    }
    public var _compressed(get, set) : Array<std.UInt>;
    function get__compressed():Array<std.UInt> return [for (i in this._compressed) i];
    function set__compressed(v:Array<std.UInt>):Array<std.UInt> {
        this._compressed = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _dict(get, set) : Array<std.UInt>;
    function get__dict():Array<std.UInt> return [for (i in this._dict) i];
    function set__dict(v:Array<std.UInt>):Array<std.UInt> {
        this._dict = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_desc:String, ?_raw:String, ?_compressed:Array<std.UInt>, ?_dict:Array<std.UInt>, ?_err:stdgo.Error) this = new _internal.compress.zlib.Zlib.T_zlibTest(_desc, _raw, ([for (i in _compressed) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>), _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(compress.zlib.Zlib.Writer_static_extension) abstract Writer(_internal.compress.zlib.Zlib.Writer) from _internal.compress.zlib.Zlib.Writer to _internal.compress.zlib.Zlib.Writer {
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
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
    public var _compressor(get, set) : stdgo._internal.compress.flate.Flate.Writer;
    function get__compressor():stdgo._internal.compress.flate.Flate.Writer return this._compressor;
    function set__compressor(v:stdgo._internal.compress.flate.Flate.Writer):stdgo._internal.compress.flate.Flate.Writer {
        this._compressor = v;
        return v;
    }
    public var _digest(get, set) : stdgo._internal.hash.Hash.Hash32;
    function get__digest():stdgo._internal.hash.Hash.Hash32 return this._digest;
    function set__digest(v:stdgo._internal.hash.Hash.Hash32):stdgo._internal.hash.Hash.Hash32 {
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
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_level:StdTypes.Int, ?_dict:Array<std.UInt>, ?_compressor:stdgo._internal.compress.flate.Flate.Writer, ?_digest:stdgo._internal.hash.Hash.Hash32, ?_err:stdgo.Error, ?_scratch:haxe.ds.Vector<std.UInt>, ?_wroteHeader:Bool) this = new _internal.compress.zlib.Zlib.Writer(_w, _level, ([for (i in _dict) i] : stdgo.Slice<stdgo.GoUInt8>), _compressor, _digest, _err, ([for (i in _scratch) i] : stdgo.GoArray<stdgo.GoUInt8>), _wroteHeader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T_reader_static_extension {
    static public function reset(z:T_reader, r:stdgo._internal.io.Io.Reader, dict:Array<StdTypes.Int>):stdgo.Error {
        final dict = ([for (i in dict) i] : stdgo.Slice<stdgo.GoByte>);
        return _internal.compress.zlib.Zlib.T_reader_static_extension.reset(z, r, dict);
    }
    static public function close(z:T_reader):stdgo.Error {
        return _internal.compress.zlib.Zlib.T_reader_static_extension.close(z);
    }
    static public function read(z:T_reader, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = _internal.compress.zlib.Zlib.T_reader_static_extension.read(z, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Writer_static_extension {
    static public function close(z:Writer):stdgo.Error {
        return _internal.compress.zlib.Zlib.Writer_static_extension.close(z);
    }
    static public function flush(z:Writer):stdgo.Error {
        return _internal.compress.zlib.Zlib.Writer_static_extension.flush(z);
    }
    static public function write(z:Writer, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = _internal.compress.zlib.Zlib.Writer_static_extension.write(z, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeHeader(z:Writer):stdgo.Error {
        return _internal.compress.zlib.Zlib.Writer_static_extension._writeHeader(z);
    }
    static public function reset(z:Writer, w:stdgo._internal.io.Io.Writer):Void {
        _internal.compress.zlib.Zlib.Writer_static_extension.reset(z, w);
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
    static public function newReader(r:stdgo._internal.io.Io.Reader):stdgo.Tuple<stdgo._internal.io.Io.ReadCloser, stdgo.Error> {
        return {
            final obj = _internal.compress.zlib.Zlib.newReader(r);
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
            final obj = _internal.compress.zlib.Zlib.newReaderDict(r, dict);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testDecompressor(t:stdgo._internal.testing.Testing.T_):Void {
        _internal.compress.zlib.Zlib.testDecompressor(t);
    }
    /**
        NewWriter creates a new Writer.
        Writes to the returned Writer are compressed and written to w.
        
        It is the caller's responsibility to call Close on the Writer when done.
        Writes may be buffered and not flushed until Close.
    **/
    static public function newWriter(w:stdgo._internal.io.Io.Writer):Writer {
        return _internal.compress.zlib.Zlib.newWriter(w);
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
            final obj = _internal.compress.zlib.Zlib.newWriterLevel(w, level);
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
            final obj = _internal.compress.zlib.Zlib.newWriterLevelDict(w, level, dict);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testWriter(t:stdgo._internal.testing.Testing.T_):Void {
        _internal.compress.zlib.Zlib.testWriter(t);
    }
    static public function testWriterBig(t:stdgo._internal.testing.Testing.T_):Void {
        _internal.compress.zlib.Zlib.testWriterBig(t);
    }
    static public function testWriterDict(t:stdgo._internal.testing.Testing.T_):Void {
        _internal.compress.zlib.Zlib.testWriterDict(t);
    }
    static public function testWriterReset(t:stdgo._internal.testing.Testing.T_):Void {
        _internal.compress.zlib.Zlib.testWriterReset(t);
    }
    static public function testWriterDictIsUsed(t:stdgo._internal.testing.Testing.T_):Void {
        _internal.compress.zlib.Zlib.testWriterDictIsUsed(t);
    }
}
