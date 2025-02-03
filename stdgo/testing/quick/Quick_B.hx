package stdgo.testing.quick;
@:structInit @:using(stdgo.testing.quick.Quick.B_static_extension) abstract B(stdgo._internal.testing.quick.Quick_B.B) from stdgo._internal.testing.quick.Quick_B.B to stdgo._internal.testing.quick.Quick_B.B {
    public var a(get, set) : A;
    function get_a():A return this.a;
    function set_a(v:A):A {
        this.a = (v : stdgo.Ref<stdgo._internal.testing.quick.Quick_A.A>);
        return v;
    }
    public function new(?a:A) this = new stdgo._internal.testing.quick.Quick_B.B((a : stdgo.Ref<stdgo._internal.testing.quick.Quick_A.A>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
