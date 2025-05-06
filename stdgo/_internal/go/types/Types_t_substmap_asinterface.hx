package stdgo._internal.go.types;
class T_substMap_asInterface {
    @:keep
    @:tdfield
    public dynamic function _lookup(_tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._lookup(_tpar);
    @:keep
    @:tdfield
    public dynamic function _empty():Bool return @:_0 __self__.value._empty();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_substmappointer.T_substMapPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
