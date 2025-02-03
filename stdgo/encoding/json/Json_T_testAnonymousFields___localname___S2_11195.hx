package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S2_11195_static_extension) abstract T_testAnonymousFields___localname___S2_11195(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_11195.T_testAnonymousFields___localname___S2_11195) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_11195.T_testAnonymousFields___localname___S2_11195 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_11195.T_testAnonymousFields___localname___S2_11195 {
    public var field(get, set) : String;
    function get_field():String return this.field;
    function set_field(v:String):String {
        this.field = (v : stdgo.GoString);
        return v;
    }
    public function new(?field:String) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_11195.T_testAnonymousFields___localname___S2_11195((field : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
