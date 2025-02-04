package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_w_static_extension.W_static_extension) class W {
    public var s : stdgo._internal.encoding.json.Json_ss.SS = (("" : stdgo.GoString) : stdgo._internal.encoding.json.Json_ss.SS);
    public function new(?s:stdgo._internal.encoding.json.Json_ss.SS) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new W(s);
    }
}
