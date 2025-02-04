package stdgo._internal.crypto.x509;
function _marshalBasicConstraints(_isCA:Bool, _maxPathLen:stdgo.GoInt, _maxPathLenZero:Bool):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension; var _1 : stdgo.Error; } {
        var _ext = ({ id : stdgo._internal.crypto.x509.X509__oidextensionbasicconstraints._oidExtensionBasicConstraints, critical : true } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension);
        if (((_maxPathLen == (0 : stdgo.GoInt)) && !_maxPathLenZero : Bool)) {
            _maxPathLen = (-1 : stdgo.GoInt);
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_t_basicconstraints.T_basicConstraints(_isCA, _maxPathLen) : stdgo._internal.crypto.x509.X509_t_basicconstraints.T_basicConstraints))));
            _ext.value = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return { _0 : _ext?.__copy__(), _1 : _err };
    }
