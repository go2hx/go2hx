package stdgo._internal.crypto.ecdh;
@:keep @:allow(stdgo._internal.crypto.ecdh.Ecdh.T_x25519Curve_asInterface) class T_x25519Curve_static_extension {
    @:keep
    @:tdfield
    static public function _ecdh( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _local:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>, _remote:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.ecdh.Ecdh__x25519sharedsecretsize._x25519SharedSecretSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.ecdh.Ecdh__x25519scalarmult._x25519ScalarMult(_out, (@:checkr _local ?? throw "null pointer dereference")._privateKey, (@:checkr _remote ?? throw "null pointer dereference")._publicKey);
        if (stdgo._internal.crypto.ecdh.Ecdh__iszero._isZero(_out)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: bad X25519 remote ECDH input: low order point" : stdgo.GoString)) };
        };
        return { _0 : _out, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function newPublicKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        if ((_key.length) != (stdgo._internal.crypto.ecdh.Ecdh__x25519publickeysize._x25519PublicKeySize)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: invalid public key" : stdgo.GoString)) };
        };
        return { _0 : (stdgo.Go.setRef(({ _curve : stdgo.Go.asInterface(_c), _publicKey : ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_key : Array<stdgo.GoUInt8>))) } : stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _privateKeyToPublicKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        if (stdgo.Go.toInterface((@:checkr _key ?? throw "null pointer dereference")._curve) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_c)))) {
            throw stdgo.Go.toInterface(("crypto/ecdh: internal error: converting the wrong key type" : stdgo.GoString));
        };
        var _k = (stdgo.Go.setRef(({ _curve : (@:checkr _key ?? throw "null pointer dereference")._curve, _publicKey : (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.ecdh.Ecdh__x25519publickeysize._x25519PublicKeySize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        var _x25519Basepoint = (new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[(9 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        stdgo._internal.crypto.ecdh.Ecdh__x25519scalarmult._x25519ScalarMult((@:checkr _k ?? throw "null pointer dereference")._publicKey, (@:checkr _key ?? throw "null pointer dereference")._privateKey, (_x25519Basepoint.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        return _k;
    }
    @:keep
    @:tdfield
    static public function newPrivateKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        if ((_key.length) != (stdgo._internal.crypto.ecdh.Ecdh__x25519privatekeysize._x25519PrivateKeySize)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: invalid private key size" : stdgo.GoString)) };
        };
        return { _0 : (stdgo.Go.setRef(({ _curve : stdgo.Go.asInterface(_c), _privateKey : ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_key : Array<stdgo.GoUInt8>))) } : stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function generateKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        var _key = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.ecdh.Ecdh__x25519privatekeysize._x25519PrivateKeySize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_rand);
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _key), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return @:check2r _c.newPrivateKey(_key);
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        return ("X25519" : stdgo.GoString);
    }
}
