package stdgo._internal.testing;
class T_benchContext_asInterface {
    @:keep
    @:tdfield
    public dynamic function _processBench(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void @:_0 __self__.value._processBench(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.Testing_t_benchcontextpointer.T_benchContextPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
