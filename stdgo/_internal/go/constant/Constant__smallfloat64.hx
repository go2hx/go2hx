package stdgo._internal.go.constant;
function _smallFloat64(_x:stdgo.GoFloat64):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L362"
        if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L363"
            return false;
        };
        var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_x), __1:stdgo.GoFloat64 = __tmp__._0, _e:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L366"
        return (((-4096 : stdgo.GoInt) < _e : Bool) && (_e < (4096 : stdgo.GoInt) : Bool) : Bool);
    }
