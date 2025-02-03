package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.PP_static_extension) abstract PP(stdgo._internal.encoding.json.Json_PP.PP) from stdgo._internal.encoding.json.Json_PP.PP to stdgo._internal.encoding.json.Json_PP.PP {
    public var t(get, set) : T_;
    function get_t():T_ return this.t;
    function set_t(v:T_):T_ {
        this.t = v;
        return v;
    }
    public var ts(get, set) : Array<T_>;
    function get_ts():Array<T_> return [for (i in this.ts) i];
    function set_ts(v:Array<T_>):Array<T_> {
        this.ts = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_T_.T_>);
        return v;
    }
    public function new(?t:T_, ?ts:Array<T_>) this = new stdgo._internal.encoding.json.Json_PP.PP(t, ([for (i in ts) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_T_.T_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
