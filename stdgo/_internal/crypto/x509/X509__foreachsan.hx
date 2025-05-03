package stdgo._internal.crypto.x509;
function _forEachSAN(_der:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_, _callback:(stdgo.GoInt, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L356"
        if (!_der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L357"
            return stdgo._internal.errors.Errors_new_.new_(("x509: invalid subject alternative names" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L359"
        while (!_der.empty()) {
            var _san:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            var _tag:_internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = ((0 : stdgo.GoUInt8) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), _tag__pointer__ = stdgo.Go.pointer(_tag);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L362"
            if (!_der.readAnyASN1((stdgo.Go.setRef(_san) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _tag__pointer__)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L363"
                return stdgo._internal.errors.Errors_new_.new_(("x509: invalid subject alternative name" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L365"
            {
                var _err = (_callback(((_tag ^ (128 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag) : stdgo.GoInt), _san) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L366"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L370"
        return (null : stdgo.Error);
    }
