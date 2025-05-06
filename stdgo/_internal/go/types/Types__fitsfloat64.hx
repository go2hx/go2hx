package stdgo._internal.go.types;
function _fitsFloat64(_x:stdgo._internal.go.constant.Constant_value.Value):Bool {
        var __tmp__ = stdgo._internal.go.constant.Constant_float64val.float64Val(_x), _f:stdgo.GoFloat64 = __tmp__._0, __0:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/const.go#L225"
        return !stdgo._internal.math.Math_isinf.isInf(_f, (0 : stdgo.GoInt));
    }
