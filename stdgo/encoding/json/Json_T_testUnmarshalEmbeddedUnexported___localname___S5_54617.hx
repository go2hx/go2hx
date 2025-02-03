package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S5_54617_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S5_54617(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617 {
    public var _embed3(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed3_54415;
    function get__embed3():T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 return this._embed3;
    function set__embed3(v:T_testUnmarshalEmbeddedUnexported___localname___embed3_54415):T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 {
        this._embed3 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415>);
        return v;
    }
    public var r(get, set) : StdTypes.Int;
    function get_r():StdTypes.Int return this.r;
    function set_r(v:StdTypes.Int):StdTypes.Int {
        this.r = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_embed3:T_testUnmarshalEmbeddedUnexported___localname___embed3_54415, ?r:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617((_embed3 : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415>), (r : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
