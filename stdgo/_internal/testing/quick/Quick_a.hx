package stdgo._internal.testing.quick;
@:structInit @:using(stdgo._internal.testing.quick.Quick_a_static_extension.A_static_extension) class A {
    public var b : stdgo.Ref<stdgo._internal.testing.quick.Quick_b.B> = (null : stdgo.Ref<stdgo._internal.testing.quick.Quick_b.B>);
    public function new(?b:stdgo.Ref<stdgo._internal.testing.quick.Quick_b.B>) {
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new A(b);
    }
}
