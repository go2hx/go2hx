package stdgo._internal.go.constant;
function denom(_x:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L789"
        {
            final __type__ = _x;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                        var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L791"
                        return stdgo.Go.asInterface((1i64 : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                        var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L793"
                        return stdgo._internal.go.constant.Constant__makeint._makeInt(_x._val.denom());
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                        var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L795"
                        if (stdgo._internal.go.constant.Constant__smallfloat._smallFloat(_x._val)) {
                            var __tmp__ = _x._val.rat(null), _r:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, __1:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L797"
                            return stdgo._internal.go.constant.Constant__makeint._makeInt(_r.denom());
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                        var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L800"
                        break;
                    } else {
                        var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L802"
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v not Int or Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
                    };
                    break;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L804"
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal() : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal));
    }
