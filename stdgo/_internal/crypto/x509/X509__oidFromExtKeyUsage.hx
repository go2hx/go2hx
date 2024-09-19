package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _oidFromExtKeyUsage(_eku:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage):{ var _0 : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier; var _1 : Bool; } {
        var _oid = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0), _ok = false;
        for (__1 => _pair in stdgo._internal.crypto.x509.X509__extKeyUsageOIDs._extKeyUsageOIDs) {
            if (_eku == (_pair._extKeyUsage)) {
                return { _0 : _pair._oid, _1 : true };
            };
        };
        return { _0 : _oid, _1 : _ok };
    }