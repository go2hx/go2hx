package stdgo.internal.zstd;
@:structInit @:using(stdgo.internal.zstd.Zstd.T_fseBaselineEntry_static_extension) abstract T_fseBaselineEntry(stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry) from stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry to stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry {
    public var _baseline(get, set) : std.UInt;
    function get__baseline():std.UInt return this._baseline;
    function set__baseline(v:std.UInt):std.UInt {
        this._baseline = (v : stdgo.GoUInt32);
        return v;
    }
    public var _basebits(get, set) : std.UInt;
    function get__basebits():std.UInt return this._basebits;
    function set__basebits(v:std.UInt):std.UInt {
        this._basebits = (v : stdgo.GoUInt8);
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = (v : stdgo.GoUInt8);
        return v;
    }
    public var _base(get, set) : std.UInt;
    function get__base():std.UInt return this._base;
    function set__base(v:std.UInt):std.UInt {
        this._base = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?_baseline:std.UInt, ?_basebits:std.UInt, ?_bits:std.UInt, ?_base:std.UInt) this = new stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry((_baseline : stdgo.GoUInt32), (_basebits : stdgo.GoUInt8), (_bits : stdgo.GoUInt8), (_base : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
