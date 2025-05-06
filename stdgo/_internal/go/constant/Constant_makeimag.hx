package stdgo._internal.go.constant;
function makeImag(_x:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L811"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L813"
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L815"
                return stdgo._internal.go.constant.Constant__makecomplex._makeComplex(stdgo.Go.asInterface((0i64 : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)), _x);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L817"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v not Int or Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
