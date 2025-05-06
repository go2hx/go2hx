package stdgo._internal.go.constant;
function _makeFloat(_x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L309"
        if (_x.sign() == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L310"
            return stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__floatval0._floatVal0);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L312"
        if (_x.isInf()) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L313"
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal() : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L318"
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_floatval.T_floatVal(_x) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal));
    }
