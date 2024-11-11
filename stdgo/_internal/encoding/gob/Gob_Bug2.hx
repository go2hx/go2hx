package stdgo._internal.encoding.gob;
@:structInit class Bug2 {
    public var a : stdgo.GoInt = 0;
    public var c : stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
    public var cp : stdgo.Ref<stdgo.Chan<stdgo.GoInt>> = (null : stdgo.Ref<stdgo.Chan<stdgo.GoInt>>);
    public var f : () -> Void = null;
    public var fpp : stdgo.Pointer<stdgo.Pointer<() -> Void>> = (null : stdgo.Pointer<stdgo.Pointer<() -> Void>>);
    public function new(?a:stdgo.GoInt, ?c:stdgo.Chan<stdgo.GoInt>, ?cp:stdgo.Ref<stdgo.Chan<stdgo.GoInt>>, ?f:() -> Void, ?fpp:stdgo.Pointer<stdgo.Pointer<() -> Void>>) {
        if (a != null) this.a = a;
        if (c != null) this.c = c;
        if (cp != null) this.cp = cp;
        if (f != null) this.f = f;
        if (fpp != null) this.fpp = fpp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug2(a, c, cp, f, fpp);
    }
}
