package _internal.crypto.ecdh;
@:keep @:allow(_internal.crypto.ecdh.Ecdh.T_x25519Curve_asInterface) class T_x25519Curve_static_extension {
    @:keep
    static public function _ecdh( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>, _local:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>, _remote:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve> = _c;
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_internal.crypto.ecdh.Ecdh__x25519SharedSecretSize._x25519SharedSecretSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _internal.crypto.ecdh.Ecdh__x25519ScalarMult._x25519ScalarMult(_out, _local._privateKey, _remote._publicKey);
        if (_internal.crypto.ecdh.Ecdh__isZero._isZero(_out)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: bad X25519 remote ECDH input: low order point" : stdgo.GoString)) };
        };
        return { _0 : _out, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function newPublicKey( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve> = _c;
        if ((_key.length) != (_internal.crypto.ecdh.Ecdh__x25519PublicKeySize._x25519PublicKeySize)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: invalid public key" : stdgo.GoString)) };
        };
        return { _0 : (stdgo.Go.setRef(({ _curve : stdgo.Go.asInterface(_c), _publicKey : ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_key : Array<stdgo.GoUInt8>))) } : _internal.crypto.ecdh.Ecdh_PublicKey.PublicKey)) : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _privateKeyToPublicKey( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>, _key:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>):stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> {
        @:recv var _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve> = _c;
        if (stdgo.Go.toInterface(_key._curve) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_c)))) {
            throw stdgo.Go.toInterface(("crypto/ecdh: internal error: converting the wrong key type" : stdgo.GoString));
        };
        var _k = (stdgo.Go.setRef(({ _curve : _key._curve, _publicKey : (new stdgo.Slice<stdgo.GoUInt8>((_internal.crypto.ecdh.Ecdh__x25519PublicKeySize._x25519PublicKeySize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.crypto.ecdh.Ecdh_PublicKey.PublicKey)) : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
        var _x25519Basepoint = (new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[(9 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        _internal.crypto.ecdh.Ecdh__x25519ScalarMult._x25519ScalarMult(_k._publicKey, _key._privateKey, (_x25519Basepoint.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        return _k;
    }
    @:keep
    static public function newPrivateKey( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve> = _c;
        if ((_key.length) != (_internal.crypto.ecdh.Ecdh__x25519PrivateKeySize._x25519PrivateKeySize)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: invalid private key size" : stdgo.GoString)) };
        };
        return { _0 : (stdgo.Go.setRef(({ _curve : stdgo.Go.asInterface(_c), _privateKey : ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_key : Array<stdgo.GoUInt8>))) } : _internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey)) : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function generateKey( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>, _rand:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve> = _c;
        var _key = (new stdgo.Slice<stdgo.GoUInt8>((_internal.crypto.ecdh.Ecdh__x25519PrivateKeySize._x25519PrivateKeySize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.internal.randutil.Randutil_maybeReadByte.maybeReadByte(_rand);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_rand, _key), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return _c.newPrivateKey(_key);
    }
    @:keep
    static public function string( _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<_internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve> = _c;
        return ("X25519" : stdgo.GoString);
    }
}
