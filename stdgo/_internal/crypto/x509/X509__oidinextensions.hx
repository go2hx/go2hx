package stdgo._internal.crypto.x509;
function _oidInExtensions(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, _extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1042"
        for (__1 => _e in _extensions) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1043"
            if (_e.id.equal(_oid)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1044"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1047"
        return false;
    }
