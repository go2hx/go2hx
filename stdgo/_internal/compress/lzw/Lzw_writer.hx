package stdgo._internal.compress.lzw;
@:structInit @:using(stdgo._internal.compress.lzw.Lzw_writer_static_extension.Writer_static_extension) class Writer {
    public var _w : stdgo._internal.compress.lzw.Lzw_t_writer.T_writer = (null : stdgo._internal.compress.lzw.Lzw_t_writer.T_writer);
    public var _order : stdgo._internal.compress.lzw.Lzw_order.Order = ((0 : stdgo.GoInt) : stdgo._internal.compress.lzw.Lzw_order.Order);
    public var _write : (stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer>, stdgo.GoUInt32) -> stdgo.Error = null;
    public var _bits : stdgo.GoUInt32 = 0;
    public var _nBits : stdgo.GoUInt = 0;
    public var _width : stdgo.GoUInt = 0;
    public var _litWidth : stdgo.GoUInt = 0;
    public var _hi : stdgo.GoUInt32 = 0;
    public var _overflow : stdgo.GoUInt32 = 0;
    public var _savedCode : stdgo.GoUInt32 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _table : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(16384, 16384).__setNumber32__();
    public function new(?_w:stdgo._internal.compress.lzw.Lzw_t_writer.T_writer, ?_order:stdgo._internal.compress.lzw.Lzw_order.Order, ?_write:(stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer>, stdgo.GoUInt32) -> stdgo.Error, ?_bits:stdgo.GoUInt32, ?_nBits:stdgo.GoUInt, ?_width:stdgo.GoUInt, ?_litWidth:stdgo.GoUInt, ?_hi:stdgo.GoUInt32, ?_overflow:stdgo.GoUInt32, ?_savedCode:stdgo.GoUInt32, ?_err:stdgo.Error, ?_table:stdgo.GoArray<stdgo.GoUInt32>) {
        if (_w != null) this._w = _w;
        if (_order != null) this._order = _order;
        if (_write != null) this._write = _write;
        if (_bits != null) this._bits = _bits;
        if (_nBits != null) this._nBits = _nBits;
        if (_width != null) this._width = _width;
        if (_litWidth != null) this._litWidth = _litWidth;
        if (_hi != null) this._hi = _hi;
        if (_overflow != null) this._overflow = _overflow;
        if (_savedCode != null) this._savedCode = _savedCode;
        if (_err != null) this._err = _err;
        if (_table != null) this._table = _table;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(
_w,
_order,
_write,
_bits,
_nBits,
_width,
_litWidth,
_hi,
_overflow,
_savedCode,
_err,
_table);
    }
}
