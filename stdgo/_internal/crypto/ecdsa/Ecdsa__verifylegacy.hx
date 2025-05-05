package stdgo._internal.crypto.ecdsa;
function _verifyLegacy(_pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__parsesignature._parseSignature(_sig), _rBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _sBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L131"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L132"
            return false;
        };
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_rBytes), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_sBytes);
var _s = __1, _r = __0;
        var _c = ((@:checkr _pub ?? throw "null pointer dereference").curve : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
        var n = _c.params().n;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L139"
        if (((_r.sign() <= (0 : stdgo.GoInt) : Bool) || (_s.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L140"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L142"
        if (((_r.cmp(n) >= (0 : stdgo.GoInt) : Bool) || (_s.cmp(n) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L143"
            return false;
        };
        var _e = stdgo._internal.crypto.ecdsa.Ecdsa__hashtoint._hashToInt(_hash, _c);
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_s, n);
        var _u1 = _e.mul(_e, _w);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L151"
        _u1.mod(_u1, n);
        var _u2 = _w.mul(_r, _w);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L153"
        _u2.mod(_u2, n);
        var __tmp__ = _c.scalarBaseMult(_u1.bytes()), _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
        var __tmp__ = _c.scalarMult((@:checkr _pub ?? throw "null pointer dereference").x, (@:checkr _pub ?? throw "null pointer dereference").y, _u2.bytes()), _x2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _y2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
        var __tmp__ = _c.add(_x1, _y1, _x2, _y2), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L159"
        if (((_x.sign() == (0 : stdgo.GoInt)) && (_y.sign() == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L160"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L162"
        _x.mod(_x, n);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L163"
        return _x.cmp(_r) == ((0 : stdgo.GoInt));
    }
