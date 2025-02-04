package stdgo._internal.crypto.x509;
function _extKeyUsageFromOID(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):{ var _0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage; var _1 : Bool; } {
        var _eku = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage), _ok = false;
        for (__1 => _pair in stdgo._internal.crypto.x509.X509__extkeyusageoids._extKeyUsageOIDs) {
            if (_oid.equal(_pair._oid)) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage; var _1 : Bool; } = { _0 : _pair._extKeyUsage, _1 : true };
                    _eku = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return { _0 : _eku, _1 : _ok };
    }
