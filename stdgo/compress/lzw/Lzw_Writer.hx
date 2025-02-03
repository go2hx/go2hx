package stdgo.compress.lzw;
@:structInit @:using(stdgo.compress.lzw.Lzw.Writer_static_extension) abstract Writer(stdgo._internal.compress.lzw.Lzw_Writer.Writer) from stdgo._internal.compress.lzw.Lzw_Writer.Writer to stdgo._internal.compress.lzw.Lzw_Writer.Writer {
    public var _w(get, set) : T_writer;
    function get__w():T_writer return this._w;
    function set__w(v:T_writer):T_writer {
        this._w = v;
        return v;
    }
    public var _order(get, set) : Order;
    function get__order():Order return this._order;
    function set__order(v:Order):Order {
        this._order = v;
        return v;
    }
    public var _write(get, set) : (stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, stdgo.GoUInt32) -> stdgo.Error;
    function get__write():(stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, stdgo.GoUInt32) -> stdgo.Error return (_0, _1) -> this._write(_0, _1);
    function set__write(v:(stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, stdgo.GoUInt32) -> stdgo.Error):(stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, stdgo.GoUInt32) -> stdgo.Error {
        this._write = v;
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = (v : stdgo.GoUInt32);
        return v;
    }
    public var _nBits(get, set) : std.UInt;
    function get__nBits():std.UInt return this._nBits;
    function set__nBits(v:std.UInt):std.UInt {
        this._nBits = (v : stdgo.GoUInt);
        return v;
    }
    public var _width(get, set) : std.UInt;
    function get__width():std.UInt return this._width;
    function set__width(v:std.UInt):std.UInt {
        this._width = (v : stdgo.GoUInt);
        return v;
    }
    public var _litWidth(get, set) : std.UInt;
    function get__litWidth():std.UInt return this._litWidth;
    function set__litWidth(v:std.UInt):std.UInt {
        this._litWidth = (v : stdgo.GoUInt);
        return v;
    }
    public var _hi(get, set) : std.UInt;
    function get__hi():std.UInt return this._hi;
    function set__hi(v:std.UInt):std.UInt {
        this._hi = (v : stdgo.GoUInt32);
        return v;
    }
    public var _overflow(get, set) : std.UInt;
    function get__overflow():std.UInt return this._overflow;
    function set__overflow(v:std.UInt):std.UInt {
        this._overflow = (v : stdgo.GoUInt32);
        return v;
    }
    public var _savedCode(get, set) : std.UInt;
    function get__savedCode():std.UInt return this._savedCode;
    function set__savedCode(v:std.UInt):std.UInt {
        this._savedCode = (v : stdgo.GoUInt32);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _table(get, set) : haxe.ds.Vector<std.UInt>;
    function get__table():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._table) i]);
    function set__table(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._table = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public function new(?_w:T_writer, ?_order:Order, ?_write:(stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, stdgo.GoUInt32) -> stdgo.Error, ?_bits:std.UInt, ?_nBits:std.UInt, ?_width:std.UInt, ?_litWidth:std.UInt, ?_hi:std.UInt, ?_overflow:std.UInt, ?_savedCode:std.UInt, ?_err:stdgo.Error, ?_table:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.compress.lzw.Lzw_Writer.Writer(
_w,
_order,
_write,
(_bits : stdgo.GoUInt32),
(_nBits : stdgo.GoUInt),
(_width : stdgo.GoUInt),
(_litWidth : stdgo.GoUInt),
(_hi : stdgo.GoUInt32),
(_overflow : stdgo.GoUInt32),
(_savedCode : stdgo.GoUInt32),
(_err : stdgo.Error),
([for (i in _table) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
