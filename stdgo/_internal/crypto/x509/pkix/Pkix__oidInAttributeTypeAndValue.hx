package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
function _oidInAttributeTypeAndValue(_oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, _atv:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>):Bool {
        for (__0 => _a in _atv) {
            if (_a.type.equal(_oid)) {
                return true;
            };
        };
        return false;
    }
