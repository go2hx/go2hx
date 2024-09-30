package stdgo._internal.crypto.x509;
class T_rfc1423Algo_asInterface {
    @:keep
    public dynamic function _deriveKey(_password:stdgo.Slice<stdgo.GoUInt8>, _salt:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._deriveKey(_password, _salt);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
