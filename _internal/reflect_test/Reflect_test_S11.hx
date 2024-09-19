package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S11_static_extension.S11_static_extension) class S11 {
    @:embedded
    public var s6 : _internal.reflect_test.Reflect_test_S6.S6 = ({} : _internal.reflect_test.Reflect_test_S6.S6);
    public function new(?s6:_internal.reflect_test.Reflect_test_S6.S6) {
        if (s6 != null) this.s6 = s6;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S11(s6);
    }
}
