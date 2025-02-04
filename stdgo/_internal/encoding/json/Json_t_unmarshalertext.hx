package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_unmarshalertext_static_extension.T_unmarshalerText_static_extension) class T_unmarshalerText {
    public var a : stdgo.GoString = "";
    public var b : stdgo.GoString = "";
    public function new(?a:stdgo.GoString, ?b:stdgo.GoString) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshalerText(a, b);
    }
}
