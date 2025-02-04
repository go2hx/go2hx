package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9019_static_extension.T_testAnonymousFields___localname___S_9019_static_extension) class T_testAnonymousFields___localname___S_9019 {
    @:embedded
    public var myInt : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9005.T_testAnonymousFields___localname___MyInt_9005 = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9005.T_testAnonymousFields___localname___MyInt_9005);
    public function new(?myInt:stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9005.T_testAnonymousFields___localname___MyInt_9005) {
        if (myInt != null) this.myInt = myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_9019(myInt);
    }
}
