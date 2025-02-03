package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9019_static_extension) abstract T_testAnonymousFields___localname___S_9019(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9019.T_testAnonymousFields___localname___S_9019) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9019.T_testAnonymousFields___localname___S_9019 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9019.T_testAnonymousFields___localname___S_9019 {
    public var myInt(get, set) : T_testAnonymousFields___localname___MyInt_9005;
    function get_myInt():T_testAnonymousFields___localname___MyInt_9005 return this.myInt;
    function set_myInt(v:T_testAnonymousFields___localname___MyInt_9005):T_testAnonymousFields___localname___MyInt_9005 {
        this.myInt = v;
        return v;
    }
    public function new(?myInt:T_testAnonymousFields___localname___MyInt_9005) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9019.T_testAnonymousFields___localname___S_9019(myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
