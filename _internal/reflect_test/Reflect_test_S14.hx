package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S14_static_extension.S14_static_extension) class S14 {
    @:embedded
    public var s15 : _internal.reflect_test.Reflect_test_S15.S15 = ({} : _internal.reflect_test.Reflect_test_S15.S15);
    @:embedded
    public var s16 : _internal.reflect_test.Reflect_test_S16.S16 = ({} : _internal.reflect_test.Reflect_test_S16.S16);
    public function new(?s15:_internal.reflect_test.Reflect_test_S15.S15, ?s16:_internal.reflect_test.Reflect_test_S16.S16) {
        if (s15 != null) this.s15 = s15;
        if (s16 != null) this.s16 = s16;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S14(s15, s16);
    }
}
