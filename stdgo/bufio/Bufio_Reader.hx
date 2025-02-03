package stdgo.bufio;
@:structInit @:using(stdgo.bufio.Bufio.Reader_static_extension) abstract Reader(stdgo._internal.bufio.Bufio_Reader.Reader) from stdgo._internal.bufio.Bufio_Reader.Reader to stdgo._internal.bufio.Bufio_Reader.Reader {
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _rd(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__rd():stdgo._internal.io.Io_Reader.Reader return this._rd;
    function set__rd(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._rd = v;
        return v;
    }
    public var _r(get, set) : StdTypes.Int;
    function get__r():StdTypes.Int return this._r;
    function set__r(v:StdTypes.Int):StdTypes.Int {
        this._r = (v : stdgo.GoInt);
        return v;
    }
    public var _w(get, set) : StdTypes.Int;
    function get__w():StdTypes.Int return this._w;
    function set__w(v:StdTypes.Int):StdTypes.Int {
        this._w = (v : stdgo.GoInt);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _lastByte(get, set) : StdTypes.Int;
    function get__lastByte():StdTypes.Int return this._lastByte;
    function set__lastByte(v:StdTypes.Int):StdTypes.Int {
        this._lastByte = (v : stdgo.GoInt);
        return v;
    }
    public var _lastRuneSize(get, set) : StdTypes.Int;
    function get__lastRuneSize():StdTypes.Int return this._lastRuneSize;
    function set__lastRuneSize(v:StdTypes.Int):StdTypes.Int {
        this._lastRuneSize = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_buf:Array<std.UInt>, ?_rd:stdgo._internal.io.Io_Reader.Reader, ?_r:StdTypes.Int, ?_w:StdTypes.Int, ?_err:stdgo.Error, ?_lastByte:StdTypes.Int, ?_lastRuneSize:StdTypes.Int) this = new stdgo._internal.bufio.Bufio_Reader.Reader(([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _rd, (_r : stdgo.GoInt), (_w : stdgo.GoInt), (_err : stdgo.Error), (_lastByte : stdgo.GoInt), (_lastRuneSize : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
