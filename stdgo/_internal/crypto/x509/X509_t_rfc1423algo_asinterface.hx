package stdgo._internal.crypto.x509;
class T_rfc1423Algo_asInterface {
    @:keep
    @:tdfield
    public dynamic function _deriveKey(_password:stdgo.Slice<stdgo.GoUInt8>, _salt:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._deriveKey(_password, _salt);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.x509.X509_t_rfc1423algopointer.T_rfc1423AlgoPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
