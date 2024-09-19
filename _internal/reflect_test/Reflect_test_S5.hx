package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S5_static_extension.S5_static_extension) class S5 {
    @:embedded
    public var s6 : _internal.reflect_test.Reflect_test_S6.S6 = ({} : _internal.reflect_test.Reflect_test_S6.S6);
    @:embedded
    public var s7 : _internal.reflect_test.Reflect_test_S7.S7 = ({} : _internal.reflect_test.Reflect_test_S7.S7);
    @:embedded
    public var s8 : _internal.reflect_test.Reflect_test_S8.S8 = ({} : _internal.reflect_test.Reflect_test_S8.S8);
    public function new(?s6:_internal.reflect_test.Reflect_test_S6.S6, ?s7:_internal.reflect_test.Reflect_test_S7.S7, ?s8:_internal.reflect_test.Reflect_test_S8.S8) {
        if (s6 != null) this.s6 = s6;
        if (s7 != null) this.s7 = s7;
        if (s8 != null) this.s8 = s8;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S5(s6, s7, s8);
    }
}
