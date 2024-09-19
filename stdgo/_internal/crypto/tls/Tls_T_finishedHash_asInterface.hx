package stdgo._internal.crypto.tls;
class T_finishedHash_asInterface {
    @:keep
    public dynamic function _discardHandshakeBuffer():Void __self__.value._discardHandshakeBuffer();
    @:keep
    public dynamic function _hashForClientCertificate(_sigType:stdgo.GoUInt8, _hashAlg:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo.Slice<stdgo.GoUInt8> return __self__.value._hashForClientCertificate(_sigType, _hashAlg);
    @:keep
    public dynamic function _serverSum(_masterSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._serverSum(_masterSecret);
    @:keep
    public dynamic function _clientSum(_masterSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._clientSum(_masterSecret);
    @:keep
    public dynamic function sum():stdgo.Slice<stdgo.GoUInt8> return __self__.value.sum();
    @:keep
    public dynamic function write(_msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_msg);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
