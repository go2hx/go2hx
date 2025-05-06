package stdgo._internal.go.constant;
function _makeInt(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L288"
        if (_x.isInt64()) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L289"
            return stdgo.Go.asInterface((_x.int64() : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L291"
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_intval.T_intVal(_x) : stdgo._internal.go.constant.Constant_t_intval.T_intVal));
    }
