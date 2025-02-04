package stdgo._internal.crypto.x509;
function _buildCSRExtensions(_template:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>):{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } {
        var _ret:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        if (((((((((@:checkr _template ?? throw "null pointer dereference").dNSNames.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").emailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").iPAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").uRIs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.x509.X509__marshalsans._marshalSANs((@:checkr _template ?? throw "null pointer dereference").dNSNames, (@:checkr _template ?? throw "null pointer dereference").emailAddresses, (@:checkr _template ?? throw "null pointer dereference").iPAddresses, (@:checkr _template ?? throw "null pointer dereference").uRIs), _sanBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
            };
            _ret = (_ret.__append__(({ id : stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName, value : _sanBytes } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)));
        };
        return { _0 : (_ret.__append__(...((@:checkr _template ?? throw "null pointer dereference").extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>))), _1 : (null : stdgo.Error) };
    }
