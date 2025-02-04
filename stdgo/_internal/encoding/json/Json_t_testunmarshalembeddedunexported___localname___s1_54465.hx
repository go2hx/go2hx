package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s1_54465_static_extension.T_testUnmarshalEmbeddedUnexported___localname___S1_54465_static_extension) class T_testUnmarshalEmbeddedUnexported___localname___S1_54465 {
    @:embedded
    public var _embed1 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>);
    public var r : stdgo.GoInt = 0;
    public function new(?_embed1:stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>, ?r:stdgo.GoInt) {
        if (_embed1 != null) this._embed1 = _embed1;
        if (r != null) this.r = r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported___localname___S1_54465(_embed1, r);
    }
}
