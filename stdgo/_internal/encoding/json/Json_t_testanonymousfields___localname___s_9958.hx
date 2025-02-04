package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9958_static_extension.T_testAnonymousFields___localname___S_9958_static_extension) class T_testAnonymousFields___localname___S_9958 {
    @:embedded
    public var _s1 : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906 = ({} : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906);
    @:embedded
    public var s2 : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_9932.T_testAnonymousFields___localname___S2_9932 = ({} : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_9932.T_testAnonymousFields___localname___S2_9932);
    public function new(?_s1:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906, ?s2:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_9932.T_testAnonymousFields___localname___S2_9932) {
        if (_s1 != null) this._s1 = _s1;
        if (s2 != null) this.s2 = s2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_9958(_s1, s2);
    }
}
