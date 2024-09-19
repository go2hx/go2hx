package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S13_static_extension.S13_static_extension) class S13 {
    @:embedded
    public var s8 : _internal.reflect_test.Reflect_test_S8.S8 = ({} : _internal.reflect_test.Reflect_test_S8.S8);
    public function new(?s8:_internal.reflect_test.Reflect_test_S8.S8) {
        if (s8 != null) this.s8 = s8;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S13(s8);
    }
}
