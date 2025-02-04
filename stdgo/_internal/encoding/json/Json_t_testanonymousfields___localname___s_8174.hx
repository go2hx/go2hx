package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8174_static_extension.T_testAnonymousFields___localname___S_8174_static_extension) class T_testAnonymousFields___localname___S_8174 {
    @:embedded
    public var s1 : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8122.T_testAnonymousFields___localname___S1_8122 = ({} : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8122.T_testAnonymousFields___localname___S1_8122);
    @:embedded
    public var s2 : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8148.T_testAnonymousFields___localname___S2_8148 = ({} : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8148.T_testAnonymousFields___localname___S2_8148);
    public function new(?s1:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8122.T_testAnonymousFields___localname___S1_8122, ?s2:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8148.T_testAnonymousFields___localname___S2_8148) {
        if (s1 != null) this.s1 = s1;
        if (s2 != null) this.s2 = s2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_8174(s1, s2);
    }
}
