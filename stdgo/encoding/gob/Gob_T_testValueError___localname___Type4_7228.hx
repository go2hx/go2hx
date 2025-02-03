package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testValueError___localname___Type4_7228_static_extension) abstract T_testValueError___localname___Type4_7228(stdgo._internal.encoding.gob.Gob_T_testValueError___localname___Type4_7228.T_testValueError___localname___Type4_7228) from stdgo._internal.encoding.gob.Gob_T_testValueError___localname___Type4_7228.T_testValueError___localname___Type4_7228 to stdgo._internal.encoding.gob.Gob_T_testValueError___localname___Type4_7228.T_testValueError___localname___Type4_7228 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T_testValueError___localname___Type4_7228.T_testValueError___localname___Type4_7228((a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
