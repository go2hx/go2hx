package stdgo._internal.crypto.x509;
function _oidFromNamedCurve(_curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve):{ var _0 : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L542"
        {
            final __value__ = _curve;
            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p224.p224()))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L544"
                return { _0 : stdgo._internal.crypto.x509.X509__oidnamedcurvep224._oidNamedCurveP224, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p256.p256()))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L546"
                return { _0 : stdgo._internal.crypto.x509.X509__oidnamedcurvep256._oidNamedCurveP256, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p384.p384()))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L548"
                return { _0 : stdgo._internal.crypto.x509.X509__oidnamedcurvep384._oidNamedCurveP384, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p521.p521()))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L550"
                return { _0 : stdgo._internal.crypto.x509.X509__oidnamedcurvep521._oidNamedCurveP521, _1 : true };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L553"
        return { _0 : null, _1 : false };
    }
