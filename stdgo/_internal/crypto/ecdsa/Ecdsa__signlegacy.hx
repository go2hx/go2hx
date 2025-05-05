package stdgo._internal.crypto.ecdsa;
function _signLegacy(_priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>, _csprng:stdgo._internal.io.Io_reader.Reader, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _sig = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _c = ((@:checkr _priv ?? throw "null pointer dereference").publicKey.curve : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
        var n = _c.params().n;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L82"
        if (n.sign() == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L83"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.ecdsa.Ecdsa__errzeroparam._errZeroParam };
                _sig = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _k:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _kInv:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _s:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L86"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L87"
            while (true) {
                {
                    var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__randfieldelement._randFieldElement(_c, _csprng);
                    _k = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L89"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L90"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        _sig = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _kInv = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_k, n);
                {
                    var __tmp__ = _c.scalarBaseMult(_k.bytes());
                    _r = @:tmpset0 __tmp__._0;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L96"
                _r.mod(_r, n);
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L97"
                if (_r.sign() != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L98"
                    break;
                };
            };
            var _e = stdgo._internal.crypto.ecdsa.Ecdsa__hashtoint._hashToInt(_hash, _c);
            _s = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul((@:checkr _priv ?? throw "null pointer dereference").d, _r);
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L104"
            _s.add(_s, _e);
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L105"
            _s.mul(_s, _kInv);
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L106"
            _s.mod(_s, n);
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L107"
            if (_s.sign() != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L108"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L112"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__encodesignature._encodeSignature(_r.bytes(), _s.bytes());
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
