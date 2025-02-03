package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S1_54465_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S1_54465(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>);
        return v;
    }
    public var r(get, set) : StdTypes.Int;
    function get_r():StdTypes.Int return this.r;
    function set_r(v:StdTypes.Int):StdTypes.Int {
        this.r = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?r:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465((_embed1 : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>), (r : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
