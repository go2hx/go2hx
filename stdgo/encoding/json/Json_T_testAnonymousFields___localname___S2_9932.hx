package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S2_9932_static_extension) abstract T_testAnonymousFields___localname___S2_9932(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_9932.T_testAnonymousFields___localname___S2_9932) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_9932.T_testAnonymousFields___localname___S2_9932 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_9932.T_testAnonymousFields___localname___S2_9932 {
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
    public function new(?_y:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_9932.T_testAnonymousFields___localname___S2_9932((_y : stdgo.GoInt), (y : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
