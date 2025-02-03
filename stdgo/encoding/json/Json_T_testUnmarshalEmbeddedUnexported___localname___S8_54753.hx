package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S8_54753_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S8_54753(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var _embed2(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed2_54390;
    function get__embed2():T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 return this._embed2;
    function set__embed2(v:T_testUnmarshalEmbeddedUnexported___localname___embed2_54390):T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
        this._embed2 = v;
        return v;
    }
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:T_testUnmarshalEmbeddedUnexported___localname___embed2_54390, ?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753(_embed1, _embed2, (q : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
