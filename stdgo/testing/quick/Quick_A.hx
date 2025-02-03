package stdgo.testing.quick;
@:structInit @:using(stdgo.testing.quick.Quick.A_static_extension) abstract A(stdgo._internal.testing.quick.Quick_A.A) from stdgo._internal.testing.quick.Quick_A.A to stdgo._internal.testing.quick.Quick_A.A {
    public var b(get, set) : B;
    function get_b():B return this.b;
    function set_b(v:B):B {
        this.b = (v : stdgo.Ref<stdgo._internal.testing.quick.Quick_B.B>);
        return v;
    }
    public function new(?b:B) this = new stdgo._internal.testing.quick.Quick_A.A((b : stdgo.Ref<stdgo._internal.testing.quick.Quick_B.B>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
