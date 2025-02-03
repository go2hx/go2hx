package stdgo.compress.zlib;
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
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _scratch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__scratch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._scratch) i]);
    function set__scratch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._scratch = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.compress.flate.Flate_Reader.Reader, ?_decompressor:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_digest:stdgo._internal.hash.Hash_Hash32.Hash32, ?_err:stdgo.Error, ?_scratch:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.compress.zlib.Zlib_T_reader.T_reader(_r, _decompressor, _digest, (_err : stdgo.Error), ([for (i in _scratch) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
