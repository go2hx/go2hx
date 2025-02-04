package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t1_13836_static_extension.T_testEndToEnd___localname___T1_13836_static_extension) class T_testEndToEnd___localname___T1_13836 {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoInt = 0;
    public var c : stdgo.GoInt = 0;
    public var m : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>);
    public var m2 : stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794> = (null : stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794>);
    public var mstring : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var mintptr : stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>);
    public var mcomp : stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128> = (null : stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>);
    public var marr : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>> = (null : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>);
    public var emptyMap : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var n : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = new stdgo.GoArray<stdgo.GoFloat64>(3, 3).__setNumber32__();
    public var strs : stdgo.Ref<stdgo.GoArray<stdgo.GoString>> = new stdgo.GoArray<stdgo.GoString>(2, 2).__setString__();
    public var int64s : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>);
    public var rI : stdgo.GoComplex64 = new stdgo.GoComplex64(0, 0);
    public var s : stdgo.GoString = "";
    public var y : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var t : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762>);
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoInt, ?c:stdgo.GoInt, ?m:stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>, ?m2:stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t3_13794.T_testEndToEnd___localname___T3_13794>, ?mstring:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?mintptr:stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>, ?mcomp:stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>, ?marr:stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>, ?emptyMap:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?n:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>, ?strs:stdgo.Ref<stdgo.GoArray<stdgo.GoString>>, ?int64s:stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>, ?rI:stdgo.GoComplex64, ?s:stdgo.GoString, ?y:stdgo.Slice<stdgo.GoUInt8>, ?t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testendtoend___localname___t2_13762.T_testEndToEnd___localname___T2_13762>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (m != null) this.m = m;
        if (m2 != null) this.m2 = m2;
        if (mstring != null) this.mstring = mstring;
        if (mintptr != null) this.mintptr = mintptr;
        if (mcomp != null) this.mcomp = mcomp;
        if (marr != null) this.marr = marr;
        if (emptyMap != null) this.emptyMap = emptyMap;
        if (n != null) this.n = n;
        if (strs != null) this.strs = strs;
        if (int64s != null) this.int64s = int64s;
        if (rI != null) this.rI = rI;
        if (s != null) this.s = s;
        if (y != null) this.y = y;
        if (t != null) this.t = t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEndToEnd___localname___T1_13836(
a,
b,
c,
m,
m2,
mstring,
mintptr,
mcomp,
marr,
emptyMap,
n,
strs,
int64s,
rI,
s,
y,
t);
    }
}
