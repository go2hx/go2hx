package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S0_static_extension.S0_static_extension) class S0 {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoInt = 0;
    public var c : stdgo.GoInt = 0;
    @:embedded
    public var d1 : _internal.reflect_test.Reflect_test_D1.D1 = ({} : _internal.reflect_test.Reflect_test_D1.D1);
    @:embedded
    public var d2 : _internal.reflect_test.Reflect_test_D2.D2 = ({} : _internal.reflect_test.Reflect_test_D2.D2);
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoInt, ?c:stdgo.GoInt, ?d1:_internal.reflect_test.Reflect_test_D1.D1, ?d2:_internal.reflect_test.Reflect_test_D2.D2) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d1 != null) this.d1 = d1;
        if (d2 != null) this.d2 = d2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S0(a, b, c, d1, d2);
    }
}
