package stdgo._internal.crypto.x509;
function _parseExtension(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension; var _1 : stdgo.Error; } {
        var _ext:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension = ({} : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension);
        if (!@:check2 _der.readASN1ObjectIdentifier((stdgo.Go.setRef(_ext.id) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
            return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension OID field" : stdgo.GoString)) };
        };
        if (_der.peekASN1Tag((1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            if (!@:check2 _der.readASN1Boolean(stdgo.Go.pointer(_ext.critical))) {
                return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension critical field" : stdgo.GoString)) };
            };
        };
        var _val:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (!@:check2 _der.readASN1((stdgo.Go.setRef(_val) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (4 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension value field" : stdgo.GoString)) };
        };
        _ext.value = _val;
        return { _0 : _ext?.__copy__(), _1 : (null : stdgo.Error) };
    }
