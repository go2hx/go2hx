package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_W_static_extension.W_static_extension) class W {
    public var s : stdgo._internal.encoding.json.Json_SS.SS = (("" : stdgo.GoString) : stdgo._internal.encoding.json.Json_SS.SS);
    public function new(?s:stdgo._internal.encoding.json.Json_SS.SS) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new W(s);
    }
}
