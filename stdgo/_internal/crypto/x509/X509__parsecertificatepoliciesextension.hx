package stdgo._internal.crypto.x509;
function _parseCertificatePoliciesExtension(_der:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>; var _1 : stdgo.Error; } {
        var _oids:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L440"
        if (!_der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L441"
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid certificate policies" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L443"
        while (!_der.empty()) {
            var _cp:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L445"
            if (!_der.readASN1((stdgo.Go.setRef(_cp) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L446"
                return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid certificate policies" : stdgo.GoString)) };
            };
            var _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L449"
            if (!_cp.readASN1ObjectIdentifier((stdgo.Go.setRef(_oid) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L450"
                return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid certificate policies" : stdgo.GoString)) };
            };
            _oids = (_oids.__append__(_oid) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L455"
        return { _0 : _oids, _1 : (null : stdgo.Error) };
    }
