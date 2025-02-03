package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outu32_18249_static_extension) abstract T_testOverflow___localname___outu32_18249(stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249) from stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249 to stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249 {
    public var maxu(get, set) : std.UInt;
    function get_maxu():std.UInt return this.maxu;
    function set_maxu(v:std.UInt):std.UInt {
        this.maxu = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?maxu:std.UInt) this = new stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249((maxu : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
