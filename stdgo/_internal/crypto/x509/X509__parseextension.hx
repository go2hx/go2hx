package stdgo._internal.crypto.x509;
function _parseExtension(_der:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension; var _1 : stdgo.Error; } {
        var _ext:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension = ({} : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L201"
        if (!_der.readASN1ObjectIdentifier((stdgo.Go.setRef(_ext.id) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L202"
            return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension OID field" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L204"
        if (_der.peekASN1Tag((1 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L205"
            if (!_der.readASN1Boolean(stdgo.Go.pointer(_ext.critical))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L206"
                return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension critical field" : stdgo.GoString)) };
            };
        };
        var _val:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L210"
        if (!_der.readASN1((stdgo.Go.setRef(_val) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (4 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L211"
            return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension value field" : stdgo.GoString)) };
        };
        _ext.value = _val;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L214"
        return { _0 : _ext?.__copy__(), _1 : (null : stdgo.Error) };
    }
