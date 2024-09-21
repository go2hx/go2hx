package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S1x_static_extension.S1x_static_extension) class S1x {
    @:embedded
    public var s1 : _internal.reflect_test.Reflect_test_S1.S1 = ({} : _internal.reflect_test.Reflect_test_S1.S1);
    public function new(?s1:_internal.reflect_test.Reflect_test_S1.S1) {
        if (s1 != null) this.s1 = s1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S1x(s1);
    }
}
