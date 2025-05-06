package stdgo._internal.go.constant;
function bitLen(_x:stdgo._internal.go.constant.Constant_value.Value):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L646"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value);
                var _u = (_x : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L649"
                if ((_x < (0i64 : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : Bool)) {
                    _u = (-_x : stdgo.GoUInt64);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L652"
                return ((64 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_u) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L654"
                return _x._val.bitLen();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L656"
                return (0 : stdgo.GoInt);
            } else {
                var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L658"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v not an Int" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
