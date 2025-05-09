package stdgo._internal.crypto.ecdsa;
function sign(_rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } {
        var _r = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _s = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa_signasn1.signASN1(_rand, _priv, _hash), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L60"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L61"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } = { _0 : null, _1 : null, _2 : _err };
                _r = __tmp__._0;
                _s = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        {
            final __tmp__0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            final __tmp__1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            _r = @:binopAssign __tmp__0;
            _s = @:binopAssign __tmp__1;
        };
        var _inner:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _input = (_sig : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L67"
        if (((((!_input.readASN1((stdgo.Go.setRef(_inner) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_input.empty() : Bool) || !_inner.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_r))) : Bool) || !_inner.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_s))) : Bool) || !_inner.empty() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L72"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } = { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("invalid ASN.1 from SignASN1" : stdgo.GoString)) };
                _r = __tmp__._0;
                _s = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L74"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } = { _0 : _r, _1 : _s, _2 : (null : stdgo.Error) };
            _r = __tmp__._0;
            _s = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
