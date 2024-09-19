package stdgo._internal.crypto.ecdsa;
function sign(_rand:stdgo._internal.io.Io_Reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _2 : stdgo.Error; } {
        var _r = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _s = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa_signASN1.signASN1(_rand, _priv, _hash), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : null, _2 : _err };
        };
        {
            final __tmp__0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            final __tmp__1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            _r = __tmp__0;
            _s = __tmp__1;
        };
        var _inner:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _input = (_sig : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        if (((((!_input.readASN1((stdgo.Go.setRef(_inner) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || !_input.empty() : Bool) || !_inner.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_r))) : Bool) || !_inner.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_s))) : Bool) || !_inner.empty() : Bool)) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("invalid ASN.1 from SignASN1" : stdgo.GoString)) };
        };
        return { _0 : _r, _1 : _s, _2 : (null : stdgo.Error) };
    }