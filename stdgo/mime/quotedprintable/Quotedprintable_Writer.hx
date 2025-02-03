package stdgo.mime.quotedprintable;
@:structInit @:using(stdgo.mime.quotedprintable.Quotedprintable.Writer_static_extension) abstract Writer(stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer) from stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer to stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer {
    public var binary(get, set) : Bool;
    function get_binary():Bool return this.binary;
    function set_binary(v:Bool):Bool {
        this.binary = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _i(get, set) : StdTypes.Int;
    function get__i():StdTypes.Int return this._i;
    function set__i(v:StdTypes.Int):StdTypes.Int {
        this._i = (v : stdgo.GoInt);
        return v;
    }
    public var _line(get, set) : haxe.ds.Vector<std.UInt>;
    function get__line():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._line) i]);
    function set__line(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._line = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _cr(get, set) : Bool;
    function get__cr():Bool return this._cr;
    function set__cr(v:Bool):Bool {
        this._cr = v;
        return v;
    }
    public function new(?binary:Bool, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_i:StdTypes.Int, ?_line:haxe.ds.Vector<std.UInt>, ?_cr:Bool) this = new stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer(binary, _w, (_i : stdgo.GoInt), ([for (i in _line) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), _cr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
