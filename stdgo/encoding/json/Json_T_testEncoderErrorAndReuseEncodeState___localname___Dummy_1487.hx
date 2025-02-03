package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487_static_extension) abstract T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487(stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487) from stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 to stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487;
    function get_next():T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 return this.next;
    function set_next(v:T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487):T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487>);
        return v;
    }
    public function new(?name:String, ?next:T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487) this = new stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487((name : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
