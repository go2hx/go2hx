package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testslice___localname___type3_7005_static_extension.T_testSlice___localname___Type3_7005_static_extension) class T_testSlice___localname___Type3_7005 {
    public var a : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?a:stdgo.Slice<stdgo.GoString>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSlice___localname___Type3_7005(a);
    }
}
