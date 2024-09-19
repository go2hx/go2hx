package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _matchExactly(_hostA:stdgo.GoString, _hostB:stdgo.GoString):Bool {
        if ((((_hostA == (stdgo.Go.str()) || _hostA == (("." : stdgo.GoString)) : Bool) || _hostB == (stdgo.Go.str()) : Bool) || (_hostB == ("." : stdgo.GoString)) : Bool)) {
            return false;
        };
        return stdgo._internal.crypto.x509.X509__toLowerCaseASCII._toLowerCaseASCII(_hostA?.__copy__()) == (stdgo._internal.crypto.x509.X509__toLowerCaseASCII._toLowerCaseASCII(_hostB?.__copy__()));
    }
