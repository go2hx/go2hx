package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_11225_static_extension.T_testAnonymousFields___localname___S_11225_static_extension) class T_testAnonymousFields___localname___S_11225 {
    @:embedded
    public var s2 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_11195.T_testAnonymousFields___localname___S2_11195> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_11195.T_testAnonymousFields___localname___S2_11195>);
    public function new(?s2:stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_11195.T_testAnonymousFields___localname___S2_11195>) {
        if (s2 != null) this.s2 = s2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_11225(s2);
    }
}
