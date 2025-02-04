package stdgo._internal.crypto.ecdsa;
function _curveToECDH(_c:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve):stdgo._internal.crypto.ecdh.Ecdh_curve.Curve {
        {
            final __value__ = _c;
            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p256.p256()))) {
                return stdgo._internal.crypto.ecdh.Ecdh_p256.p256();
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p384.p384()))) {
                return stdgo._internal.crypto.ecdh.Ecdh_p384.p384();
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p521.p521()))) {
                return stdgo._internal.crypto.ecdh.Ecdh_p521.p521();
            } else {
                return (null : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve);
            };
        };
    }
