package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S15_static_extension.S15_static_extension) class S15 {
    @:embedded
    public var s11 : _internal.reflect_test.Reflect_test_S11.S11 = ({} : _internal.reflect_test.Reflect_test_S11.S11);
    public function new(?s11:_internal.reflect_test.Reflect_test_S11.S11) {
        if (s11 != null) this.s11 = s11;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S15(s11);
    }
}
