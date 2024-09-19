package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _oidInExtensions(_oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, _extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>):Bool {
        for (__1 => _e in _extensions) {
            if (_e.id.equal(_oid)) {
                return true;
            };
        };
        return false;
    }