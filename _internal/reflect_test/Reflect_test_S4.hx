package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S4_static_extension.S4_static_extension) class S4 {
    @:embedded
    public var s4 : stdgo.Ref<_internal.reflect_test.Reflect_test_S4.S4> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_S4.S4>);
    public var a : stdgo.GoInt = 0;
    public function new(?s4:stdgo.Ref<_internal.reflect_test.Reflect_test_S4.S4>, ?a:stdgo.GoInt) {
        if (s4 != null) this.s4 = s4;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S4(s4, a);
    }
}
