package stdgo._internal.math.big;
function newRat(_a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat.go#L34"
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFrac64(_a, _b);
    }
