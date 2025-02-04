package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_s11_static_extension.S11_static_extension) class S11 {
    @:embedded
    public var s6 : stdgo._internal.encoding.json.Json_s6.S6 = ({} : stdgo._internal.encoding.json.Json_s6.S6);
    public function new(?s6:stdgo._internal.encoding.json.Json_s6.S6) {
        if (s6 != null) this.s6 = s6;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S11(s6);
    }
}
