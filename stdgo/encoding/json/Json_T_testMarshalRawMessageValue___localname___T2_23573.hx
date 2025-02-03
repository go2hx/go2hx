package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testMarshalRawMessageValue___localname___T2_23573_static_extension) abstract T_testMarshalRawMessageValue___localname___T2_23573(stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T2_23573.T_testMarshalRawMessageValue___localname___T2_23573) from stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T2_23573.T_testMarshalRawMessageValue___localname___T2_23573 to stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T2_23573.T_testMarshalRawMessageValue___localname___T2_23573 {
    public var m(get, set) : RawMessage;
    function get_m():RawMessage return this.m;
    function set_m(v:RawMessage):RawMessage {
        this.m = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        return v;
    }
    public function new(?m:RawMessage) this = new stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T2_23573.T_testMarshalRawMessageValue___localname___T2_23573((m : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
