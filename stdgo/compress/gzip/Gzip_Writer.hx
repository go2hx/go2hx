package stdgo.compress.gzip;
@:structInit @:using(stdgo.compress.gzip.Gzip.Writer_static_extension) abstract Writer(stdgo._internal.compress.gzip.Gzip_Writer.Writer) from stdgo._internal.compress.gzip.Gzip_Writer.Writer to stdgo._internal.compress.gzip.Gzip_Writer.Writer {
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = (v : stdgo.GoInt);
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public var _compressor(get, set) : stdgo._internal.compress.flate.Flate_Writer.Writer;
    function get__compressor():stdgo._internal.compress.flate.Flate_Writer.Writer return this._compressor;
    function set__compressor(v:stdgo._internal.compress.flate.Flate_Writer.Writer):stdgo._internal.compress.flate.Flate_Writer.Writer {
        this._compressor = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>);
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
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
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
    public function new(?header:Header, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_level:StdTypes.Int, ?_wroteHeader:Bool, ?_compressor:stdgo._internal.compress.flate.Flate_Writer.Writer, ?_digest:std.UInt, ?_size:std.UInt, ?_closed:Bool, ?_buf:haxe.ds.Vector<std.UInt>, ?_err:stdgo.Error) this = new stdgo._internal.compress.gzip.Gzip_Writer.Writer(header, _w, (_level : stdgo.GoInt), _wroteHeader, (_compressor : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>), (_digest : stdgo.GoUInt32), (_size : stdgo.GoUInt32), _closed, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
