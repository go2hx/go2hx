package stdgo._internal.crypto.x509;
function _appendToFreshChain(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> {
        var _n = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>(((_chain.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L840"
        _n.__copyTo__(_chain);
        _n[(_chain.length : stdgo.GoInt)] = _cert;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L842"
        return _n;
    }
