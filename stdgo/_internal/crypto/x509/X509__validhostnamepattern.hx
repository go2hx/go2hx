package stdgo._internal.crypto.x509;
function _validHostnamePattern(_host:stdgo.GoString):Bool {
        return stdgo._internal.crypto.x509.X509__validhostname._validHostname(_host?.__copy__(), true);
    }
