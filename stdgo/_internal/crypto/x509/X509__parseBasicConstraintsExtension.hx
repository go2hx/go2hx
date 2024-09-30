package stdgo._internal.crypto.x509;
function _parseBasicConstraintsExtension(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : Bool; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _isCA:Bool = false;
        if (!_der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
        };
        if (_der.peekASN1Tag((1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            if (!_der.readASN1Boolean(stdgo.Go.pointer(_isCA))) {
                return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
            };
        };
        var _maxPathLen = (-1 : stdgo.GoInt);
        if (_der.peekASN1Tag((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            if (!_der.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.pointer(_maxPathLen)))) {
                return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
            };
        };
        return { _0 : _isCA, _1 : _maxPathLen, _2 : (null : stdgo.Error) };
    }
