package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S2_static_extension.S2_static_extension) class S2 {
    public var a : stdgo.GoInt = 0;
    @:embedded
    public var s1 : stdgo.Ref<_internal.reflect_test.Reflect_test_S1.S1> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_S1.S1>);
    public function new(?a:stdgo.GoInt, ?s1:stdgo.Ref<_internal.reflect_test.Reflect_test_S1.S1>) {
        if (a != null) this.a = a;
        if (s1 != null) this.s1 = s1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S2(a, s1);
    }
}
