package stdgo._internal.crypto.x509;
function _oidFromExtKeyUsage(_eku:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage):{ var _0 : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier; var _1 : Bool; } {
        var _oid = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier), _ok = false;
        for (__1 => _pair in stdgo._internal.crypto.x509.X509__extkeyusageoids._extKeyUsageOIDs) {
            if (_eku == (_pair._extKeyUsage)) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier; var _1 : Bool; } = { _0 : _pair._oid, _1 : true };
                    _oid = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return { _0 : _oid, _1 : _ok };
    }
