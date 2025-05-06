package stdgo._internal.go.constant;
function _makeRat(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo._internal.go.constant.Constant_value.Value {
        var _a = _x.num();
        var _b = _x.denom();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L297"
        if ((stdgo._internal.go.constant.Constant__smallint._smallInt(_a) && stdgo._internal.go.constant.Constant__smallint._smallInt(_b) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L299"
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_ratval.T_ratVal(_x) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L302"
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_floatval.T_floatVal(stdgo._internal.go.constant.Constant__newfloat._newFloat().setRat(_x)) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal));
    }
