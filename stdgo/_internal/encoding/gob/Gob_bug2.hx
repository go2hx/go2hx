package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_bug2_static_extension.Bug2_static_extension) class Bug2 {
    public var a : stdgo.GoInt = 0;
    public var c : stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
    public var cP : stdgo.Ref<stdgo.Chan<stdgo.GoInt>> = (null : stdgo.Ref<stdgo.Chan<stdgo.GoInt>>);
    public var f : () -> Void = null;
    public var fPP : stdgo.Pointer<stdgo.Pointer<() -> Void>> = (null : stdgo.Pointer<stdgo.Pointer<() -> Void>>);
    public function new(?a:stdgo.GoInt, ?c:stdgo.Chan<stdgo.GoInt>, ?cP:stdgo.Ref<stdgo.Chan<stdgo.GoInt>>, ?f:() -> Void, ?fPP:stdgo.Pointer<stdgo.Pointer<() -> Void>>) {
        if (a != null) this.a = a;
        if (c != null) this.c = c;
        if (cP != null) this.cP = cP;
        if (f != null) this.f = f;
        if (fPP != null) this.fPP = fPP;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug2(a, c, cP, f, fPP);
    }
}
