package _internal.crypto.ecdh;
class T_x25519Curve_asInterface {
    @:keep
    public dynamic function _ecdh(_local:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>, _remote:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._ecdh(_local, _remote);
    @:keep
    public dynamic function newPublicKey(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>; var _1 : stdgo.Error; } return __self__.value.newPublicKey(_key);
    @:keep
    public dynamic function _privateKeyToPublicKey(_key:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>):stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> return __self__.value._privateKeyToPublicKey(_key);
    @:keep
    public dynamic function newPrivateKey(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } return __self__.value.newPrivateKey(_key);
    @:keep
    public dynamic function generateKey(_rand:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } return __self__.value.generateKey(_rand);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
