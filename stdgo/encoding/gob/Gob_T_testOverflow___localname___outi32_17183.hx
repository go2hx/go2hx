package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testOverflow___localname___outi32_17183_static_extension) abstract T_testOverflow___localname___outi32_17183(stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183) from stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183 to stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183 {
    public var maxi(get, set) : StdTypes.Int;
    function get_maxi():StdTypes.Int return this.maxi;
    function set_maxi(v:StdTypes.Int):StdTypes.Int {
        this.maxi = (v : stdgo.GoInt32);
        return v;
    }
    public var mini(get, set) : StdTypes.Int;
    function get_mini():StdTypes.Int return this.mini;
    function set_mini(v:StdTypes.Int):StdTypes.Int {
        this.mini = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?maxi:StdTypes.Int, ?mini:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183((maxi : stdgo.GoInt32), (mini : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
