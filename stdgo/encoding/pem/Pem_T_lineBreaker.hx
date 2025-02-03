package stdgo.encoding.pem;
@:structInit @:using(stdgo.encoding.pem.Pem.T_lineBreaker_static_extension) abstract T_lineBreaker(stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker) from stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker to stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker {
    public var _line(get, set) : haxe.ds.Vector<std.UInt>;
    function get__line():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._line) i]);
    function set__line(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._line = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _used(get, set) : StdTypes.Int;
    function get__used():StdTypes.Int return this._used;
    function set__used(v:StdTypes.Int):StdTypes.Int {
        this._used = (v : stdgo.GoInt);
        return v;
    }
    public var _out(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__out():stdgo._internal.io.Io_Writer.Writer return this._out;
    function set__out(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._out = v;
        return v;
    }
    public function new(?_line:haxe.ds.Vector<std.UInt>, ?_used:StdTypes.Int, ?_out:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker(([for (i in _line) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_used : stdgo.GoInt), _out);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
