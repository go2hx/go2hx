package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
class T_x25519Curve_asInterface {
    @:keep
    @:tdfield
    public dynamic function _ecdh(_local:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>, _remote:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._ecdh(_local, _remote);
    @:keep
    @:tdfield
    public dynamic function newPublicKey(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>; var _1 : stdgo.Error; } return @:_0 __self__.value.newPublicKey(_key);
    @:keep
    @:tdfield
    public dynamic function _privateKeyToPublicKey(_key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>):stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> return @:_0 __self__.value._privateKeyToPublicKey(_key);
    @:keep
    @:tdfield
    public dynamic function newPrivateKey(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } return @:_0 __self__.value.newPrivateKey(_key);
    @:keep
    @:tdfield
    public dynamic function generateKey(_rand:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } return @:_0 __self__.value.generateKey(_rand);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.ecdh.Ecdh_T_x25519CurvePointer.T_x25519CurvePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
