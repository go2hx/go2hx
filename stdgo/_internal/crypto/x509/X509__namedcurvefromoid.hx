package stdgo._internal.crypto.x509;
function _namedCurveFromOID(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.crypto.elliptic.Elliptic_curve.Curve {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L528"
        if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep224._oidNamedCurveP224)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L530"
            return stdgo._internal.crypto.elliptic.Elliptic_p224.p224();
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep256._oidNamedCurveP256)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L532"
            return stdgo._internal.crypto.elliptic.Elliptic_p256.p256();
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep384._oidNamedCurveP384)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L534"
            return stdgo._internal.crypto.elliptic.Elliptic_p384.p384();
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidnamedcurvep521._oidNamedCurveP521)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L536"
            return stdgo._internal.crypto.elliptic.Elliptic_p521.p521();
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L538"
        return (null : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
    }
