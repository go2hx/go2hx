package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outu8_17689_static_extension) abstract T_testOverflow___localname___outu8_17689(stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689) from stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689 to stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689 {
    public var maxu(get, set) : std.UInt;
    function get_maxu():std.UInt return this.maxu;
    function set_maxu(v:std.UInt):std.UInt {
        this.maxu = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?maxu:std.UInt) this = new stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689((maxu : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
