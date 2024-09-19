package stdgo._internal.testing.quick;
@:structInit class A {
    public var b : stdgo.Ref<stdgo._internal.testing.quick.Quick_B.B> = (null : stdgo.Ref<stdgo._internal.testing.quick.Quick_B.B>);
    public function new(?b:stdgo.Ref<stdgo._internal.testing.quick.Quick_B.B>) {
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new A(b);
    }
}
