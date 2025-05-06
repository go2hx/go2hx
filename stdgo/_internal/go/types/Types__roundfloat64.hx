package stdgo._internal.go.types;
function _roundFloat64(_x:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        var __tmp__ = stdgo._internal.go.constant.Constant_float64val.float64Val(_x), _f:stdgo.GoFloat64 = __tmp__._0, __0:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/const.go#L230"
        if (!stdgo._internal.math.Math_isinf.isInf(_f, (0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/const.go#L231"
            return stdgo._internal.go.constant.Constant_makefloat64.makeFloat64(_f);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/const.go#L233"
        return (null : stdgo._internal.go.constant.Constant_value.Value);
    }
