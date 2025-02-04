package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10709_static_extension.T_testAnonymousFields___localname___s2_10709_static_extension) class T_testAnonymousFields___localname___s2_10709 {
    @:embedded
    public var myInt2 : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint2_10679.T_testAnonymousFields___localname___MyInt2_10679 = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint2_10679.T_testAnonymousFields___localname___MyInt2_10679);
    @:embedded
    public var _myInt : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_10694.T_testAnonymousFields___localname___myInt_10694 = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_10694.T_testAnonymousFields___localname___myInt_10694);
    public function new(?myInt2:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint2_10679.T_testAnonymousFields___localname___MyInt2_10679, ?_myInt:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_10694.T_testAnonymousFields___localname___myInt_10694) {
        if (myInt2 != null) this.myInt2 = myInt2;
        if (_myInt != null) this._myInt = _myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___s2_10709(myInt2, _myInt);
    }
}
