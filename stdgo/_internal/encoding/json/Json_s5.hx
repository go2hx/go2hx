package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_s5_static_extension.S5_static_extension) class S5 {
    @:embedded
    public var s6 : stdgo._internal.encoding.json.Json_s6.S6 = ({} : stdgo._internal.encoding.json.Json_s6.S6);
    @:embedded
    public var s7 : stdgo._internal.encoding.json.Json_s7.S7 = ({} : stdgo._internal.encoding.json.Json_s7.S7);
    @:embedded
    public var s8 : stdgo._internal.encoding.json.Json_s8.S8 = ({} : stdgo._internal.encoding.json.Json_s8.S8);
    public function new(?s6:stdgo._internal.encoding.json.Json_s6.S6, ?s7:stdgo._internal.encoding.json.Json_s7.S7, ?s8:stdgo._internal.encoding.json.Json_s8.S8) {
        if (s6 != null) this.s6 = s6;
        if (s7 != null) this.s7 = s7;
        if (s8 != null) this.s8 = s8;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S5(s6, s7, s8);
    }
}
