package stdgo._internal.crypto.x509;
function _parseCertificatePoliciesExtension(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>; var _1 : stdgo.Error; } {
        var _oids:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>);
        if (!_der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid certificate policies" : stdgo.GoString)) };
        };
        while (!_der.empty()) {
            var _cp:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            var _cp__pointer__ = (stdgo.Go.setRef(_cp) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
            if (!_der.readASN1(_cp__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid certificate policies" : stdgo.GoString)) };
            };
            var _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0);
            var _oid__pointer__ = (stdgo.Go.setRef(_oid) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>);
            if (!_cp.readASN1ObjectIdentifier(_oid__pointer__)) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid certificate policies" : stdgo.GoString)) };
            };
            _oids = (_oids.__append__(_oid));
        };
        return { _0 : _oids, _1 : (null : stdgo.Error) };
    }
