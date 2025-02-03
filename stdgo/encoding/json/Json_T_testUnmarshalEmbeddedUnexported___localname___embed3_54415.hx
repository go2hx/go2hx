package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___embed3_54415(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 {
    public var q(get, set) : haxe.Int64;
    function get_q():haxe.Int64 return this.q;
    function set_q(v:haxe.Int64):haxe.Int64 {
        this.q = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?q:haxe.Int64) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415((q : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
