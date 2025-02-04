package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917_static_extension.T_testDecodeErrorMultipleTypes___localname___Test_26917_static_extension) class T_testDecodeErrorMultipleTypes___localname___Test_26917 {
    public var a : stdgo.GoString = "";
    public var b : stdgo.GoInt = 0;
    public function new(?a:stdgo.GoString, ?b:stdgo.GoInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testDecodeErrorMultipleTypes___localname___Test_26917(a, b);
    }
}
