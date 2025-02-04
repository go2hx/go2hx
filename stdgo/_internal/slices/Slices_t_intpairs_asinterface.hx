package stdgo._internal.slices;
class T_intPairs_asInterface {
    @:keep
    @:tdfield
    public dynamic function _inOrder():Bool return @:_0 __self__.value._inOrder();
    @:keep
    @:tdfield
    public dynamic function _initB():Void @:_0 __self__.value._initB();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.slices.Slices_t_intpairspointer.T_intPairsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
