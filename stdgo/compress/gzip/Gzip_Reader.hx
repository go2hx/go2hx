package stdgo.compress.gzip;
@:structInit @:using(stdgo.compress.gzip.Gzip.Reader_static_extension) abstract Reader(stdgo._internal.compress.gzip.Gzip_Reader.Reader) from stdgo._internal.compress.gzip.Gzip_Reader.Reader to stdgo._internal.compress.gzip.Gzip_Reader.Reader {
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
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
    public var _digest(get, set) : std.UInt;
    function get__digest():std.UInt return this._digest;
    function set__digest(v:std.UInt):std.UInt {
        this._digest = (v : stdgo.GoUInt32);
        return v;
    }
    public var _size(get, set) : std.UInt;
    function get__size():std.UInt return this._size;
    function set__size(v:std.UInt):std.UInt {
        this._size = (v : stdgo.GoUInt32);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _multistream(get, set) : Bool;
    function get__multistream():Bool return this._multistream;
    function set__multistream(v:Bool):Bool {
        this._multistream = v;
        return v;
    }
    public function new(?header:Header, ?_r:stdgo._internal.compress.flate.Flate_Reader.Reader, ?_decompressor:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_digest:std.UInt, ?_size:std.UInt, ?_buf:haxe.ds.Vector<std.UInt>, ?_err:stdgo.Error, ?_multistream:Bool) this = new stdgo._internal.compress.gzip.Gzip_Reader.Reader(header, _r, _decompressor, (_digest : stdgo.GoUInt32), (_size : stdgo.GoUInt32), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_err : stdgo.Error), _multistream);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
