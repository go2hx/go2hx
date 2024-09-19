package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Tm1_static_extension.Tm1_static_extension) class Tm1 {
    @:embedded
    public var tm2 : _internal.reflect_test.Reflect_test_Tm2.Tm2 = ({} : _internal.reflect_test.Reflect_test_Tm2.Tm2);
    public function new(?tm2:_internal.reflect_test.Reflect_test_Tm2.Tm2) {
        if (tm2 != null) this.tm2 = tm2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function m(__0:stdgo.GoInt, __1:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } return this.tm2.m(__0, __1);
    public function __copy__() {
        return new Tm1(tm2);
    }
}
