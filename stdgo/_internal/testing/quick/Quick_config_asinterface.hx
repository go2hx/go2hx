package stdgo._internal.testing.quick;
class Config_asInterface {
    @:keep
    @:tdfield
    public dynamic function _getMaxCount():stdgo.GoInt return @:_0 __self__.value._getMaxCount();
    @:keep
    @:tdfield
    public dynamic function _getRand():stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> return @:_0 __self__.value._getRand();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.quick.Quick_configpointer.ConfigPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
