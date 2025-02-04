package stdgo._internal.crypto.x509.pkix;
function _oidInAttributeTypeAndValue(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, _atv:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>):Bool {
        for (__0 => _a in _atv) {
            if (_a.type.equal(_oid)) {
                return true;
            };
        };
        return false;
    }
