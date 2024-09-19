package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _parseAI(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier; var _1 : stdgo.Error; } {
        var _ai = (new stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
        if (!_der.readASN1ObjectIdentifier((stdgo.Go.setRef(_ai.algorithm) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>))) {
            return { _0 : _ai?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed OID" : stdgo.GoString)) };
        };
        if (_der.empty()) {
            return { _0 : _ai?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _params:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag);
        if (!_der.readAnyASN1Element((stdgo.Go.setRef(_params) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), stdgo.Go.pointer(_tag))) {
            return { _0 : _ai?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed parameters" : stdgo.GoString)) };
        };
        _ai.parameters.tag = (_tag : stdgo.GoInt);
        _ai.parameters.fullBytes = _params;
        return { _0 : _ai?.__copy__(), _1 : (null : stdgo.Error) };
    }