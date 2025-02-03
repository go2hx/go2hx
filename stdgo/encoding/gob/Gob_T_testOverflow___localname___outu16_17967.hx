package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outu16_17967_static_extension) abstract T_testOverflow___localname___outu16_17967(stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967) from stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967 to stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967 {
    public var maxu(get, set) : std.UInt;
    function get_maxu():std.UInt return this.maxu;
    function set_maxu(v:std.UInt):std.UInt {
        this.maxu = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?maxu:std.UInt) this = new stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967((maxu : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
