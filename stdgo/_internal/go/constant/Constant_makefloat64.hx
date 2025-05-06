package stdgo._internal.go.constant;
function makeFloat64(_x:stdgo.GoFloat64):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L413"
        if ((stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L414"
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal() : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L416"
        if (stdgo._internal.go.constant.Constant__smallfloat64._smallFloat64(_x)) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L417"
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_ratval.T_ratVal(stdgo._internal.go.constant.Constant__newrat._newRat().setFloat64((_x + (0 : stdgo.GoFloat64) : stdgo.GoFloat64))) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L419"
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_floatval.T_floatVal(stdgo._internal.go.constant.Constant__newfloat._newFloat().setFloat64((_x + (0 : stdgo.GoFloat64) : stdgo.GoFloat64))) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal));
    }
