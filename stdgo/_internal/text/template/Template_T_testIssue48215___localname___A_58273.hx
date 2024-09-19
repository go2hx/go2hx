package stdgo._internal.text.template;
@:structInit class T_testIssue48215___localname___A_58273 {
    public var s : stdgo.GoString = "";
    public function new(?s:stdgo.GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testIssue48215___localname___A_58273(s);
    }
}
