package stdgo._internal.crypto.x509;
function _alreadyInChain(_candidate:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>):Bool {
        {};
        var _candidateSAN:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        for (__1 => _ext in (@:checkr _candidate ?? throw "null pointer dereference").extensions) {
            if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName)) {
                _candidateSAN = (stdgo.Go.setRef(_ext) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                break;
            };
        };
        for (__2 => _cert in _chain) {
            if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr _candidate ?? throw "null pointer dereference").rawSubject, (@:checkr _cert ?? throw "null pointer dereference").rawSubject)) {
                continue;
            };
            if (!(stdgo.Go.typeAssert(((@:checkr _candidate ?? throw "null pointer dereference").publicKey : stdgo._internal.crypto.x509.X509_t__alreadyinchain___localname___pubkeyequal_27559.T__alreadyInChain___localname___pubKeyEqual_27559)) : stdgo._internal.crypto.x509.X509_t__alreadyinchain___localname___pubkeyequal_27559.T__alreadyInChain___localname___pubKeyEqual_27559).equal(stdgo.Go.toInterface((@:checkr _cert ?? throw "null pointer dereference").publicKey))) {
                continue;
            };
            var _certSAN:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
            for (__3 => _ext in (@:checkr _cert ?? throw "null pointer dereference").extensions) {
                if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName)) {
                    _certSAN = (stdgo.Go.setRef(_ext) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                    break;
                };
            };
            if (((_candidateSAN == null || (_candidateSAN : Dynamic).__nil__) && (_certSAN == null || (_certSAN : Dynamic).__nil__) : Bool)) {
                return true;
            } else if (((_candidateSAN == null || (_candidateSAN : Dynamic).__nil__) || (_certSAN == null || (_certSAN : Dynamic).__nil__) : Bool)) {
                return false;
            };
            if (stdgo._internal.bytes.Bytes_equal.equal((@:checkr _candidateSAN ?? throw "null pointer dereference").value, (@:checkr _certSAN ?? throw "null pointer dereference").value)) {
                return true;
            };
        };
        return false;
    }
