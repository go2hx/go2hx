package stdgo._internal.encoding.json;
@:structInit class T_testMarshalRawMessageValue___localname___T1_23519 {
    @:tag("`json:\",omitempty\"`")
    public var m : stdgo._internal.encoding.json.Json_RawMessage.RawMessage = new stdgo._internal.encoding.json.Json_RawMessage.RawMessage(0, 0);
    public function new(?m:stdgo._internal.encoding.json.Json_RawMessage.RawMessage) {
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalRawMessageValue___localname___T1_23519(m);
    }
}
