package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _validHostnameInput(_host:stdgo.GoString):Bool {
        return stdgo._internal.crypto.x509.X509__validHostname._validHostname(_host?.__copy__(), false);
    }
