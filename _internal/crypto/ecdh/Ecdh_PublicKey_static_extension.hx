package _internal.crypto.ecdh;
@:keep @:allow(_internal.crypto.ecdh.Ecdh.PublicKey_asInterface) class PublicKey_static_extension {
    @:keep
    static public function curve( _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>):_internal.crypto.ecdh.Ecdh_Curve.Curve {
        @:recv var _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> = _k;
        return _k._curve;
    }
    @:keep
    static public function equal( _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>, _x:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool {
        @:recv var _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> = _k;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>)) : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        return ((stdgo.Go.toInterface(_k._curve) == stdgo.Go.toInterface(_xx._curve)) && (stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_k._publicKey, _xx._publicKey) == (1 : stdgo.GoInt)) : Bool);
    }
    @:keep
    static public function bytes( _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> = _k;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(133, 133, ...[for (i in 0 ... 133) (0 : stdgo.GoUInt8)]);
        return ((_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_k._publicKey : Array<stdgo.GoUInt8>)));
    }
}
