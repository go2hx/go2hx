package stdgo._internal.crypto.x509;
function _matchExactly(_hostA:stdgo.GoString, _hostB:stdgo.GoString):Bool {
        if ((((_hostA == ((stdgo.Go.str() : stdgo.GoString)) || _hostA == (("." : stdgo.GoString)) : Bool) || _hostB == ((stdgo.Go.str() : stdgo.GoString)) : Bool) || (_hostB == ("." : stdgo.GoString)) : Bool)) {
            return false;
        };
        return stdgo._internal.crypto.x509.X509__tolowercaseascii._toLowerCaseASCII(_hostA?.__copy__()) == (stdgo._internal.crypto.x509.X509__tolowercaseascii._toLowerCaseASCII(_hostB?.__copy__()));
    }
