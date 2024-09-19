package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_S1_static_extension.S1_static_extension) class S1 {
    public var b : stdgo.GoInt = 0;
    @:embedded
    public var s0 : _internal.reflect_test.Reflect_test_S0.S0 = ({} : _internal.reflect_test.Reflect_test_S0.S0);
    public function new(?b:stdgo.GoInt, ?s0:_internal.reflect_test.Reflect_test_S0.S0) {
        if (b != null) this.b = b;
        if (s0 != null) this.s0 = s0;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S1(b, s0);
    }
}
