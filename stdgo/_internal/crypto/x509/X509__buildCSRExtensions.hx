package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _buildCSRExtensions(_template:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>):{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } {
        var _ret:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        if ((((((((_template.dnsnames.length) > (0 : stdgo.GoInt) : Bool) || ((_template.emailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || ((_template.ipaddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || ((_template.uris.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName, _template.extraExtensions) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.x509.X509__marshalSANs._marshalSANs(_template.dnsnames, _template.emailAddresses, _template.ipaddresses, _template.uris), _sanBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _1 : _err };
            };
            _ret = (_ret.__append__(({ id : stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName, value : _sanBytes } : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension)));
        };
        return { _0 : (_ret.__append__(...(_template.extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>))), _1 : (null : stdgo.Error) };
    }
