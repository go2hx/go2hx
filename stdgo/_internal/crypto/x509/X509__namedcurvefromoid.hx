package stdgo._internal.crypto.x509;
function _namedCurveFromOID(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.crypto.elliptic.Elliptic_curve.Curve {
        if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep224._oidNamedCurveP224)) {
            return stdgo._internal.crypto.elliptic.Elliptic_p224.p224();
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep256._oidNamedCurveP256)) {
            return stdgo._internal.crypto.elliptic.Elliptic_p256.p256();
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep384._oidNamedCurveP384)) {
            return stdgo._internal.crypto.elliptic.Elliptic_p384.p384();
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep521._oidNamedCurveP521)) {
            return stdgo._internal.crypto.elliptic.Elliptic_p521.p521();
        };
        return (null : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
    }
