package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S8_static_extension.S8_static_extension) class S8 {
    @:embedded
    public var s9 : _internal.reflect_test.Reflect_test_S9.S9 = ({} : _internal.reflect_test.Reflect_test_S9.S9);
    public function new(?s9:_internal.reflect_test.Reflect_test_S9.S9) {
        if (s9 != null) this.s9 = s9;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S8(s9);
    }
}
