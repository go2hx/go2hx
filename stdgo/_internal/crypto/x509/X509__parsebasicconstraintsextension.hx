package stdgo._internal.crypto.x509;
function _parseBasicConstraintsExtension(_der:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : Bool; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _isCA:Bool = false, _isCA__pointer__ = stdgo.Go.pointer(_isCA);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L336"
        if (!_der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L337"
            return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L339"
        if (_der.peekASN1Tag((1 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L340"
            if (!_der.readASN1Boolean(_isCA__pointer__)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L341"
                return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
            };
        };
        var _maxPathLen = (-1 : stdgo.GoInt);
        var _maxPathLen__pointer__ = stdgo.Go.pointer(_maxPathLen);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L345"
        if (_der.peekASN1Tag((2 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L346"
            if (!_der.readASN1Integer(stdgo.Go.toInterface(_maxPathLen__pointer__))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L347"
                return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L352"
        return { _0 : _isCA, _1 : _maxPathLen, _2 : (null : stdgo.Error) };
    }
