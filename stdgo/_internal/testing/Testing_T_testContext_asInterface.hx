package stdgo._internal.testing;
class T_testContext_asInterface {
    @:keep
    public dynamic function _release():Void __self__.value._release();
    @:keep
    public dynamic function _waitParallel():Void __self__.value._waitParallel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.Testing_T_testContext.T_testContext>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
