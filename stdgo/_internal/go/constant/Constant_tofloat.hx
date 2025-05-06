package stdgo._internal.go.constant;
function toFloat(_x:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L909"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L911"
                return stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__i64tor._i64tor(_x));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L913"
                if (stdgo._internal.go.constant.Constant__smallint._smallInt(_x._val)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L914"
                    return stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__itor._itor(_x?.__copy__()));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L916"
                return stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__itof._itof(_x?.__copy__()));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L918"
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L920"
                if (stdgo._internal.go.constant.Constant_sign.sign(_x._im) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L921"
                    return stdgo._internal.go.constant.Constant_tofloat.toFloat(_x._re);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L924"
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal() : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal));
    }
