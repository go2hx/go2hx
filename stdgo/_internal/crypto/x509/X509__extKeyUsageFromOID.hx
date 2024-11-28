package stdgo._internal.crypto.x509;
function _extKeyUsageFromOID(_oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):{ var _0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage; var _1 : Bool; } {
        var _eku = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage), _ok = false;
        for (__1 => _pair in stdgo._internal.crypto.x509.X509__extKeyUsageOIDs._extKeyUsageOIDs) {
            if (_oid.equal(_pair._oid)) {
                return { _0 : _eku = _pair._extKeyUsage, _1 : _ok = true };
            };
        };
        return { _0 : _eku, _1 : _ok };
    }
