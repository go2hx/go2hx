package stdgo._internal.go.constant;
function makeUint64(_x:stdgo.GoUInt64):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L403"
        if ((_x < (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L404"
            return stdgo.Go.asInterface(((_x : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L406"
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_intval.T_intVal(stdgo._internal.go.constant.Constant__newint._newInt().setUint64(_x)) : stdgo._internal.go.constant.Constant_t_intval.T_intVal));
    }
