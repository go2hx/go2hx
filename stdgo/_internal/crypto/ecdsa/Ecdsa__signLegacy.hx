package stdgo._internal.crypto.ecdsa;
function _signLegacy(_priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>, _csprng:stdgo._internal.io.Io_Reader.Reader, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _sig = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _c = (_priv.publicKey.curve : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve);
        var n = _c.params().n;
        if (n.sign() == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.ecdsa.Ecdsa__errZeroParam._errZeroParam };
        };
        var __0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __3:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
var _s = __3, _r = __2, _kInv = __1, _k = __0;
        while (true) {
            while (true) {
                {
                    var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__randFieldElement._randFieldElement(_c, _csprng);
                    _k = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
                _kInv = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse(_k, n);
                {
                    var __tmp__ = _c.scalarBaseMult(_k.bytes());
                    _r = __tmp__._0;
                };
                _r.mod(_r, n);
                if (_r.sign() != ((0 : stdgo.GoInt))) {
                    break;
                };
            };
            var _e = stdgo._internal.crypto.ecdsa.Ecdsa__hashToInt._hashToInt(_hash, _c);
            _s = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_priv.d, _r);
            _s.add(_s, _e);
            _s.mul(_s, _kInv);
            _s.mod(_s, n);
            if (_s.sign() != ((0 : stdgo.GoInt))) {
                break;
            };
        };
        return stdgo._internal.crypto.ecdsa.Ecdsa__encodeSignature._encodeSignature(_r.bytes(), _s.bytes());
    }
