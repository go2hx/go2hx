package stdgo._internal.crypto.x509;
function _alreadyInChain(_candidate:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>):Bool {
        {};
        var _candidateSAN:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L856"
        for (__1 => _ext in (@:checkr _candidate ?? throw "null pointer dereference").extensions) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L857"
            if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName)) {
                _candidateSAN = (stdgo.Go.setRef(_ext) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L859"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L863"
        for (__2 => _cert in _chain) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L864"
            if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr _candidate ?? throw "null pointer dereference").rawSubject, (@:checkr _cert ?? throw "null pointer dereference").rawSubject)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L865"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L867"
            if (!(stdgo.Go.typeAssert(((@:checkr _candidate ?? throw "null pointer dereference").publicKey : stdgo._internal.crypto.x509.X509_t__alreadyinchain___localname___pubkeyequal_27559.T__alreadyInChain___localname___pubKeyEqual_27559)) : stdgo._internal.crypto.x509.X509_t__alreadyinchain___localname___pubkeyequal_27559.T__alreadyInChain___localname___pubKeyEqual_27559).equal(stdgo.Go.toInterface((@:checkr _cert ?? throw "null pointer dereference").publicKey))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L868"
                continue;
            };
            var _certSAN:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L871"
            for (__3 => _ext in (@:checkr _cert ?? throw "null pointer dereference").extensions) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L872"
                if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName)) {
                    _certSAN = (stdgo.Go.setRef(_ext) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L874"
                    break;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L877"
            if ((({
                final value = _candidateSAN;
                (value == null || (value : Dynamic).__nil__);
            }) && ({
                final value = _certSAN;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L878"
                return true;
            } else if ((({
                final value = _candidateSAN;
                (value == null || (value : Dynamic).__nil__);
            }) || ({
                final value = _certSAN;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L880"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L882"
            if (stdgo._internal.bytes.Bytes_equal.equal((@:checkr _candidateSAN ?? throw "null pointer dereference").value, (@:checkr _certSAN ?? throw "null pointer dereference").value)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L883"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L886"
        return false;
    }
