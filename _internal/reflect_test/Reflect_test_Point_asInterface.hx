package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
class Point_asInterface {
    @:keep
    public dynamic function int32Method(_x:stdgo.GoInt32):stdgo.GoInt32 return __self__.value.int32Method(_x);
    @:keep
    public dynamic function int64Method(_x:stdgo.GoInt64):stdgo.GoInt64 return __self__.value.int64Method(_x);
    @:keep
    public dynamic function totalDist(_points:haxe.Rest<_internal.reflect_test.Reflect_test_Point.Point>):stdgo.GoInt return __self__.value.totalDist(..._points);
    @:keep
    public dynamic function noArgs():Void __self__.value.noArgs();
    @:keep
    public dynamic function gcmethod(_k:stdgo.GoInt):stdgo.GoInt return __self__.value.gcmethod(_k);
    @:keep
    public dynamic function dist(_scale:stdgo.GoInt):stdgo.GoInt return __self__.value.dist(_scale);
    @:keep
    public dynamic function anotherMethod(_scale:stdgo.GoInt):stdgo.GoInt return __self__.value.anotherMethod(_scale);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.reflect_test.Reflect_test_Point.Point>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
