package stdgo.internal.zstd;
@:structInit @:using(stdgo.internal.zstd.Zstd.T_fseEntry_static_extension) abstract T_fseEntry(stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry) from stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry to stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry {
    public var _sym(get, set) : std.UInt;
    function get__sym():std.UInt return this._sym;
    function set__sym(v:std.UInt):std.UInt {
        this._sym = (v : stdgo.GoUInt8);
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
    public function new(?_sym:std.UInt, ?_bits:std.UInt, ?_base:std.UInt) this = new stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry((_sym : stdgo.GoUInt8), (_bits : stdgo.GoUInt8), (_base : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
