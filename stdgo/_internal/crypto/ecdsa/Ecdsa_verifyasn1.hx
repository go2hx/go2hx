package stdgo._internal.crypto.ecdsa;
function verifyASN1(_pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L469"
        if (false) {
            var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__boringpublickey._boringPublicKey(_pub), _key:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa.PublicKeyECDSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L471"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L472"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L474"
            return stdgo._internal.crypto.internal.boring.Boring_verifyecdsa.verifyECDSA(_key, _hash, _sig);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L476"
        stdgo._internal.crypto.internal.boring.Boring_unreachableexcepttests.unreachableExceptTests();
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L478"
        {
            var _err = (stdgo._internal.crypto.ecdsa.Ecdsa__verifyasm._verifyAsm(_pub, _hash, _sig) : stdgo.Error);
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.crypto.ecdsa.Ecdsa__errnoasm._errNoAsm))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L479"
                return _err == null;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L482"
        {
            final __value__ = (@:checkr _pub ?? throw "null pointer dereference").curve.params();
            if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p224.p224().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L484"
                return stdgo._internal.crypto.ecdsa.Ecdsa__verifynistec._verifyNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p224._p224(), _pub, _hash, _sig);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p256.p256().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L486"
                return stdgo._internal.crypto.ecdsa.Ecdsa__verifynistec._verifyNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p256._p256(), _pub, _hash, _sig);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p384.p384().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L488"
                return stdgo._internal.crypto.ecdsa.Ecdsa__verifynistec._verifyNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p384._p384(), _pub, _hash, _sig);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p521.p521().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L490"
                return stdgo._internal.crypto.ecdsa.Ecdsa__verifynistec._verifyNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p521._p521(), _pub, _hash, _sig);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L492"
                return stdgo._internal.crypto.ecdsa.Ecdsa__verifylegacy._verifyLegacy(_pub, _hash, _sig);
            };
        };
    }
