package stdgo.bufio;
@:structInit @:using(stdgo.bufio.Bufio.Writer_static_extension) abstract Writer(stdgo._internal.bufio.Bufio_Writer.Writer) from stdgo._internal.bufio.Bufio_Writer.Writer to stdgo._internal.bufio.Bufio_Writer.Writer {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public var _wr(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__wr():stdgo._internal.io.Io_Writer.Writer return this._wr;
    function set__wr(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._wr = v;
        return v;
    }
    public function new(?_err:stdgo.Error, ?_buf:Array<std.UInt>, ?_n:StdTypes.Int, ?_wr:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.bufio.Bufio_Writer.Writer((_err : stdgo.Error), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_n : stdgo.GoInt), _wr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
