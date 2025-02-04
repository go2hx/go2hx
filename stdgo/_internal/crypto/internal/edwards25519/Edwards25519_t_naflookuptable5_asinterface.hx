package stdgo._internal.crypto.internal.edwards25519;
class T_nafLookupTable5_asInterface {
    @:keep
    @:tdfield
    public dynamic function selectInto(_dest:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>, _x:stdgo.GoInt8):Void @:_0 __self__.value.selectInto(_dest, _x);
    @:keep
    @:tdfield
    public dynamic function fromP3(_q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):Void @:_0 __self__.value.fromP3(_q);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5pointer.T_nafLookupTable5Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
