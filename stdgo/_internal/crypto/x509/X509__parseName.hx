package stdgo._internal.crypto.x509;
function _parseName(_raw:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence>; var _1 : stdgo.Error; } {
        if (!_raw.readASN1((stdgo.Go.setRef(_raw) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence" : stdgo.GoString)) };
        };
        var _rdnSeq:stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence = new stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence(0, 0);
        while (!_raw.empty()) {
            var _rdnSet:stdgo._internal.crypto.x509.pkix.Pkix_RelativeDistinguishedNameSET.RelativeDistinguishedNameSET = new stdgo._internal.crypto.x509.pkix.Pkix_RelativeDistinguishedNameSET.RelativeDistinguishedNameSET(0, 0);
            var _set:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            if (!_raw.readASN1((stdgo.Go.setRef(_set) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (49 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence" : stdgo.GoString)) };
            };
            while (!_set.empty()) {
                var _atav:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                if (!_set.readASN1((stdgo.Go.setRef(_atav) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence: invalid attribute" : stdgo.GoString)) };
                };
                var _attr:stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue);
                if (!_atav.readASN1ObjectIdentifier((stdgo.Go.setRef(_attr.type) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence: invalid attribute type" : stdgo.GoString)) };
                };
                var _rawValue:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                var _valueTag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag);
                var _valueTag__pointer__ = stdgo.Go.pointer(_valueTag);
                if (!_atav.readAnyASN1((stdgo.Go.setRef(_rawValue) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), _valueTag__pointer__)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence: invalid attribute value" : stdgo.GoString)) };
                };
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseASN1String._parseASN1String(_valueTag, _rawValue);
                    _attr.value = stdgo.Go.toInterface(__tmp__._0);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid RDNSequence: invalid attribute value: %s" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                };
                _rdnSet = (_rdnSet.__append__(_attr?.__copy__()));
            };
            _rdnSeq = (_rdnSeq.__append__(_rdnSet));
        };
        return { _0 : (stdgo.Go.setRef(_rdnSeq) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence>), _1 : (null : stdgo.Error) };
    }
