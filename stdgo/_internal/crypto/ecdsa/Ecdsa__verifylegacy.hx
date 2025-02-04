package stdgo._internal.crypto.ecdsa;
function _verifyLegacy(_pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__parsesignature._parseSignature(_sig), _rBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _sBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return false;
        };
        var __0 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_rBytes), __1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_sBytes);
var _s = __1, _r = __0;
        var _c = ((@:checkr _pub ?? throw "null pointer dereference").curve : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
        var n = _c.params().n;
        if (((@:check2r _r.sign() <= (0 : stdgo.GoInt) : Bool) || (@:check2r _s.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        if (((@:check2r _r.cmp(n) >= (0 : stdgo.GoInt) : Bool) || (@:check2r _s.cmp(n) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        var _e = stdgo._internal.crypto.ecdsa.Ecdsa__hashtoint._hashToInt(_hash, _c);
        var _w = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_s, n);
        var _u1 = @:check2r _e.mul(_e, _w);
        @:check2r _u1.mod(_u1, n);
        var _u2 = @:check2r _w.mul(_r, _w);
        @:check2r _u2.mod(_u2, n);
        var __tmp__ = _c.scalarBaseMult(@:check2r _u1.bytes()), _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
        var __tmp__ = _c.scalarMult((@:checkr _pub ?? throw "null pointer dereference").x, (@:checkr _pub ?? throw "null pointer dereference").y, @:check2r _u2.bytes()), _x2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _y2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
        var __tmp__ = _c.add(_x1, _y1, _x2, _y2), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
        if (((@:check2r _x.sign() == (0 : stdgo.GoInt)) && (@:check2r _y.sign() == (0 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        @:check2r _x.mod(_x, n);
        return @:check2r _x.cmp(_r) == ((0 : stdgo.GoInt));
    }
