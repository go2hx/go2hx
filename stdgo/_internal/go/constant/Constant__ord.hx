package stdgo._internal.go.constant;
function _ord(_x:stdgo._internal.go.constant.Constant_value.Value):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1021"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1027"
                return (0 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1029"
                return (1 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1031"
                return (2 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1033"
                return (3 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1035"
                return (4 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1037"
                return (5 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1039"
                return (6 : stdgo.GoInt);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1025"
                return (-1 : stdgo.GoInt);
            };
        };
    }
