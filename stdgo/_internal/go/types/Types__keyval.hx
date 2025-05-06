package stdgo._internal.go.types;
function _keyVal(_x:stdgo._internal.go.constant.Constant_value.Value):stdgo.AnyInterface {
        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1444"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _x.kind();
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (5 : stdgo._internal.go.constant.Constant_kind.Kind)))) {
                        var _f = (stdgo._internal.go.constant.Constant_tofloat.toFloat(_x) : stdgo._internal.go.constant.Constant_value.Value);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1447"
                        if (_f.kind() != ((4 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                            var __tmp__ = stdgo._internal.go.constant.Constant_float64val.float64Val(stdgo._internal.go.constant.Constant_real.real(_x)), _r:stdgo.GoFloat64 = __tmp__._0, __0:Bool = __tmp__._1;
                            var __tmp__ = stdgo._internal.go.constant.Constant_float64val.float64Val(stdgo._internal.go.constant.Constant_imag.imag(_x)), _i:stdgo.GoFloat64 = __tmp__._0, __1:Bool = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1450"
                            return stdgo.Go.toInterface(new stdgo.GoComplex128(_r, _i));
                        };
                        _x = _f;
                        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1453"
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (4 : stdgo._internal.go.constant.Constant_kind.Kind)))) {
                        var _i = (stdgo._internal.go.constant.Constant_toint.toInt(_x) : stdgo._internal.go.constant.Constant_value.Value);
                        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1456"
                        if (_i.kind() != ((3 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                            var __tmp__ = stdgo._internal.go.constant.Constant_float64val.float64Val(_x), _v:stdgo.GoFloat64 = __tmp__._0, __0:Bool = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1458"
                            return stdgo.Go.toInterface(_v);
                        };
                        _x = _i;
                        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1461"
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo._internal.go.constant.Constant_kind.Kind)))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1463"
                        {
                            var __tmp__ = stdgo._internal.go.constant.Constant_int64val.int64Val(_x), _v:stdgo.GoInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1464"
                                return stdgo.Go.toInterface(_v);
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1466"
                        {
                            var __tmp__ = stdgo._internal.go.constant.Constant_uint64val.uint64Val(_x), _v:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1467"
                                return stdgo.Go.toInterface(_v);
                            };
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo._internal.go.constant.Constant_kind.Kind)))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1470"
                        return stdgo.Go.toInterface(stdgo._internal.go.constant.Constant_stringval.stringVal(_x));
                        break;
                        break;
                    } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo._internal.go.constant.Constant_kind.Kind)))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1472"
                        return stdgo.Go.toInterface(stdgo._internal.go.constant.Constant_boolval.boolVal(_x));
                        break;
                        break;
                    };
                };
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L1474"
        return stdgo.Go.toInterface(_x);
    }
