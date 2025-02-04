package stdgo._internal.internal.zstd;
@:structInit @:using(stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry_static_extension.T_fseBaselineEntry_static_extension) class T_fseBaselineEntry {
    public var _baseline : stdgo.GoUInt32 = 0;
    public var _basebits : stdgo.GoUInt8 = 0;
    public var _bits : stdgo.GoUInt8 = 0;
    public var _base : stdgo.GoUInt16 = 0;
    public function new(?_baseline:stdgo.GoUInt32, ?_basebits:stdgo.GoUInt8, ?_bits:stdgo.GoUInt8, ?_base:stdgo.GoUInt16) {
        if (_baseline != null) this._baseline = _baseline;
        if (_basebits != null) this._basebits = _basebits;
        if (_bits != null) this._bits = _bits;
        if (_base != null) this._base = _base;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fseBaselineEntry(_baseline, _basebits, _bits, _base);
    }
}
