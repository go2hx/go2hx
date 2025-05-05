package stdgo._internal.math.big;
function _delta(_r:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _f:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).sub(_r, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFloat64(_f));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L540"
        return _d.abs(_d);
    }
