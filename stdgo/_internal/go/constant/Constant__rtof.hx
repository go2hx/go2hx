package stdgo._internal.go.constant;
function _rtof(_x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal):stdgo._internal.go.constant.Constant_t_floatval.T_floatVal {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L284"
        return (new stdgo._internal.go.constant.Constant_t_floatval.T_floatVal(stdgo._internal.go.constant.Constant__newfloat._newFloat().setRat(_x._val)) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal);
    }
