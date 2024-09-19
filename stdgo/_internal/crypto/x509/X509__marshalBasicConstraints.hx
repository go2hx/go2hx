package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _marshalBasicConstraints(_isCA:Bool, _maxPathLen:stdgo.GoInt, _maxPathLenZero:Bool):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension; var _1 : stdgo.Error; } {
        var _ext = ({ id : stdgo._internal.crypto.x509.X509__oidExtensionBasicConstraints._oidExtensionBasicConstraints, critical : true } : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension);
        if (((_maxPathLen == (0 : stdgo.GoInt)) && !_maxPathLenZero : Bool)) {
            _maxPathLen = (-1 : stdgo.GoInt);
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface((new stdgo._internal.crypto.x509.X509_T_basicConstraints.T_basicConstraints(_isCA, _maxPathLen) : stdgo._internal.crypto.x509.X509_T_basicConstraints.T_basicConstraints)));
            _ext.value = __tmp__._0;
            _err = __tmp__._1;
        };
        return { _0 : _ext?.__copy__(), _1 : _err };
    }
