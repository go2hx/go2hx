package stdgo.net.http.internal;
@:structInit @:using(stdgo.net.http.internal.Internal.T_chunkedReader_static_extension) abstract T_chunkedReader(stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader) from stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader to stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader {
    public var _r(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__r():stdgo._internal.bufio.Bufio_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return v;
    }
    public var _n(get, set) : haxe.UInt64;
    function get__n():haxe.UInt64 return this._n;
    function set__n(v:haxe.UInt64):haxe.UInt64 {
        this._n = (v : stdgo.GoUInt64);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _checkEnd(get, set) : Bool;
    function get__checkEnd():Bool return this._checkEnd;
    function set__checkEnd(v:Bool):Bool {
        this._checkEnd = v;
        return v;
    }
    public function new(?_r:stdgo._internal.bufio.Bufio_Reader.Reader, ?_n:haxe.UInt64, ?_err:stdgo.Error, ?_buf:haxe.ds.Vector<std.UInt>, ?_checkEnd:Bool) this = new stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader((_r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>), (_n : stdgo.GoUInt64), (_err : stdgo.Error), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), _checkEnd);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
