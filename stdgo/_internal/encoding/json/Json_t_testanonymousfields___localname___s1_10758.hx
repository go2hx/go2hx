package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10758_static_extension.T_testAnonymousFields___localname___s1_10758_static_extension) class T_testAnonymousFields___localname___s1_10758 {
    @:embedded
    public var myInt1 : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint1_10664.T_testAnonymousFields___localname___MyInt1_10664 = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint1_10664.T_testAnonymousFields___localname___MyInt1_10664);
    @:embedded
    public var _myInt : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_10694.T_testAnonymousFields___localname___myInt_10694 = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_10694.T_testAnonymousFields___localname___myInt_10694);
    @:embedded
    public var _s2 : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709 = ({} : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709);
    public function new(?myInt1:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint1_10664.T_testAnonymousFields___localname___MyInt1_10664, ?_myInt:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_10694.T_testAnonymousFields___localname___myInt_10694, ?_s2:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709) {
        if (myInt1 != null) this.myInt1 = myInt1;
        if (_myInt != null) this._myInt = _myInt;
        if (_s2 != null) this._s2 = _s2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___s1_10758(myInt1, _myInt, _s2);
    }
}
