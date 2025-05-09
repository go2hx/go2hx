package stdgo._internal.crypto.ecdh;
@:keep @:allow(stdgo._internal.crypto.ecdh.Ecdh.PrivateKey_asInterface) class PrivateKey_static_extension {
    @:keep
    @:tdfield
    static public function public_( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):stdgo._internal.crypto.Crypto_publickey.PublicKey {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = _k;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L187"
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_k.publicKey()));
    }
    @:keep
    @:tdfield
    static public function publicKey( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = _k;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L162"
        (@:checkr _k ?? throw "null pointer dereference")._publicKeyOnce.do_(function():Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L163"
            if (({
                final value = (@:checkr _k ?? throw "null pointer dereference")._boring;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var __tmp__ = (@:checkr _k ?? throw "null pointer dereference")._boring.publicKey(), _kpub:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L169"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L170"
                    throw stdgo.Go.toInterface((("boringcrypto: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
                };
                (@:checkr _k ?? throw "null pointer dereference")._publicKey = (stdgo.Go.setRef(({ _curve : (@:checkr _k ?? throw "null pointer dereference")._curve, _publicKey : _kpub.bytes(), _boring : _kpub } : stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
            } else {
                (@:checkr _k ?? throw "null pointer dereference")._publicKey = (@:checkr _k ?? throw "null pointer dereference")._curve._privateKeyToPublicKey(_k);
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L181"
        return (@:checkr _k ?? throw "null pointer dereference")._publicKey;
    }
    @:keep
    @:tdfield
    static public function curve( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):stdgo._internal.crypto.ecdh.Ecdh_curve.Curve {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = _k;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L158"
        return (@:checkr _k ?? throw "null pointer dereference")._curve;
    }
    @:keep
    @:tdfield
    static public function equal( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>, _x:stdgo._internal.crypto.Crypto_privatekey.PrivateKey):Bool {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = _k;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L150"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L151"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L153"
        return ((stdgo.Go.toInterface((@:checkr _k ?? throw "null pointer dereference")._curve) == stdgo.Go.toInterface((@:checkr _xx ?? throw "null pointer dereference")._curve)) && (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare((@:checkr _k ?? throw "null pointer dereference")._privateKey, (@:checkr _xx ?? throw "null pointer dereference")._privateKey) == (1 : stdgo.GoInt)) : Bool);
    }
    @:keep
    @:tdfield
    static public function bytes( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = _k;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(66, 66).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L138"
        return ((_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((@:checkr _k ?? throw "null pointer dereference")._privateKey : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function eCDH( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>, _remote:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = _k;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L127"
        if (stdgo.Go.toInterface((@:checkr _k ?? throw "null pointer dereference")._curve) != (stdgo.Go.toInterface((@:checkr _remote ?? throw "null pointer dereference")._curve))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L128"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: private key and public key curves do not match" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/ecdh.go#L130"
        return (@:checkr _k ?? throw "null pointer dereference")._curve._ecdh(_k, _remote);
    }
}
