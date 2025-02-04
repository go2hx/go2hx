package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_s10_static_extension.S10_static_extension) class S10 {
    @:embedded
    public var s11 : stdgo._internal.encoding.json.Json_s11.S11 = ({} : stdgo._internal.encoding.json.Json_s11.S11);
    @:embedded
    public var s12 : stdgo._internal.encoding.json.Json_s12.S12 = ({} : stdgo._internal.encoding.json.Json_s12.S12);
    @:embedded
    public var s13 : stdgo._internal.encoding.json.Json_s13.S13 = ({} : stdgo._internal.encoding.json.Json_s13.S13);
    public function new(?s11:stdgo._internal.encoding.json.Json_s11.S11, ?s12:stdgo._internal.encoding.json.Json_s12.S12, ?s13:stdgo._internal.encoding.json.Json_s13.S13) {
        if (s11 != null) this.s11 = s11;
        if (s12 != null) this.s12 = s12;
        if (s13 != null) this.s13 = s13;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S10(s11, s12, s13);
    }
}
