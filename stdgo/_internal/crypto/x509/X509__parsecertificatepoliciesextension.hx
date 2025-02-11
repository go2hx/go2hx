package stdgo._internal.crypto.x509;
function _parseCertificatePoliciesExtension(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>; var _1 : stdgo.Error; } {
        var _oids:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
        if (!@:check2 _der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid certificate policies" : stdgo.GoString)) };
        };
        while (!_der.empty()) {
            var _cp:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            if (!@:check2 _der.readASN1((stdgo.Go.setRef(_cp) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid certificate policies" : stdgo.GoString)) };
            };
            var _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
            if (!@:check2 _cp.readASN1ObjectIdentifier((stdgo.Go.setRef(_oid) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid certificate policies" : stdgo.GoString)) };
            };
            _oids = (_oids.__append__(_oid));
        };
        return { _0 : _oids, _1 : (null : stdgo.Error) };
    }
