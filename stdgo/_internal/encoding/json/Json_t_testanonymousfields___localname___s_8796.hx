package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8796_static_extension.T_testAnonymousFields___localname___S_8796_static_extension) class T_testAnonymousFields___localname___S_8796 {
    @:embedded
    public var _myInt : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_8782.T_testAnonymousFields___localname___myInt_8782 = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_8782.T_testAnonymousFields___localname___myInt_8782);
    public function new(?_myInt:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_8782.T_testAnonymousFields___localname___myInt_8782) {
        if (_myInt != null) this._myInt = _myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_8796(_myInt);
    }
}
