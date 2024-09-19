package _internal.encoding.json_test;
@:structInit class T_exampleRawMessage_unmarshal___localname___Color_3769 {
    public var space : stdgo.GoString = "";
    public var point : stdgo._internal.encoding.json.Json_RawMessage.RawMessage = new stdgo._internal.encoding.json.Json_RawMessage.RawMessage(0, 0);
    public function new(?space:stdgo.GoString, ?point:stdgo._internal.encoding.json.Json_RawMessage.RawMessage) {
        if (space != null) this.space = space;
        if (point != null) this.point = point;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleRawMessage_unmarshal___localname___Color_3769(space, point);
    }
}
