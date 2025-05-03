package stdgo._internal.crypto.ecdsa;
function _curveToECDH(_c:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve):stdgo._internal.crypto.ecdh.Ecdh_curve.Curve {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L108"
        {
            final __value__ = _c;
            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p256.p256()))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L110"
                return stdgo._internal.crypto.ecdh.Ecdh_p256.p256();
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p384.p384()))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L112"
                return stdgo._internal.crypto.ecdh.Ecdh_p384.p384();
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p521.p521()))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L114"
                return stdgo._internal.crypto.ecdh.Ecdh_p521.p521();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L116"
                return (null : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve);
            };
        };
    }
