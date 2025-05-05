package stdgo._internal.crypto.x509;
function _matchExactly(_hostA:stdgo.GoString, _hostB:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1010"
        if ((((_hostA == ((stdgo.Go.str() : stdgo.GoString)) || _hostA == (("." : stdgo.GoString)) : Bool) || _hostB == ((stdgo.Go.str() : stdgo.GoString)) : Bool) || (_hostB == ("." : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1011"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1013"
        return stdgo._internal.crypto.x509.X509__tolowercaseascii._toLowerCaseASCII(_hostA?.__copy__()) == (stdgo._internal.crypto.x509.X509__tolowercaseascii._toLowerCaseASCII(_hostB?.__copy__()));
    }
