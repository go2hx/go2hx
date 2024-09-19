package stdgo._internal.crypto.ed25519;
class PrivateKey_asInterface {
    @:keep
    public dynamic function sign(_rand:stdgo._internal.io.Io_Reader.Reader, _message:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.sign(_rand, _message, _opts);
    @:keep
    public dynamic function seed():stdgo.Slice<stdgo.GoUInt8> return __self__.value.seed();
    @:keep
    public dynamic function equal(_x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool return __self__.value.equal(_x);
    @:keep
    public dynamic function public_():stdgo._internal.crypto.Crypto_PublicKey.PublicKey return __self__.value.public_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
