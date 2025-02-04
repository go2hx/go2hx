package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s2_54503_static_extension.T_testUnmarshalEmbeddedUnexported___localname___S2_54503_static_extension) class T_testUnmarshalEmbeddedUnexported___localname___S2_54503 {
    @:embedded
    public var _embed1 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>);
    public var q : stdgo.GoInt = 0;
    public function new(?_embed1:stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>, ?q:stdgo.GoInt) {
        if (_embed1 != null) this._embed1 = _embed1;
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported___localname___S2_54503(_embed1, q);
    }
}
