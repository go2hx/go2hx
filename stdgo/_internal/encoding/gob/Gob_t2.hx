package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t2_static_extension.T2_static_extension) class T2 {
    public var a : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>>);
    public var b : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>);
    public var c : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var d : stdgo.GoInt = 0;
    public function new(?a:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>>, ?b:stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>, ?c:stdgo.Pointer<stdgo.GoInt>, ?d:stdgo.GoInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T2(a, b, c, d);
    }
}
