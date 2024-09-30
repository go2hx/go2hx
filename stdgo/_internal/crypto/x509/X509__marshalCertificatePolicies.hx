package stdgo._internal.crypto.x509;
function _marshalCertificatePolicies(_policyIdentifiers:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension; var _1 : stdgo.Error; } {
        var _ext = ({ id : stdgo._internal.crypto.x509.X509__oidExtensionCertificatePolicies._oidExtensionCertificatePolicies } : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension);
        var _policies = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_T_policyInformation.T_policyInformation>((_policyIdentifiers.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_policyIdentifiers.length : stdgo.GoInt).toBasic() > 0 ? (_policyIdentifiers.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.X509_T_policyInformation.T_policyInformation)]) : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_policyInformation.T_policyInformation>);
        for (_i => _policy in _policyIdentifiers) {
            _policies[(_i : stdgo.GoInt)].policy = _policy;
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_policies));
            _ext.value = __tmp__._0;
            _err = __tmp__._1;
        };
        return { _0 : _ext?.__copy__(), _1 : _err };
    }
