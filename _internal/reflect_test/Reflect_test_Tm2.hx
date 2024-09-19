package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Tm2_static_extension.Tm2_static_extension) class Tm2 {
    @:embedded
    public var tm3 : stdgo.Ref<_internal.reflect_test.Reflect_test_Tm3.Tm3> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_Tm3.Tm3>);
    public function new(?tm3:stdgo.Ref<_internal.reflect_test.Reflect_test_Tm3.Tm3>) {
        if (tm3 != null) this.tm3 = tm3;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function m(__0:stdgo.GoInt, __1:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } return this.tm3.m(__0, __1);
    public function __copy__() {
        return new Tm2(tm3);
    }
}
