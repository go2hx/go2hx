package stdgo._internal.math.big;
function _alike(_x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L191"
        return ((_x.cmp(_y) == (0 : stdgo.GoInt)) && (_x.signbit() == _y.signbit()) : Bool);
    }
