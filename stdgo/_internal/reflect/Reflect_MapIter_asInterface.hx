package stdgo._internal.reflect;
class MapIter_asInterface {
    @:keep
    public dynamic function reset(_v:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value.reset(_v);
    @:keep
    public dynamic function next():Bool return __self__.value.next();
    @:keep
    public dynamic function value():stdgo._internal.reflect.Reflect_Value.Value return __self__.value.value();
    @:keep
    public dynamic function key():stdgo._internal.reflect.Reflect_Value.Value return __self__.value.key();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.reflect.Reflect_MapIter.MapIter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
