package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_s8_static_extension.S8_static_extension) class S8 {
    @:embedded
    public var s9 : stdgo._internal.encoding.json.Json_s9.S9 = ({} : stdgo._internal.encoding.json.Json_s9.S9);
    public function new(?s9:stdgo._internal.encoding.json.Json_s9.S9) {
        if (s9 != null) this.s9 = s9;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S8(s9);
    }
}
