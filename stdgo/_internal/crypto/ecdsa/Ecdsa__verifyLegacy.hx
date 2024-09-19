package stdgo._internal.crypto.ecdsa;
function _verifyLegacy(_pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__parseSignature._parseSignature(_sig), _rBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _sBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return false;
        };
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(_rBytes), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(_sBytes);
var _s = __1, _r = __0;
        var _c = (_pub.curve : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve);
        var n = _c.params().n;
        if (((_r.sign() <= (0 : stdgo.GoInt) : Bool) || (_s.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        if (((_r.cmp(n) >= (0 : stdgo.GoInt) : Bool) || (_s.cmp(n) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        var _e = stdgo._internal.crypto.ecdsa.Ecdsa__hashToInt._hashToInt(_hash, _c);
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse(_s, n);
        var _u1 = _e.mul(_e, _w);
        _u1.mod(_u1, n);
        var _u2 = _w.mul(_r, _w);
        _u2.mod(_u2, n);
        var __tmp__ = _c.scalarBaseMult(_u1.bytes()), _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._1;
        var __tmp__ = _c.scalarMult(_pub.x, _pub.y, _u2.bytes()), _x2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _y2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._1;
        var __tmp__ = _c.add(_x1, _y1, _x2, _y2), _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._1;
        if (((_x.sign() == (0 : stdgo.GoInt)) && (_y.sign() == (0 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        _x.mod(_x, n);
        return _x.cmp(_r) == ((0 : stdgo.GoInt));
    }
