package stdgo._internal.go.constant;
function unaryOp(_op:stdgo._internal.go.token.Token_token.Token, _y:stdgo._internal.go.constant.Constant_value.Value, _prec:stdgo.GoUInt):stdgo._internal.go.constant.Constant_value.Value {
        var _y_13 = @:invalid_type null;
        var _z_9:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _y_4:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal);
        var _y_12:stdgo._internal.go.constant.Constant_t_intval.T_intVal = ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal);
        var _y_11:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _z_6:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _y_5:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
        var _y_14:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _y_10:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _im_8:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _re_7:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _y_3:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal);
        var _y_15:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
        var _y_2:stdgo._internal.go.constant.Constant_t_intval.T_intVal = ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal);
        var _y_1:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _y_0:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 5121324i64;
                } else if (__value__ == (5121324i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L959"
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5121337i64;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5121458i64;
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5121955i64;
                        } else if (__value__ == ((43 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5122409i64;
                        } else {
                            _gotoNext = 5122518i64;
                        };
                    };
                } else if (__value__ == (5121337i64)) {
                    0i64;
                    _gotoNext = 5121355i64;
                } else if (__value__ == (5121355i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L961"
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                            _gotoNext = 5121375i64;
                        } else {
                            _gotoNext = 5122518i64;
                        };
                    };
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5121375i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L963"
                    return _y;
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5121458i64)) {
                    0i64;
                    _gotoNext = 5121476i64;
                } else if (__value__ == (5121476i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L967"
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value);
                            _y_0 = _y;
                            _gotoNext = 5121501i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                            var _y:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value);
                            _y_1 = _y;
                            _gotoNext = 5121532i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value);
                            _y_2 = _y;
                            _gotoNext = 5121660i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value);
                            _y_3 = _y;
                            _gotoNext = 5121714i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value);
                            _y_4 = _y;
                            _gotoNext = 5121768i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value);
                            _y_5 = _y;
                            _gotoNext = 5121828i64;
                        } else {
                            var _y:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _gotoNext = 5122518i64;
                        };
                    };
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5121501i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L969"
                    return stdgo.Go.asInterface(_y_0);
                    _y_0;
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5121532i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L971"
                    {
                        _z_6 = -_y_1;
                        if (_z_6 != (_y_1)) {
                            _gotoNext = 5121569i64;
                        } else {
                            _gotoNext = 5121607i64;
                        };
                    };
                } else if (__value__ == (5121569i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L972"
                    return stdgo.Go.asInterface(_z_6);
                    _gotoNext = 5121607i64;
                } else if (__value__ == (5121607i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L974"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(stdgo._internal.go.constant.Constant__newint._newInt().neg(stdgo._internal.math.big.Big_newint.newInt((_y_1 : stdgo.GoInt64))));
                    _y_1;
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5121660i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L976"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(stdgo._internal.go.constant.Constant__newint._newInt().neg(_y_2._val));
                    _y_2;
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5121714i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L978"
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(stdgo._internal.go.constant.Constant__newrat._newRat().neg(_y_3._val));
                    _y_3;
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5121768i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L980"
                    return stdgo._internal.go.constant.Constant__makefloat._makeFloat(stdgo._internal.go.constant.Constant__newfloat._newFloat().neg(_y_4._val));
                    _y_4;
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5121828i64)) {
                    _re_7 = stdgo._internal.go.constant.Constant_unaryop.unaryOp((13 : stdgo._internal.go.token.Token_token.Token), _y_5._re, (0u32 : stdgo.GoUInt));
                    _im_8 = stdgo._internal.go.constant.Constant_unaryop.unaryOp((13 : stdgo._internal.go.token.Token_token.Token), _y_5._im, (0u32 : stdgo.GoUInt));
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L984"
                    return stdgo._internal.go.constant.Constant__makecomplex._makeComplex(_re_7, _im_8);
                    _y_5;
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5121955i64)) {
                    _z_9 = stdgo._internal.go.constant.Constant__newint._newInt();
                    0i64;
                    _gotoNext = 5121989i64;
                } else if (__value__ == (5121989i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L989"
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value);
                            _y_10 = _y;
                            _gotoNext = 5122014i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                            var _y:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value);
                            _y_11 = _y;
                            _gotoNext = 5122045i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value);
                            _y_12 = _y;
                            _gotoNext = 5122093i64;
                        } else {
                            var _y:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _y_13 = _y;
                            _gotoNext = 5122124i64;
                        };
                    };
                } else if (__value__ == (5122014i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L991"
                    return stdgo.Go.asInterface(_y_10);
                    _y_10;
                    _gotoNext = 5122298i64;
                } else if (__value__ == (5122045i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L993"
                    _z_9.not(stdgo._internal.math.big.Big_newint.newInt((_y_11 : stdgo.GoInt64)));
                    _y_11;
                    _gotoNext = 5122298i64;
                } else if (__value__ == (5122093i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L995"
                    _z_9.not(_y_12._val);
                    _y_12;
                    _gotoNext = 5122298i64;
                } else if (__value__ == (5122124i64)) {
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5122298i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1002"
                    if ((_prec > (0u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 5122310i64;
                    } else {
                        _gotoNext = 5122389i64;
                    };
                } else if (__value__ == (5122310i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1003"
                    _z_9.andNot(_z_9, stdgo._internal.go.constant.Constant__newint._newInt().lsh(stdgo._internal.math.big.Big_newint.newInt((-1i64 : stdgo.GoInt64)), _prec));
                    _gotoNext = 5122389i64;
                } else if (__value__ == (5122389i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1005"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(_z_9);
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5122409i64)) {
                    0i64;
                    _gotoNext = 5122427i64;
                } else if (__value__ == (5122427i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1008"
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value);
                            _y_14 = _y;
                            _gotoNext = 5122452i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__().value);
                            _y_15 = _y;
                            _gotoNext = 5122483i64;
                        } else {
                            var _y:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _gotoNext = 5122518i64;
                        };
                    };
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5122452i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1010"
                    return stdgo.Go.asInterface(_y_14);
                    _y_14;
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5122483i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1012"
                    return stdgo.Go.asInterface(!_y_15);
                    _y_15;
                    _gotoNext = 5122518i64;
                } else if (__value__ == (5122518i64)) {
                    _gotoNext = 5122518i64;
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1017"
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid unary operation %s%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y)));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
