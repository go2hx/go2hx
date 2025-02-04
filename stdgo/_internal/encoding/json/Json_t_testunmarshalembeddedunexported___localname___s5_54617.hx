package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s5_54617_static_extension.T_testUnmarshalEmbeddedUnexported___localname___S5_54617_static_extension) class T_testUnmarshalEmbeddedUnexported___localname___S5_54617 {
    @:embedded
    public var _embed3 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415>);
    public var r : stdgo.GoInt = 0;
    public function new(?_embed3:stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415>, ?r:stdgo.GoInt) {
        if (_embed3 != null) this._embed3 = _embed3;
        if (r != null) this.r = r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported___localname___S5_54617(_embed3, r);
    }
}
