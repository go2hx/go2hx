package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460_static_extension) abstract T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460(stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460) from stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 to stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460;
    function get_next():T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 return this.next;
    function set_next(v:T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460):T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>);
        return v;
    }
    public function new(?name:String, ?next:T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460) this = new stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460((name : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
