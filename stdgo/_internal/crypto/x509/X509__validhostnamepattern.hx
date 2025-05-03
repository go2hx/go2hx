package stdgo._internal.crypto.x509;
function _validHostnamePattern(_host:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L959"
        return stdgo._internal.crypto.x509.X509__validhostname._validHostname(_host?.__copy__(), true);
    }
