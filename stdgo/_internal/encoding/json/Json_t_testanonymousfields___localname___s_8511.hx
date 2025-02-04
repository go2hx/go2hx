package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8511_static_extension.T_testAnonymousFields___localname___S_8511_static_extension) class T_testAnonymousFields___localname___S_8511 {
    @:embedded
    public var s1 : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8459.T_testAnonymousFields___localname___S1_8459 = ({} : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8459.T_testAnonymousFields___localname___S1_8459);
    @:embedded
    public var s2 : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8485.T_testAnonymousFields___localname___S2_8485 = ({} : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8485.T_testAnonymousFields___localname___S2_8485);
    public var _x : stdgo.GoInt = 0;
    public var x : stdgo.GoInt = 0;
    public function new(?s1:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8459.T_testAnonymousFields___localname___S1_8459, ?s2:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8485.T_testAnonymousFields___localname___S2_8485, ?_x:stdgo.GoInt, ?x:stdgo.GoInt) {
        if (s1 != null) this.s1 = s1;
        if (s2 != null) this.s2 = s2;
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_8511(s1, s2, _x, x);
    }
}
