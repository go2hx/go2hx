package stdgo._internal.testing.quick;
@:structInit @:using(stdgo._internal.testing.quick.Quick_teststruct_static_extension.TestStruct_static_extension) class TestStruct {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoString = "";
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoString) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TestStruct(a, b);
    }
}
