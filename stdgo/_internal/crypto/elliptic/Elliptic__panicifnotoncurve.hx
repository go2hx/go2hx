package stdgo._internal.crypto.elliptic;
function _panicIfNotOnCurve(_curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Void {
        if (((@:check2r _x.sign() == (0 : stdgo.GoInt)) && (@:check2r _y.sign() == (0 : stdgo.GoInt)) : Bool)) {
            return;
        };
        if (!_curve.isOnCurve(_x, _y)) {
            throw stdgo.Go.toInterface(("crypto/elliptic: attempted operation on invalid point" : stdgo.GoString));
        };
    }
