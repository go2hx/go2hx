package stdgo._internal.testing.quick;
@:structInit class B {
    public var a : stdgo.Ref<stdgo._internal.testing.quick.Quick_A.A> = (null : stdgo.Ref<stdgo._internal.testing.quick.Quick_A.A>);
    public function new(?a:stdgo.Ref<stdgo._internal.testing.quick.Quick_A.A>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new B(a);
    }
}