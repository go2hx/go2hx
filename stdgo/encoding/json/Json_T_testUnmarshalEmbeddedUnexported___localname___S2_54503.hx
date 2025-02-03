package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S2_54503_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S2_54503(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>);
        return v;
    }
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503((_embed1 : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>), (q : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
