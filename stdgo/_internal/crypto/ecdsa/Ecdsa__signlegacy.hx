package stdgo._internal.crypto.ecdsa;
function _signLegacy(_priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>, _csprng:stdgo._internal.io.Io_reader.Reader, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _sig = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _c = ((@:checkr _priv ?? throw "null pointer dereference").publicKey.curve : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
        var n = _c.params().n;
        if (@:check2r n.sign() == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.ecdsa.Ecdsa__errzeroparam._errZeroParam };
                _sig = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __3:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
var _s = __3, _r = __2, _kInv = __1, _k = __0;
        while (true) {
            while (true) {
                {
                    var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__randfieldelement._randFieldElement(_c, _csprng);
                    _k = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        _sig = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _kInv = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_k, n);
                {
                    var __tmp__ = _c.scalarBaseMult(@:check2r _k.bytes());
                    _r = @:tmpset0 __tmp__._0;
                };
                @:check2r _r.mod(_r, n);
                if (@:check2r _r.sign() != ((0 : stdgo.GoInt))) {
                    break;
                };
            };
            var _e = stdgo._internal.crypto.ecdsa.Ecdsa__hashtoint._hashToInt(_hash, _c);
            _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul((@:checkr _priv ?? throw "null pointer dereference").d, _r);
            @:check2r _s.add(_s, _e);
            @:check2r _s.mul(_s, _kInv);
            @:check2r _s.mod(_s, n);
            if (@:check2r _s.sign() != ((0 : stdgo.GoInt))) {
                break;
            };
        };
        return {
            final __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__encodesignature._encodeSignature(@:check2r _r.bytes(), @:check2r _s.bytes());
            _sig = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _sig, _1 : _err };
        };
    }
