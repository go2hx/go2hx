package stdgo._internal.crypto.ecdh;
@:keep @:allow(stdgo._internal.crypto.ecdh.Ecdh.T_x25519Curve_asInterface) class T_x25519Curve_static_extension {
    @:keep
    @:tdfield
    static public function _ecdh( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _local:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>, _remote:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.ecdh.Ecdh__x25519sharedsecretsize._x25519SharedSecretSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L79"
        stdgo._internal.crypto.ecdh.Ecdh__x25519scalarmult._x25519ScalarMult(_out, (@:checkr _local ?? throw "null pointer dereference")._privateKey, (@:checkr _remote ?? throw "null pointer dereference")._publicKey);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L80"
        if (stdgo._internal.crypto.ecdh.Ecdh__iszero._isZero(_out)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L81"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: bad X25519 remote ECDH input: low order point" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L83"
        return { _0 : _out, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function newPublicKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L68"
        if ((_key.length) != (stdgo._internal.crypto.ecdh.Ecdh__x25519publickeysize._x25519PublicKeySize)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L69"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: invalid public key" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L71"
        return { _0 : (stdgo.Go.setRef(({ _curve : stdgo.Go.asInterface(_c), _publicKey : ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_key : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _privateKeyToPublicKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L55"
        if (stdgo.Go.toInterface((@:checkr _key ?? throw "null pointer dereference")._curve) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_c)))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L56"
            throw stdgo.Go.toInterface(("crypto/ecdh: internal error: converting the wrong key type" : stdgo.GoString));
        };
        var _k = (stdgo.Go.setRef(({ _curve : (@:checkr _key ?? throw "null pointer dereference")._curve, _publicKey : (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.ecdh.Ecdh__x25519publickeysize._x25519PublicKeySize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        var _x25519Basepoint = (new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[(9 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L63"
        stdgo._internal.crypto.ecdh.Ecdh__x25519scalarmult._x25519ScalarMult((@:checkr _k ?? throw "null pointer dereference")._publicKey, (@:checkr _key ?? throw "null pointer dereference")._privateKey, (_x25519Basepoint.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L64"
        return _k;
    }
    @:keep
    @:tdfield
    static public function newPrivateKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L45"
        if ((_key.length) != (stdgo._internal.crypto.ecdh.Ecdh__x25519privatekeysize._x25519PrivateKeySize)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L46"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: invalid private key size" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L48"
        return { _0 : (stdgo.Go.setRef(({ _curve : stdgo.Go.asInterface(_c), _privateKey : ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_key : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function generateKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        var _key = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.ecdh.Ecdh__x25519privatekeysize._x25519PrivateKeySize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L37"
        stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_rand);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L38"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _key), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L39"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L41"
        return _c.newPrivateKey(_key);
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L32"
        return ("X25519" : stdgo.GoString);
    }
}
