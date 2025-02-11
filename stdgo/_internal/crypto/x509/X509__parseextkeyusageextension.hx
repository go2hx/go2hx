package stdgo._internal.crypto.x509;
function _parseExtKeyUsageExtension(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>; var _1 : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>; var _2 : stdgo.Error; } {
        var _extKeyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _unknownUsages:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
        if (!@:check2 _der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>), _1 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid extended key usages" : stdgo.GoString)) };
        };
        while (!_der.empty()) {
            var _eku:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
            if (!@:check2 _der.readASN1ObjectIdentifier((stdgo.Go.setRef(_eku) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>), _1 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid extended key usages" : stdgo.GoString)) };
            };
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__extkeyusagefromoid._extKeyUsageFromOID(_eku), _extKeyUsage:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _extKeyUsages = (_extKeyUsages.__append__(_extKeyUsage));
                } else {
                    _unknownUsages = (_unknownUsages.__append__(_eku));
                };
            };
        };
        return { _0 : _extKeyUsages, _1 : _unknownUsages, _2 : (null : stdgo.Error) };
    }
