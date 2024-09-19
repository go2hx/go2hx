package stdgo._internal.encoding.json;
@:structInit class W {
    public var s : stdgo._internal.encoding.json.Json_SS.SS = (("" : stdgo.GoString) : stdgo._internal.encoding.json.Json_SS.SS);
    public function new(?s:stdgo._internal.encoding.json.Json_SS.SS) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new W(s);
    }
}
