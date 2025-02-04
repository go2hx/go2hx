package stdgo._internal.crypto.x509;
function _parseCSRExtensions(_rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>):{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } {
        {};
        var _ret:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        var _requestedExts = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        for (__1 => _rawAttr in _rawAttributes) {
            var _attr:stdgo._internal.crypto.x509.X509_t__parsecsrextensions___localname___pkcs10attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210 = ({} : stdgo._internal.crypto.x509.X509_t__parsecsrextensions___localname___pkcs10attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210);
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_rawAttr.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_attr) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t__parsecsrextensions___localname___pkcs10attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210>)))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null || (_rest.length) != ((0 : stdgo.GoInt)) : Bool) || (_attr.values.length == (0 : stdgo.GoInt)) : Bool)) {
                    continue;
                };
            };
            if (!_attr.id.equal(stdgo._internal.crypto.x509.X509__oidextensionrequest._oidExtensionRequest)) {
                continue;
            };
            var _extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_attr.values[(0 : stdgo.GoInt)].fullBytes, stdgo.Go.toInterface((stdgo.Go.setRef(_extensions) : stdgo.Ref<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>>))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                };
            };
            for (__3 => _ext in _extensions) {
                var _oidStr = ((_ext.id.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if ((_requestedExts[_oidStr] ?? false)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate request contains duplicate requested extensions" : stdgo.GoString)) };
                };
                _requestedExts[_oidStr] = true;
            };
            _ret = (_ret.__append__(...(_extensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>)));
        };
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
