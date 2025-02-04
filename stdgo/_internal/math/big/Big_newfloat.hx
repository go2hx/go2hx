package stdgo._internal.math.big;
function newFloat(_x:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_errnan.ErrNaN(("NewFloat(NaN)" : stdgo.GoString)) : stdgo._internal.math.big.Big_errnan.ErrNaN)));
        };
        return @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setFloat64(_x);
    }
