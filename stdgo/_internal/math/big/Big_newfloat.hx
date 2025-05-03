package stdgo._internal.math.big;
function newFloat(_x:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L89"
        if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L90"
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("NewFloat(NaN)" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L92"
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setFloat64(_x);
    }
