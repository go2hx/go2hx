package stdgo._internal.crypto.x509;
function _parseAI(_der:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier; var _1 : stdgo.Error; } {
        var _ai = (new stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L153"
        if (!_der.readASN1ObjectIdentifier((stdgo.Go.setRef(_ai.algorithm) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L154"
            return { _0 : _ai?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed OID" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L156"
        if (_der.empty()) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L157"
            return { _0 : _ai?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _params:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _tag:_internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = ((0 : stdgo.GoUInt8) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), _tag__pointer__ = stdgo.Go.pointer(_tag);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L161"
        if (!_der.readAnyASN1Element((stdgo.Go.setRef(_params) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _tag__pointer__)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L162"
            return { _0 : _ai?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed parameters" : stdgo.GoString)) };
        };
        _ai.parameters.tag = (_tag : stdgo.GoInt);
        _ai.parameters.fullBytes = _params;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L166"
        return { _0 : _ai?.__copy__(), _1 : (null : stdgo.Error) };
    }
