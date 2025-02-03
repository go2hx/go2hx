package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testMarshalRawMessageValue___localname___T1_23519_static_extension) abstract T_testMarshalRawMessageValue___localname___T1_23519(stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T1_23519.T_testMarshalRawMessageValue___localname___T1_23519) from stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T1_23519.T_testMarshalRawMessageValue___localname___T1_23519 to stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T1_23519.T_testMarshalRawMessageValue___localname___T1_23519 {
    public var m(get, set) : RawMessage;
    function get_m():RawMessage return this.m;
    function set_m(v:RawMessage):RawMessage {
        this.m = v;
        return v;
    }
    public function new(?m:RawMessage) this = new stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T1_23519.T_testMarshalRawMessageValue___localname___T1_23519(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
