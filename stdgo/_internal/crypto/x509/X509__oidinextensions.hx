package stdgo._internal.crypto.x509;
function _oidInExtensions(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, _extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Bool {
        for (__1 => _e in _extensions) {
            if (_e.id.equal(_oid)) {
                return true;
            };
        };
        return false;
    }
