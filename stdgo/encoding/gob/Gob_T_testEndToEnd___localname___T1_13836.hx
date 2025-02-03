package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testEndToEnd___localname___T1_13836_static_extension) abstract T_testEndToEnd___localname___T1_13836(stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T1_13836.T_testEndToEnd___localname___T1_13836) from stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T1_13836.T_testEndToEnd___localname___T1_13836 to stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T1_13836.T_testEndToEnd___localname___T1_13836 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = (v : stdgo.GoInt);
        return v;
    }
    public var c(get, set) : StdTypes.Int;
    function get_c():StdTypes.Int return this.c;
    function set_c(v:StdTypes.Int):StdTypes.Int {
        this.c = (v : stdgo.GoInt);
        return v;
    }
    public var m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>;
    function get_m():stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>> return this.m;
    function set_m(v:stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>):stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>> {
        this.m = (v : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>);
        return v;
    }
    public var m2(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794>;
    function get_m2():stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794> return this.m2;
    function set_m2(v:stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794>):stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794> {
        this.m2 = (v : stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794>);
        return v;
    }
    public var mstring(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_mstring():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.mstring;
    function set_mstring(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.mstring = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var mintptr(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>;
    function get_mintptr():stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>> return this.mintptr;
    function set_mintptr(v:stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>):stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>> {
        this.mintptr = (v : stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>);
        return v;
    }
    public var mcomp(get, set) : stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>;
    function get_mcomp():stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128> return this.mcomp;
    function set_mcomp(v:stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>):stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128> {
        this.mcomp = (v : stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>);
        return v;
    }
    public var marr(get, set) : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>;
    function get_marr():stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>> return this.marr;
    function set_marr(v:stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>):stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>> {
        this.marr = (v : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>);
        return v;
    }
    public var emptyMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_emptyMap():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.emptyMap;
    function set_emptyMap(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.emptyMap = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public var n(get, set) : haxe.ds.Vector<StdTypes.Float>;
    function get_n():haxe.ds.Vector<StdTypes.Float> return this.n;
    function set_n(v:haxe.ds.Vector<StdTypes.Float>):haxe.ds.Vector<StdTypes.Float> {
        this.n = (v : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        return v;
    }
    public var strs(get, set) : haxe.ds.Vector<String>;
    function get_strs():haxe.ds.Vector<String> return this.strs;
    function set_strs(v:haxe.ds.Vector<String>):haxe.ds.Vector<String> {
        this.strs = (v : stdgo.Ref<stdgo.GoArray<stdgo.GoString>>);
        return v;
    }
    public var int64s(get, set) : Array<haxe.Int64>;
    function get_int64s():Array<haxe.Int64> return this.int64s;
    function set_int64s(v:Array<haxe.Int64>):Array<haxe.Int64> {
        this.int64s = (v : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>);
        return v;
    }
    public var rI(get, set) : stdgo.GoComplex64;
    function get_rI():stdgo.GoComplex64 return this.rI;
    function set_rI(v:stdgo.GoComplex64):stdgo.GoComplex64 {
        this.rI = (v : stdgo.GoComplex64);
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public var y(get, set) : Array<std.UInt>;
    function get_y():Array<std.UInt> return [for (i in this.y) i];
    function set_y(v:Array<std.UInt>):Array<std.UInt> {
        this.y = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var t(get, set) : T_testEndToEnd___localname___T2_13762;
    function get_t():T_testEndToEnd___localname___T2_13762 return this.t;
    function set_t(v:T_testEndToEnd___localname___T2_13762):T_testEndToEnd___localname___T2_13762 {
        this.t = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T2_13762.T_testEndToEnd___localname___T2_13762>);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:StdTypes.Int, ?m:stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>, ?m2:stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794>, ?mstring:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?mintptr:stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>, ?mcomp:stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>, ?marr:stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>, ?emptyMap:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?n:haxe.ds.Vector<StdTypes.Float>, ?strs:haxe.ds.Vector<String>, ?int64s:Array<haxe.Int64>, ?rI:stdgo.GoComplex64, ?s:String, ?y:Array<std.UInt>, ?t:T_testEndToEnd___localname___T2_13762) this = new stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T1_13836.T_testEndToEnd___localname___T1_13836(
(a : stdgo.GoInt),
(b : stdgo.GoInt),
(c : stdgo.GoInt),
(m : stdgo.GoMap<stdgo.GoString, stdgo.Pointer<stdgo.GoFloat64>>),
(m2 : stdgo.GoMap<stdgo.GoInt, stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794>),
(mstring : stdgo.GoMap<stdgo.GoString, stdgo.GoString>),
(mintptr : stdgo.GoMap<stdgo.GoInt, stdgo.Pointer<stdgo.GoInt>>),
(mcomp : stdgo.GoMap<stdgo.GoComplex128, stdgo.GoComplex128>),
(marr : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.Pointer<stdgo.GoFloat64>>>),
(emptyMap : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>),
(n : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>),
(strs : stdgo.Ref<stdgo.GoArray<stdgo.GoString>>),
(int64s : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>),
(rI : stdgo.GoComplex64),
(s : stdgo.GoString),
([for (i in y) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(t : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T2_13762.T_testEndToEnd___localname___T2_13762>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
