package stdgo._internal.crypto.tls;
function _curveIDForCurve(_curve:_internal.crypto.ecdh.Ecdh_Curve.Curve):{ var _0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID; var _1 : Bool; } {
        {
            final __value__ = _curve;
            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(_internal.crypto.ecdh.Ecdh_x25519.x25519()))) {
                return { _0 : (29 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID), _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(_internal.crypto.ecdh.Ecdh_p256.p256()))) {
                return { _0 : (23 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID), _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(_internal.crypto.ecdh.Ecdh_p384.p384()))) {
                return { _0 : (24 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID), _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(_internal.crypto.ecdh.Ecdh_p521.p521()))) {
                return { _0 : (25 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID), _1 : true };
            } else {
                return { _0 : (0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID), _1 : false };
            };
        };
    }
