package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Tm3_static_extension.Tm3_static_extension) class Tm3 {
    @:embedded
    public var tm4 : stdgo.Ref<_internal.reflect_test.Reflect_test_Tm4.Tm4> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_Tm4.Tm4>);
    public function new(?tm4:stdgo.Ref<_internal.reflect_test.Reflect_test_Tm4.Tm4>) {
        if (tm4 != null) this.tm4 = tm4;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function m(__0:stdgo.GoInt, __1:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } return this.tm4.m(__0, __1);
    public function __copy__() {
        return new Tm3(tm4);
    }
}
