package stdgo._internal.crypto.x509;
function _oidFromECDHCurve(_curve:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve):{ var _0 : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier; var _1 : Bool; } {
        {
            final __value__ = _curve;
            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidpublickeyx25519._oidPublicKeyX25519, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.ecdh.Ecdh_p256.p256()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidnamedcurvep256._oidNamedCurveP256, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.ecdh.Ecdh_p384.p384()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidnamedcurvep384._oidNamedCurveP384, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.ecdh.Ecdh_p521.p521()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidnamedcurvep521._oidNamedCurveP521, _1 : true };
            };
        };
        return { _0 : null, _1 : false };
    }
