package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t0_static_extension.T0_static_extension) class T0 {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoInt = 0;
    public var c : stdgo.GoInt = 0;
    public var d : stdgo.GoInt = 0;
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoInt, ?c:stdgo.GoInt, ?d:stdgo.GoInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T0(a, b, c, d);
    }
}
