package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S2_8485_static_extension) abstract T_testAnonymousFields___localname___S2_8485(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485 {
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
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485((_x : stdgo.GoInt), (x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
