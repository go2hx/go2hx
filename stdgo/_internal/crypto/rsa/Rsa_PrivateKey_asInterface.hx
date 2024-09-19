package stdgo._internal.crypto.rsa;
class PrivateKey_asInterface {
    @:keep
    public dynamic function precompute():Void __self__.value.precompute();
    @:keep
    public dynamic function validate():stdgo.Error return __self__.value.validate();
    @:keep
    public dynamic function decrypt(_rand:stdgo._internal.io.Io_Reader.Reader, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_DecrypterOpts.DecrypterOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.decrypt(_rand, _ciphertext, _opts);
    @:keep
    public dynamic function sign(_rand:stdgo._internal.io.Io_Reader.Reader, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.sign(_rand, _digest, _opts);
    @:keep
    public dynamic function equal(_x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool return __self__.value.equal(_x);
    @:keep
    public dynamic function public_():stdgo._internal.crypto.Crypto_PublicKey.PublicKey return __self__.value.public_();
    @:embedded
    public dynamic function size():stdgo.GoInt return __self__.value.size();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
