package stdgo._internal.reflect;
class MapIter_asInterface {
    @:keep
    @:tdfield
    public dynamic function reset(_v:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value.reset(_v);
    @:keep
    @:tdfield
    public dynamic function next():Bool return @:_0 __self__.value.next();
    @:keep
    @:tdfield
    public dynamic function value():stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.value();
    @:keep
    @:tdfield
    public dynamic function key():stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.key();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.reflect.Reflect_mapiterpointer.MapIterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
