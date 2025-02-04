package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_pp_static_extension.PP_static_extension) class PP {
    public var t : stdgo._internal.encoding.json.Json_t_.T_ = ({} : stdgo._internal.encoding.json.Json_t_.T_);
    public var ts : stdgo.Slice<stdgo._internal.encoding.json.Json_t_.T_> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_t_.T_>);
    public function new(?t:stdgo._internal.encoding.json.Json_t_.T_, ?ts:stdgo.Slice<stdgo._internal.encoding.json.Json_t_.T_>) {
        if (t != null) this.t = t;
        if (ts != null) this.ts = ts;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PP(t, ts);
    }
}
