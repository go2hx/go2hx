package _internal.crypto.ecdh;
@:keep @:allow(_internal.crypto.ecdh.Ecdh.PrivateKey_asInterface) class PrivateKey_static_extension {
    @:keep
    static public function public_( _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>):stdgo._internal.crypto.Crypto_PublicKey.PublicKey {
        @:recv var _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = _k;
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_k.publicKey()));
    }
    @:keep
    static public function publicKey( _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>):stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> {
        @:recv var _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = _k;
        _k._publicKeyOnce.do_(function():Void {
            if (_k._boring != null && ((_k._boring : Dynamic).__nil__ == null || !(_k._boring : Dynamic).__nil__)) {
                var __tmp__ = _k._boring.publicKey(), _kpub:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    throw stdgo.Go.toInterface((("boringcrypto: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
                };
                _k._publicKey = (stdgo.Go.setRef(({ _curve : _k._curve, _publicKey : _kpub.bytes(), _boring : _kpub } : _internal.crypto.ecdh.Ecdh_PublicKey.PublicKey)) : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
            } else {
                _k._publicKey = _k._curve._privateKeyToPublicKey(_k);
            };
        });
        return _k._publicKey;
    }
    @:keep
    static public function curve( _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>):_internal.crypto.ecdh.Ecdh_Curve.Curve {
        @:recv var _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = _k;
        return _k._curve;
    }
    @:keep
    static public function equal( _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>, _x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool {
        @:recv var _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = _k;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>)) : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        return ((stdgo.Go.toInterface(_k._curve) == stdgo.Go.toInterface(_xx._curve)) && (stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_k._privateKey, _xx._privateKey) == (1 : stdgo.GoInt)) : Bool);
    }
    @:keep
    static public function bytes( _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = _k;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(66, 66, ...[for (i in 0 ... 66) (0 : stdgo.GoUInt8)]);
        return ((_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_k._privateKey : Array<stdgo.GoUInt8>)));
    }
    @:keep
    static public function ecdh( _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>, _remote:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = _k;
        if (stdgo.Go.toInterface(_k._curve) != (stdgo.Go.toInterface(_remote._curve))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: private key and public key curves do not match" : stdgo.GoString)) };
        };
        return _k._curve._ecdh(_k, _remote);
    }
}
