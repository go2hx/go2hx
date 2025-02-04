package stdgo._internal.crypto.x509;
function _marshalCertificatePolicies(_policyIdentifiers:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension; var _1 : stdgo.Error; } {
        var _ext = ({ id : stdgo._internal.crypto.x509.X509__oidextensioncertificatepolicies._oidExtensionCertificatePolicies } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension);
        var _policies = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_t_policyinformation.T_policyInformation>((_policyIdentifiers.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_policyIdentifiers.length : stdgo.GoInt).toBasic() > 0 ? (_policyIdentifiers.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.X509_t_policyinformation.T_policyInformation)]) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_policyinformation.T_policyInformation>);
        for (_i => _policy in _policyIdentifiers) {
            _policies[(_i : stdgo.GoInt)].policy = _policy;
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_policies));
            _ext.value = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return { _0 : _ext?.__copy__(), _1 : _err };
    }
