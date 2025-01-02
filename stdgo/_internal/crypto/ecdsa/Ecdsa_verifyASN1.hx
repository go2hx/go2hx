package stdgo._internal.crypto.ecdsa;
function verifyASN1(_pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if (false) {
            var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__boringPublicKey._boringPublicKey(_pub), _key:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDSA.PublicKeyECDSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return false;
            };
            return stdgo._internal.crypto.internal.boring.Boring_verifyECDSA.verifyECDSA(_key, _hash, _sig);
        };
        stdgo._internal.crypto.internal.boring.Boring_unreachableExceptTests.unreachableExceptTests();
        {
            var _err = (stdgo._internal.crypto.ecdsa.Ecdsa__verifyAsm._verifyAsm(_pub, _hash, _sig) : stdgo.Error);
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.crypto.ecdsa.Ecdsa__errNoAsm._errNoAsm))) {
                return _err == null;
            };
        };
        {
            final __value__ = (@:checkr _pub ?? throw "null pointer dereference").curve.params();
            if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p224.p224().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__verifyNISTEC._verifyNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p224._p224(), _pub, _hash, _sig);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p256.p256().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__verifyNISTEC._verifyNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p256._p256(), _pub, _hash, _sig);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p384.p384().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__verifyNISTEC._verifyNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p384._p384(), _pub, _hash, _sig);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p521.p521().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__verifyNISTEC._verifyNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p521._p521(), _pub, _hash, _sig);
            } else {
                return stdgo._internal.crypto.ecdsa.Ecdsa__verifyLegacy._verifyLegacy(_pub, _hash, _sig);
            };
        };
    }
