package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _alreadyInChain(_candidate:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>):Bool {
        {};
        var _candidateSAN:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        for (__1 => _ext in _candidate.extensions) {
            if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName)) {
                _candidateSAN = (stdgo.Go.setRef(_ext) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
                break;
            };
        };
        for (__2 => _cert in _chain) {
            if (!stdgo._internal.bytes.Bytes_equal.equal(_candidate.rawSubject, _cert.rawSubject)) {
                continue;
            };
            if (!(stdgo.Go.typeAssert((_candidate.publicKey : stdgo._internal.crypto.x509.X509_T__alreadyInChain___localname___pubKeyEqual_27559.T__alreadyInChain___localname___pubKeyEqual_27559)) : stdgo._internal.crypto.x509.X509_T__alreadyInChain___localname___pubKeyEqual_27559.T__alreadyInChain___localname___pubKeyEqual_27559).equal(stdgo.Go.toInterface(_cert.publicKey))) {
                continue;
            };
            var _certSAN:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
            for (__3 => _ext in _cert.extensions) {
                if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName)) {
                    _certSAN = (stdgo.Go.setRef(_ext) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
                    break;
                };
            };
            if (((_candidateSAN == null) || (_candidateSAN : Dynamic).__nil__ && (_certSAN == null) || (_certSAN : Dynamic).__nil__ : Bool)) {
                return true;
            } else if ((((_candidateSAN == null) || (_candidateSAN : Dynamic).__nil__) || ((_certSAN == null) || (_certSAN : Dynamic).__nil__) : Bool)) {
                return false;
            };
            if (stdgo._internal.bytes.Bytes_equal.equal(_candidateSAN.value, _certSAN.value)) {
                return true;
            };
        };
        return false;
    }
