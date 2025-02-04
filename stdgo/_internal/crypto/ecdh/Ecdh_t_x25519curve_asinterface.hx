package stdgo._internal.crypto.ecdh;
class T_x25519Curve_asInterface {
    @:keep
    @:tdfield
    public dynamic function _ecdh(_local:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>, _remote:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._ecdh(_local, _remote);
    @:keep
    @:tdfield
    public dynamic function newPublicKey(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; } return @:_0 __self__.value.newPublicKey(_key);
    @:keep
    @:tdfield
    public dynamic function _privateKeyToPublicKey(_key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> return @:_0 __self__.value._privateKeyToPublicKey(_key);
    @:keep
    @:tdfield
    public dynamic function newPrivateKey(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } return @:_0 __self__.value.newPrivateKey(_key);
    @:keep
    @:tdfield
    public dynamic function generateKey(_rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } return @:_0 __self__.value.generateKey(_rand);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.ecdh.Ecdh_t_x25519curvepointer.T_x25519CurvePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
