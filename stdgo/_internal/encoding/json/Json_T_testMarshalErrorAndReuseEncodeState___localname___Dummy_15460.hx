package stdgo._internal.encoding.json;
@:structInit class T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 {
    public var name : stdgo.GoString = "";
    public var next : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>);
    public function new(?name:stdgo.GoString, ?next:stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>) {
        if (name != null) this.name = name;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460(name, next);
    }
}
