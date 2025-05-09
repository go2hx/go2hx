package stdgo._internal.crypto.ecdsa;
function _parseSignature(_sig:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _r = (null : stdgo.Slice<stdgo.GoUInt8>), _s = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _inner:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _input = (_sig : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L552"
        if (((((!_input.readASN1((stdgo.Go.setRef(_inner) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_input.empty() : Bool) || !_inner.readASN1Integer(stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) : Bool) || !_inner.readASN1Integer(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) : Bool) || !_inner.empty() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L557"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("invalid ASN.1" : stdgo.GoString)) };
                _r = __tmp__._0;
                _s = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L559"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _r, _1 : _s, _2 : (null : stdgo.Error) };
            _r = __tmp__._0;
            _s = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
