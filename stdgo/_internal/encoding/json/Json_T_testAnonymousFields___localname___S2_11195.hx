package stdgo._internal.encoding.json;
@:structInit class T_testAnonymousFields___localname___S2_11195 {
    public var field : stdgo.GoString = "";
    public function new(?field:stdgo.GoString) {
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S2_11195(field);
    }
}
