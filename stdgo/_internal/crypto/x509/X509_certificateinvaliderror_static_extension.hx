package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.CertificateInvalidError_asInterface) class CertificateInvalidError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError = _e?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L70"
        {
            final __value__ = _e.reason;
            if (__value__ == ((0 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L72"
                return ("x509: certificate is not authorized to sign other certificates" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L74"
                return (("x509: certificate has expired or is not yet valid: " : stdgo.GoString) + _e.detail?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((2 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L76"
                return (("x509: a root or intermediate certificate is not authorized to sign for this name: " : stdgo.GoString) + _e.detail?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((9 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L78"
                return (("x509: a root or intermediate certificate is not authorized for an extended key usage: " : stdgo.GoString) + _e.detail?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((3 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L80"
                return ("x509: too many intermediates for path length constraint" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L82"
                return ("x509: certificate specifies an incompatible key usage" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L84"
                return ("x509: issuer name does not match subject from issuing certificate" : stdgo.GoString);
            } else if (__value__ == ((6 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L86"
                return ("x509: issuer has name constraints but leaf doesn\'t have a SAN extension" : stdgo.GoString);
            } else if (__value__ == ((7 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L88"
                return (("x509: issuer has name constraints but leaf contains unknown or unconstrained name: " : stdgo.GoString) + _e.detail?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L90"
        return ("x509: unknown error" : stdgo.GoString);
    }
}
