package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_s13_static_extension.S13_static_extension) class S13 {
    @:embedded
    public var s8 : stdgo._internal.encoding.json.Json_s8.S8 = ({} : stdgo._internal.encoding.json.Json_s8.S8);
    public function new(?s8:stdgo._internal.encoding.json.Json_s8.S8) {
        if (s8 != null) this.s8 = s8;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S13(s8);
    }
}
