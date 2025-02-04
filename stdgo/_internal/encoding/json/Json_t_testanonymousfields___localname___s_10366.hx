package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10366_static_extension.T_testAnonymousFields___localname___S_10366_static_extension) class T_testAnonymousFields___localname___S_10366 {
    @:embedded
    public var _s1 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314>);
    @:embedded
    public var s2 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10340.T_testAnonymousFields___localname___S2_10340> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10340.T_testAnonymousFields___localname___S2_10340>);
    public function new(?_s1:stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314>, ?s2:stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10340.T_testAnonymousFields___localname___S2_10340>) {
        if (_s1 != null) this._s1 = _s1;
        if (s2 != null) this.s2 = s2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_10366(_s1, s2);
    }
}
