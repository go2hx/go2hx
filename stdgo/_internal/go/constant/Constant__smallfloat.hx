package stdgo._internal.go.constant;
function _smallFloat(_x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L372"
        if (_x.isInf()) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L373"
            return false;
        };
        var _e = (_x.mantExp(null) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L376"
        return (((-4096 : stdgo.GoInt) < _e : Bool) && (_e < (4096 : stdgo.GoInt) : Bool) : Bool);
    }
