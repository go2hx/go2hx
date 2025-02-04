package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9564_static_extension.T_testAnonymousFields___localname___S_9564_static_extension) class T_testAnonymousFields___localname___S_9564 {
    @:embedded
    public var myInt : stdgo.Pointer<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9550.T_testAnonymousFields___localname___MyInt_9550> = (null : stdgo.Pointer<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9550.T_testAnonymousFields___localname___MyInt_9550>);
    public function new(?myInt:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9550.T_testAnonymousFields___localname___MyInt_9550>) {
        if (myInt != null) this.myInt = myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_9564(myInt);
    }
}
