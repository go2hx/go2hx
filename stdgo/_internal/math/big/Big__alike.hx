package stdgo._internal.math.big;
function _alike(_x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Bool {
        return ((_x.cmp(_y) == (0 : stdgo.GoInt)) && (_x.signbit() == _y.signbit()) : Bool);
    }
