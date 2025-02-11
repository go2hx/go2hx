package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519_static_extension.T_testMarshalRawMessageValue___localname___T1_23519_static_extension) class T_testMarshalRawMessageValue___localname___T1_23519 {
    @:tag("`json:\",omitempty\"`")
    public var m : stdgo._internal.encoding.json.Json_rawmessage.RawMessage = (new stdgo._internal.encoding.json.Json_rawmessage.RawMessage(0, 0) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage);
    public function new(?m:stdgo._internal.encoding.json.Json_rawmessage.RawMessage) {
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalRawMessageValue___localname___T1_23519(m);
    }
}
