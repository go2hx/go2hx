package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_dt_static_extension.DT_static_extension) class DT {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoString = "";
    public var c : stdgo.GoFloat64 = 0;
    public var i : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var j : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var i_nil : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var m : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var t : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(3, 3).__setNumber32__();
    public var s : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoString, ?c:stdgo.GoFloat64, ?i:stdgo.AnyInterface, ?j:stdgo.AnyInterface, ?i_nil:stdgo.AnyInterface, ?m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?t:stdgo.GoArray<stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoString>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (i != null) this.i = i;
        if (j != null) this.j = j;
        if (i_nil != null) this.i_nil = i_nil;
        if (m != null) this.m = m;
        if (t != null) this.t = t;
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DT(a, b, c, i, j, i_nil, m, t, s);
    }
}
