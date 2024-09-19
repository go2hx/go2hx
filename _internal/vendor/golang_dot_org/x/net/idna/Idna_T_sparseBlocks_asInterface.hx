package _internal.vendor.golang_dot_org.x.net.idna;
class T_sparseBlocks_asInterface {
    @:keep
    public dynamic function _lookup(_n:stdgo.GoUInt32, _b:stdgo.GoUInt8):stdgo.GoUInt16 return __self__.value._lookup(_n, _b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_sparseBlocks.T_sparseBlocks>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
