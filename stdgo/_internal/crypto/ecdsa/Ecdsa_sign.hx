package stdgo._internal.crypto.ecdsa;
function sign(_rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } {
        var _r = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _s = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa_signasn1.signASN1(_rand, _priv, _hash), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } = { _0 : null, _1 : null, _2 : _err };
                _r = __tmp__._0;
                _s = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        {
            final __tmp__0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            final __tmp__1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            _r = __tmp__0;
            _s = __tmp__1;
        };
        var _inner:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _input = (_sig : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (((((!@:check2 _input.readASN1((stdgo.Go.setRef(_inner) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_input.empty() : Bool) || !@:check2 _inner.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_r))) : Bool) || !@:check2 _inner.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_s))) : Bool) || !_inner.empty() : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } = { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("invalid ASN.1 from SignASN1" : stdgo.GoString)) };
                _r = __tmp__._0;
                _s = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } = { _0 : _r, _1 : _s, _2 : (null : stdgo.Error) };
            _r = __tmp__._0;
            _s = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
