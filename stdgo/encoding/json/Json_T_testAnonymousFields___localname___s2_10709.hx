package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___s2_10709_static_extension) abstract T_testAnonymousFields___localname___s2_10709(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709 {
    public var myInt2(get, set) : T_testAnonymousFields___localname___MyInt2_10679;
    function get_myInt2():T_testAnonymousFields___localname___MyInt2_10679 return this.myInt2;
    function set_myInt2(v:T_testAnonymousFields___localname___MyInt2_10679):T_testAnonymousFields___localname___MyInt2_10679 {
        this.myInt2 = v;
        return v;
    }
    public var _myInt(get, set) : T_testAnonymousFields___localname___myInt_10694;
    function get__myInt():T_testAnonymousFields___localname___myInt_10694 return this._myInt;
    function set__myInt(v:T_testAnonymousFields___localname___myInt_10694):T_testAnonymousFields___localname___myInt_10694 {
        this._myInt = v;
        return v;
    }
    public function new(?myInt2:T_testAnonymousFields___localname___MyInt2_10679, ?_myInt:T_testAnonymousFields___localname___myInt_10694) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709(myInt2, _myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
