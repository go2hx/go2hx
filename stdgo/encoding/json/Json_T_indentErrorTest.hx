package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_indentErrorTest_static_extension) abstract T_indentErrorTest(stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest) from stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest to stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_in:String, ?_err:stdgo.Error) this = new stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest((_in : stdgo.GoString), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
