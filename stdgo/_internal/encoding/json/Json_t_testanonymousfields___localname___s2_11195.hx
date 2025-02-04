package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_11195_static_extension.T_testAnonymousFields___localname___S2_11195_static_extension) class T_testAnonymousFields___localname___S2_11195 {
    public var field : stdgo.GoString = "";
    public function new(?field:stdgo.GoString) {
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S2_11195(field);
    }
}
