package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___embed2_54390(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = (v : stdgo.GoInt);
        return v;
    }
    public function new(?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390((q : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
