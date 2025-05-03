package stdgo._internal.crypto.x509.pkix;
function _oidInAttributeTypeAndValue(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, _atv:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L275"
        for (__0 => _a in _atv) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L276"
            if (_a.type.equal(_oid)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L277"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L280"
        return false;
    }
