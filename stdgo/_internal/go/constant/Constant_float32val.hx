package stdgo._internal.go.constant;
function float32Val(_x:stdgo._internal.go.constant.Constant_value.Value):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L538"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value);
                var _f = (_x : stdgo.GoFloat32);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L541"
                return { _0 : _f, _1 : (_f : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) == (_x) };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value);
                var __tmp__ = stdgo._internal.go.constant.Constant__newfloat._newFloat().setInt(_x._val).float32(), _f:stdgo.GoFloat32 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L544"
                return { _0 : _f, _1 : _acc == ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L546"
                return _x._val.float32();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value);
                var __tmp__ = _x._val.float32(), _f:stdgo.GoFloat32 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L549"
                return { _0 : _f, _1 : _acc == ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L551"
                return { _0 : (0 : stdgo.GoFloat64), _1 : false };
            } else {
                var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L553"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v not a Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
