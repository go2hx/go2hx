package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10811_static_extension.T_testAnonymousFields___localname___S_10811_static_extension) class T_testAnonymousFields___localname___S_10811 {
    @:embedded
    public var _s1 : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758 = ({} : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758);
    @:embedded
    public var _myInt : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_10694.T_testAnonymousFields___localname___myInt_10694 = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_10694.T_testAnonymousFields___localname___myInt_10694);
    public function new(?_s1:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758, ?_myInt:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_10694.T_testAnonymousFields___localname___myInt_10694) {
        if (_s1 != null) this._s1 = _s1;
        if (_myInt != null) this._myInt = _myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_10811(_s1, _myInt);
    }
}
