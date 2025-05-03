package stdgo._internal.math;
function _trunc(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/floor.go#L69"
        if (((_x == ((0 : stdgo.GoFloat64)) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool) || stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/floor.go#L70"
            return _x;
        };
        var __tmp__ = stdgo._internal.math.Math_modf.modf(_x), _d:stdgo.GoFloat64 = __tmp__._0, __0:stdgo.GoFloat64 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/floor.go#L73"
        return _d;
    }
