package stdgo._internal.go.constant;
function shift(_x:stdgo._internal.go.constant.Constant_value.Value, _op:stdgo._internal.go.token.Token_token.Token, _s:stdgo.GoUInt):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1283"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1285"
                return stdgo.Go.asInterface(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1288"
                if (_s == ((0u32 : stdgo.GoUInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1289"
                    return stdgo.Go.asInterface(_x);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1291"
                {
                    final __value__ = _op;
                    if (__value__ == ((20 : stdgo._internal.go.token.Token_token.Token))) {
                        var _z = stdgo._internal.go.constant.Constant__i64toi._i64toi(_x)._val;
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1294"
                        return stdgo._internal.go.constant.Constant__makeint._makeInt(_z.lsh(_z, _s));
                    } else if (__value__ == ((21 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1296"
                        return stdgo.Go.asInterface((_x >> _s : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1300"
                if (_s == ((0u32 : stdgo.GoUInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1301"
                    return stdgo.Go.asInterface(_x);
                };
                var _z = stdgo._internal.go.constant.Constant__newint._newInt();
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1304"
                {
                    final __value__ = _op;
                    if (__value__ == ((20 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1306"
                        return stdgo._internal.go.constant.Constant__makeint._makeInt(_z.lsh(_x._val, _s));
                    } else if (__value__ == ((21 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1308"
                        return stdgo._internal.go.constant.Constant__makeint._makeInt(_z.rsh(_x._val, _s));
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1312"
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid shift %v %s %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_s)));
    }
