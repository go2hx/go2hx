package stdgo._internal.crypto.ecdsa;
function _parseSignature(_sig:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _r = (null : stdgo.Slice<stdgo.GoUInt8>), _s = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _inner:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _input = (_sig : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        if (((((!_input.readASN1((stdgo.Go.setRef(_inner) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || !_input.empty() : Bool) || !_inner.readASN1Integer(stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) : Bool) || !_inner.readASN1Integer(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) : Bool) || !_inner.empty() : Bool)) {
            return { _0 : _r = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _s = (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err = stdgo._internal.errors.Errors_new_.new_(("invalid ASN.1" : stdgo.GoString)) };
        };
        return { _0 : _r, _1 : _s, _2 : _err = (null : stdgo.Error) };
    }
