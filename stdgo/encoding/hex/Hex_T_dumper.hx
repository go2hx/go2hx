package stdgo.encoding.hex;
@:structInit @:using(stdgo.encoding.hex.Hex.T_dumper_static_extension) abstract T_dumper(stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper) from stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper to stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _rightChars(get, set) : haxe.ds.Vector<std.UInt>;
    function get__rightChars():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._rightChars) i]);
    function set__rightChars(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._rightChars = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _used(get, set) : StdTypes.Int;
    function get__used():StdTypes.Int return this._used;
    function set__used(v:StdTypes.Int):StdTypes.Int {
        this._used = (v : stdgo.GoInt);
        return v;
    }
    public var _n(get, set) : std.UInt;
    function get__n():std.UInt return this._n;
    function set__n(v:std.UInt):std.UInt {
        this._n = (v : stdgo.GoUInt);
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_rightChars:haxe.ds.Vector<std.UInt>, ?_buf:haxe.ds.Vector<std.UInt>, ?_used:StdTypes.Int, ?_n:std.UInt, ?_closed:Bool) this = new stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper(_w, ([for (i in _rightChars) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_used : stdgo.GoInt), (_n : stdgo.GoUInt), _closed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
