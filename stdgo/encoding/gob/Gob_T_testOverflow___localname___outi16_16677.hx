package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outi16_16677_static_extension) abstract T_testOverflow___localname___outi16_16677(stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677) from stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677 to stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677 {
    public var maxi(get, set) : StdTypes.Int;
    function get_maxi():StdTypes.Int return this.maxi;
    function set_maxi(v:StdTypes.Int):StdTypes.Int {
        this.maxi = (v : stdgo.GoInt16);
        return v;
    }
    public var mini(get, set) : StdTypes.Int;
    function get_mini():StdTypes.Int return this.mini;
    function set_mini(v:StdTypes.Int):StdTypes.Int {
        this.mini = (v : stdgo.GoInt16);
        return v;
    }
    public function new(?maxi:StdTypes.Int, ?mini:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677((maxi : stdgo.GoInt16), (mini : stdgo.GoInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
