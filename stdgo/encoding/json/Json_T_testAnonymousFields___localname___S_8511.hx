package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_8511_static_extension) abstract T_testAnonymousFields___localname___S_8511(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511.T_testAnonymousFields___localname___S_8511) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511.T_testAnonymousFields___localname___S_8511 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511.T_testAnonymousFields___localname___S_8511 {
    public var s1(get, set) : T_testAnonymousFields___localname___S1_8459;
    function get_s1():T_testAnonymousFields___localname___S1_8459 return this.s1;
    function set_s1(v:T_testAnonymousFields___localname___S1_8459):T_testAnonymousFields___localname___S1_8459 {
        this.s1 = v;
        return v;
    }
    public var s2(get, set) : T_testAnonymousFields___localname___S2_8485;
    function get_s2():T_testAnonymousFields___localname___S2_8485 return this.s2;
    function set_s2(v:T_testAnonymousFields___localname___S2_8485):T_testAnonymousFields___localname___S2_8485 {
        this.s2 = v;
        return v;
    }
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?s1:T_testAnonymousFields___localname___S1_8459, ?s2:T_testAnonymousFields___localname___S2_8485, ?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511.T_testAnonymousFields___localname___S_8511(s1, s2, (_x : stdgo.GoInt), (x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
