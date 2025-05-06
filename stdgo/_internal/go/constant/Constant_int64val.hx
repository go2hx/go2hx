package stdgo._internal.go.constant;
function int64Val(_x:stdgo._internal.go.constant.Constant_value.Value):{ var _0 : stdgo.GoInt64; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L508"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L510"
                return { _0 : (_x : stdgo.GoInt64), _1 : true };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L512"
                return { _0 : _x._val.int64(), _1 : false };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L514"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : false };
            } else {
                var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L516"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v not an Int" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
