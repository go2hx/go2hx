package stdgo._internal.crypto.tls;
function _curveForCurveID(_id:stdgo._internal.crypto.tls.Tls_curveid.CurveID):{ var _0 : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve; var _1 : Bool; } {
        {
            final __value__ = _id;
            if (__value__ == ((29 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                return { _0 : stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519(), _1 : true };
            } else if (__value__ == ((23 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                return { _0 : stdgo._internal.crypto.ecdh.Ecdh_p256.p256(), _1 : true };
            } else if (__value__ == ((24 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                return { _0 : stdgo._internal.crypto.ecdh.Ecdh_p384.p384(), _1 : true };
            } else if (__value__ == ((25 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                return { _0 : stdgo._internal.crypto.ecdh.Ecdh_p521.p521(), _1 : true };
            } else {
                return { _0 : (null : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve), _1 : false };
            };
        };
    }
