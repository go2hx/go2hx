package stdgo._internal.go.constant;
function sign(_x:stdgo._internal.go.constant.Constant_value.Value):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L666"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L668"
                if ((_x < (0i64 : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L670"
                    return (-1 : stdgo.GoInt);
                } else if ((_x > (0i64 : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L672"
                    return (1 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L674"
                return (0 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L676"
                return _x._val.sign();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L678"
                return _x._val.sign();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L680"
                return _x._val.sign();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L682"
                return (stdgo._internal.go.constant.Constant_sign.sign(_x._re) | stdgo._internal.go.constant.Constant_sign.sign(_x._im) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L684"
                return (1 : stdgo.GoInt);
            } else {
                var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L686"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v not numeric" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
