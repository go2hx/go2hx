package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_wrongStringTest_static_extension) abstract T_wrongStringTest(stdgo._internal.encoding.json.Json_T_wrongStringTest.T_wrongStringTest) from stdgo._internal.encoding.json.Json_T_wrongStringTest.T_wrongStringTest to stdgo._internal.encoding.json.Json_T_wrongStringTest.T_wrongStringTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = (v : stdgo.GoString);
        return v;
    }
    public function new(?_in:String, ?_err:String) this = new stdgo._internal.encoding.json.Json_T_wrongStringTest.T_wrongStringTest((_in : stdgo.GoString), (_err : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
