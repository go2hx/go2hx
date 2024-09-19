package stdgo._internal.encoding.json;
@:structInit class T_ustructText {
    public var m : stdgo._internal.encoding.json.Json_T_unmarshalerText.T_unmarshalerText = ({} : stdgo._internal.encoding.json.Json_T_unmarshalerText.T_unmarshalerText);
    public function new(?m:stdgo._internal.encoding.json.Json_T_unmarshalerText.T_unmarshalerText) {
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ustructText(m);
    }
}
