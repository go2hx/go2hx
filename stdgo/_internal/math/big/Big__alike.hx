package stdgo._internal.math.big;
function _alike(_x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Bool {
        return ((@:check2r _x.cmp(_y) == (0 : stdgo.GoInt)) && (@:check2r _x.signbit() == @:check2r _y.signbit()) : Bool);
    }
