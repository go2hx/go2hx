package stdgo._internal.crypto.x509;
function _parseExtension(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension; var _1 : stdgo.Error; } {
        var _ext:stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension = ({} : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension);
        if (!_der.readASN1ObjectIdentifier((stdgo.Go.setRef(_ext.id) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>))) {
            return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension OID field" : stdgo.GoString)) };
        };
        if (_der.peekASN1Tag((1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            if (!_der.readASN1Boolean(stdgo.Go.pointer(_ext.critical))) {
                return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension critical field" : stdgo.GoString)) };
            };
        };
        var _val:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _val__pointer__ = (stdgo.Go.setRef(_val) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_der.readASN1(_val__pointer__, (4 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension value field" : stdgo.GoString)) };
        };
        _ext.value = _val;
        return { _0 : _ext?.__copy__(), _1 : (null : stdgo.Error) };
    }
