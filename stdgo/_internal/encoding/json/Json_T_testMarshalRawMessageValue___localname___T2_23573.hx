package stdgo._internal.encoding.json;
@:structInit class T_testMarshalRawMessageValue___localname___T2_23573 {
    @:tag("`json:\",omitempty\"`")
    public var m : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
    public function new(?m:stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>) {
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalRawMessageValue___localname___T2_23573(m);
    }
}
