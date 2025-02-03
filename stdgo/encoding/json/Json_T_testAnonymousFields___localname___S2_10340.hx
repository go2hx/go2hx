package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S2_10340_static_extension) abstract T_testAnonymousFields___localname___S2_10340(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_10340.T_testAnonymousFields___localname___S2_10340) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_10340.T_testAnonymousFields___localname___S2_10340 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_10340.T_testAnonymousFields___localname___S2_10340 {
    public var _y(get, set) : StdTypes.Int;
    function get__y():StdTypes.Int return this._y;
    function set__y(v:StdTypes.Int):StdTypes.Int {
        this._y = (v : stdgo.GoInt);
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_y:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_10340.T_testAnonymousFields___localname___S2_10340((_y : stdgo.GoInt), (y : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
