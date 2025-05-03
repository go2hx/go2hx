package stdgo._internal.crypto.elliptic;
function _panicIfNotOnCurve(_curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L215"
        if (((_x.sign() == (0 : stdgo.GoInt)) && (_y.sign() == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L216"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L219"
        if (!_curve.isOnCurve(_x, _y)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/elliptic.go#L220"
            throw stdgo.Go.toInterface(("crypto/elliptic: attempted operation on invalid point" : stdgo.GoString));
        };
    }
