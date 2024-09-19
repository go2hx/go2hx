package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Inner_static_extension.Inner_static_extension) class Inner {
    public var x : stdgo.Ref<_internal.reflect_test.Reflect_test_Outer.Outer> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_Outer.Outer>);
    public var p1 : stdgo.GoUIntptr = 0;
    public var p2 : stdgo.GoUIntptr = 0;
    public function new(?x:stdgo.Ref<_internal.reflect_test.Reflect_test_Outer.Outer>, ?p1:stdgo.GoUIntptr, ?p2:stdgo.GoUIntptr) {
        if (x != null) this.x = x;
        if (p1 != null) this.p1 = p1;
        if (p2 != null) this.p2 = p2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Inner(x, p1, p2);
    }
}
