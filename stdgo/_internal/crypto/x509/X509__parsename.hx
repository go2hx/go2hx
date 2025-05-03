package stdgo._internal.crypto.x509;
function _parseName(_raw:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L112"
        if (!_raw.readASN1((stdgo.Go.setRef(_raw) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L113"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence" : stdgo.GoString)) };
        };
        var _rdnSeq:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence = (new stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence(0, 0) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L117"
        while (!_raw.empty()) {
            var _rdnSet:stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednameset.RelativeDistinguishedNameSET = (new stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednameset.RelativeDistinguishedNameSET(0, 0) : stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednameset.RelativeDistinguishedNameSET);
            var _set:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L120"
            if (!_raw.readASN1((stdgo.Go.setRef(_set) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (49 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L121"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L123"
            while (!_set.empty()) {
                var _atav:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L125"
                if (!_set.readASN1((stdgo.Go.setRef(_atav) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L126"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence: invalid attribute" : stdgo.GoString)) };
                };
                var _attr:stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue = ({} : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L129"
                if (!_atav.readASN1ObjectIdentifier((stdgo.Go.setRef(_attr.type) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L130"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence: invalid attribute type" : stdgo.GoString)) };
                };
                var _rawValue:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                var _valueTag:_internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = ((0 : stdgo.GoUInt8) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), _valueTag__pointer__ = stdgo.Go.pointer(_valueTag);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L134"
                if (!_atav.readAnyASN1((stdgo.Go.setRef(_rawValue) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _valueTag__pointer__)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L135"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RDNSequence: invalid attribute value" : stdgo.GoString)) };
                };
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseasn1string._parseASN1String(_valueTag, _rawValue);
                    _attr.value = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L139"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L140"
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid RDNSequence: invalid attribute value: %s" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                };
                _rdnSet = (_rdnSet.__append__(_attr?.__copy__()) : stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednameset.RelativeDistinguishedNameSET);
            };
            _rdnSeq = (_rdnSeq.__append__(_rdnSet) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L148"
        return { _0 : (stdgo.Go.setRef(_rdnSeq) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence>), _1 : (null : stdgo.Error) };
    }
