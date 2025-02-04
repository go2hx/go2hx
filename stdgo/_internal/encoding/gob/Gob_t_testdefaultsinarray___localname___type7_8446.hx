package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testdefaultsinarray___localname___type7_8446_static_extension.T_testDefaultsInArray___localname___Type7_8446_static_extension) class T_testDefaultsInArray___localname___Type7_8446 {
    public var b : stdgo.Slice<Bool> = (null : stdgo.Slice<Bool>);
    public var i : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var s : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var f : stdgo.Slice<stdgo.GoFloat64> = (null : stdgo.Slice<stdgo.GoFloat64>);
    public function new(?b:stdgo.Slice<Bool>, ?i:stdgo.Slice<stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoString>, ?f:stdgo.Slice<stdgo.GoFloat64>) {
        if (b != null) this.b = b;
        if (i != null) this.i = i;
        if (s != null) this.s = s;
        if (f != null) this.f = f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testDefaultsInArray___localname___Type7_8446(b, i, s, f);
    }
}
