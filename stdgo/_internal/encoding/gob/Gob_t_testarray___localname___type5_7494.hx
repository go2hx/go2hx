package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testarray___localname___type5_7494_static_extension.T_testArray___localname___Type5_7494_static_extension) class T_testArray___localname___Type5_7494 {
    public var a : stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(3, 3).__setString__();
    public var b : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(3, 3).__setNumber32__();
    public function new(?a:stdgo.GoArray<stdgo.GoString>, ?b:stdgo.GoArray<stdgo.GoUInt8>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testArray___localname___Type5_7494(a, b);
    }
}
