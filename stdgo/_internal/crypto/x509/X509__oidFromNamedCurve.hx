package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _oidFromNamedCurve(_curve:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve):{ var _0 : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier; var _1 : Bool; } {
        {
            final __value__ = _curve;
            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p224.p224()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidNamedCurveP224._oidNamedCurveP224, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p256.p256()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidNamedCurveP256._oidNamedCurveP256, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p384.p384()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidNamedCurveP384._oidNamedCurveP384, _1 : true };
            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p521.p521()))) {
                return { _0 : stdgo._internal.crypto.x509.X509__oidNamedCurveP521._oidNamedCurveP521, _1 : true };
            };
        };
        return { _0 : null, _1 : false };
    }
