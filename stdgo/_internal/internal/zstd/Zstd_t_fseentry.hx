package stdgo._internal.internal.zstd;
@:structInit @:using(stdgo._internal.internal.zstd.Zstd_t_fseentry_static_extension.T_fseEntry_static_extension) class T_fseEntry {
    public var _sym : stdgo.GoUInt8 = 0;
    public var _bits : stdgo.GoUInt8 = 0;
    public var _base : stdgo.GoUInt16 = 0;
    public function new(?_sym:stdgo.GoUInt8, ?_bits:stdgo.GoUInt8, ?_base:stdgo.GoUInt16) {
        if (_sym != null) this._sym = _sym;
        if (_bits != null) this._bits = _bits;
        if (_base != null) this._base = _base;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fseEntry(_sym, _bits, _base);
    }
}
