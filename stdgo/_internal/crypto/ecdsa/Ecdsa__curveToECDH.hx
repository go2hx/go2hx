package stdgo._internal.crypto.ecdsa;
function _curveToECDH(_c:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve):_internal.crypto.ecdh.Ecdh_Curve.Curve {
        {
            final __value__ = _c;
            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p256.p256()))) {
                return _internal.crypto.ecdh.Ecdh_p256.p256();
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p384.p384()))) {
                return _internal.crypto.ecdh.Ecdh_p384.p384();
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p521.p521()))) {
                return _internal.crypto.ecdh.Ecdh_p521.p521();
            } else {
                return (null : _internal.crypto.ecdh.Ecdh_Curve.Curve);
            };
        };
    }
