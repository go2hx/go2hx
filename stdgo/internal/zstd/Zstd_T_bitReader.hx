package stdgo.internal.zstd;
@:structInit @:using(stdgo.internal.zstd.Zstd.T_bitReader_static_extension) abstract T_bitReader(stdgo._internal.internal.zstd.Zstd_T_bitReader.T_bitReader) from stdgo._internal.internal.zstd.Zstd_T_bitReader.T_bitReader to stdgo._internal.internal.zstd.Zstd_T_bitReader.T_bitReader {
    public var _r(get, set) : Reader;
    function get__r():Reader return this._r;
    function set__r(v:Reader):Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        return v;
    }
    public var _data(get, set) : T_block;
    function get__data():T_block return this._data;
    function set__data(v:T_block):T_block {
        this._data = v;
        return v;
    }
    public var _off(get, set) : std.UInt;
    function get__off():std.UInt return this._off;
    function set__off(v:std.UInt):std.UInt {
        this._off = (v : stdgo.GoUInt32);
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = (v : stdgo.GoUInt32);
        return v;
    }
    public var _cnt(get, set) : std.UInt;
    function get__cnt():std.UInt return this._cnt;
    function set__cnt(v:std.UInt):std.UInt {
        this._cnt = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_r:Reader, ?_data:T_block, ?_off:std.UInt, ?_bits:std.UInt, ?_cnt:std.UInt) this = new stdgo._internal.internal.zstd.Zstd_T_bitReader.T_bitReader((_r : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>), _data, (_off : stdgo.GoUInt32), (_bits : stdgo.GoUInt32), (_cnt : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
