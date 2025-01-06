package stdgo._internal.encoding.gob;
@:structInit class T_testArray___localname___Type6_7544 {
    public var a : stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(2, 2).__setString__();
    public function new(?a:stdgo.GoArray<stdgo.GoString>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testArray___localname___Type6_7544(a);
    }
}
