package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573_static_extension.T_testMarshalRawMessageValue___localname___T2_23573_static_extension) class T_testMarshalRawMessageValue___localname___T2_23573 {
    @:tag("`json:\",omitempty\"`")
    public var m : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
    public function new(?m:stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>) {
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalRawMessageValue___localname___T2_23573(m);
    }
}
