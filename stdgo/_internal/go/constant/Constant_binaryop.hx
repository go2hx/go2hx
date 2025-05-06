package stdgo._internal.go.constant;
function binaryOp(_x_:stdgo._internal.go.constant.Constant_value.Value, _op:stdgo._internal.go.token.Token_token.Token, _y_:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        var _cc_54:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _bd_47:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _a_36:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _b_28:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _x_23:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal);
        var _x_18:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _s_56:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _bd_51:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _bc_48:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_29:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _a_27:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _x_21:stdgo._internal.go.constant.Constant_t_intval.T_intVal = ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal);
        var _y_17:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _ac_50:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _ad_49:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _x_19:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
        var _x_16:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _bc_52:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _y_39:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
        var _c_38:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _c_32:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _a_30:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _x_20:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _dd_55:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _re_44:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _y_26:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
        var _ac_46:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _im_45:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _d_43:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _b_37:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _b_34:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _x_25:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        var _b_41:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _a_40:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_35:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _b_31:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _x_24:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
        var _x_22:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal);
        var _ad_53:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_42:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _a_33:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _x_19;
                    _gotoNext = 5198458i64;
                    _x_25;
                    _gotoNext = 5198458i64;
                    {
                        var __tmp__ = stdgo._internal.go.constant.Constant__match._match(_x_, _y_);
                        _x_16 = @:tmpset0 __tmp__._0;
                        _y_17 = @:tmpset0 __tmp__._1;
                    };
                    0i64;
                    _gotoNext = 5195555i64;
                } else if (__value__ == (5195555i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1106"
                    {
                        final __type__ = _x_16;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value);
                            _x_18 = _x;
                            _gotoNext = 5195579i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__().value);
                            _x_19 = _x;
                            _gotoNext = 5195609i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                            var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value);
                            _x_20 = _x;
                            _gotoNext = 5195733i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value);
                            _x_21 = _x;
                            _gotoNext = 5196550i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value);
                            _x_22 = _x;
                            _gotoNext = 5197074i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value);
                            _x_23 = _x;
                            _gotoNext = 5197335i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value);
                            _x_24 = _x;
                            _gotoNext = 5197604i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>))) {
                            var _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__.__underlying__().value);
                            _x_25 = _x;
                            _gotoNext = 5198364i64;
                        } else {
                            var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _gotoNext = 5198458i64;
                        };
                    };
                } else if (__value__ == (5195579i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1108"
                    return stdgo.Go.asInterface(_x_18);
                    _x_18;
                    _gotoNext = 5198458i64;
                } else if (__value__ == (5195609i64)) {
                    _y_26 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal)) : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
                    _gotoNext = 5195644i64;
                } else if (__value__ == (5195644i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1112"
                    {
                        final __value__ = _op;
                        if (__value__ == ((34 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5195658i64;
                        } else if (__value__ == ((35 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5195694i64;
                        } else {
                            _gotoNext = 0i64;
                        };
                    };
                } else if (__value__ == (5195658i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1114"
                    return stdgo.Go.asInterface((_x_19 && _y_26 : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal));
                    _gotoNext = 0i64;
                } else if (__value__ == (5195694i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1116"
                    return stdgo.Go.asInterface((_x_19 || _y_26 : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal));
                    _gotoNext = 0i64;
                } else if (__value__ == (5195733i64)) {
                    _a_27 = (_x_20 : stdgo.GoInt64);
                    _b_28 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.GoInt64);
                    _gotoNext = 5195807i64;
                } else if (__value__ == (5195807i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1123"
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5195821i64;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5195955i64;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196089i64;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196223i64;
                        } else if (__value__ == ((26 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196277i64;
                        } else if (__value__ == ((16 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196341i64;
                        } else if (__value__ == ((17 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196372i64;
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196403i64;
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196433i64;
                        } else if (__value__ == ((22 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196464i64;
                        } else {
                            _gotoNext = 5196500i64;
                        };
                    };
                } else if (__value__ == (5195821i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1125"
                    if ((!stdgo._internal.go.constant.Constant__is63bit._is63bit(_a_27) || !stdgo._internal.go.constant.Constant__is63bit._is63bit(_b_28) : Bool)) {
                        _gotoNext = 5195870i64;
                    } else {
                        _gotoNext = 5195943i64;
                    };
                } else if (__value__ == (5195870i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1126"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(stdgo._internal.go.constant.Constant__newint._newInt().add(stdgo._internal.math.big.Big_newint.newInt(_a_27), stdgo._internal.math.big.Big_newint.newInt(_b_28)));
                    _gotoNext = 5195943i64;
                } else if (__value__ == (5195943i64)) {
                    _c_29 = (_a_27 + _b_28 : stdgo.GoInt64);
                    _gotoNext = 5196529i64;
                } else if (__value__ == (5195955i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1130"
                    if ((!stdgo._internal.go.constant.Constant__is63bit._is63bit(_a_27) || !stdgo._internal.go.constant.Constant__is63bit._is63bit(_b_28) : Bool)) {
                        _gotoNext = 5196004i64;
                    } else {
                        _gotoNext = 5196077i64;
                    };
                } else if (__value__ == (5196004i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1131"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(stdgo._internal.go.constant.Constant__newint._newInt().sub(stdgo._internal.math.big.Big_newint.newInt(_a_27), stdgo._internal.math.big.Big_newint.newInt(_b_28)));
                    _gotoNext = 5196077i64;
                } else if (__value__ == (5196077i64)) {
                    _c_29 = (_a_27 - _b_28 : stdgo.GoInt64);
                    _gotoNext = 5196529i64;
                } else if (__value__ == (5196089i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1135"
                    if ((!stdgo._internal.go.constant.Constant__is32bit._is32bit(_a_27) || !stdgo._internal.go.constant.Constant__is32bit._is32bit(_b_28) : Bool)) {
                        _gotoNext = 5196138i64;
                    } else {
                        _gotoNext = 5196211i64;
                    };
                } else if (__value__ == (5196138i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1136"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(stdgo._internal.go.constant.Constant__newint._newInt().mul(stdgo._internal.math.big.Big_newint.newInt(_a_27), stdgo._internal.math.big.Big_newint.newInt(_b_28)));
                    _gotoNext = 5196211i64;
                } else if (__value__ == (5196211i64)) {
                    _c_29 = (_a_27 * _b_28 : stdgo.GoInt64);
                    _gotoNext = 5196529i64;
                } else if (__value__ == (5196223i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1140"
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(stdgo._internal.math.big.Big_newrat.newRat(_a_27, _b_28));
                    _gotoNext = 5196529i64;
                } else if (__value__ == (5196277i64)) {
                    _c_29 = (_a_27 / _b_28 : stdgo.GoInt64);
                    _gotoNext = 5196529i64;
                } else if (__value__ == (5196341i64)) {
                    _c_29 = (_a_27 % _b_28 : stdgo.GoInt64);
                    _gotoNext = 5196529i64;
                } else if (__value__ == (5196372i64)) {
                    _c_29 = (_a_27 & _b_28 : stdgo.GoInt64);
                    _gotoNext = 5196529i64;
                } else if (__value__ == (5196403i64)) {
                    _c_29 = (_a_27 | _b_28 : stdgo.GoInt64);
                    _gotoNext = 5196529i64;
                } else if (__value__ == (5196433i64)) {
                    _c_29 = (_a_27 ^ _b_28 : stdgo.GoInt64);
                    _gotoNext = 5196529i64;
                } else if (__value__ == (5196464i64)) {
                    _c_29 = (_a_27 & ((_b_28 ^ (-1i64 : stdgo.GoInt32) : stdgo.GoInt64)) : stdgo.GoInt64);
                    _gotoNext = 5196529i64;
                } else if (__value__ == (5196500i64)) {
                    _gotoNext = 5198458i64;
                } else if (__value__ == (5196529i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1156"
                    return stdgo.Go.asInterface((_c_29 : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
                    _x_20;
                    _gotoNext = 5198458i64;
                } else if (__value__ == (5196550i64)) {
                    _a_30 = _x_21._val;
                    _b_31 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_intval.T_intVal)) : stdgo._internal.go.constant.Constant_t_intval.T_intVal)._val;
                    _c_32 = stdgo._internal.go.constant.Constant__newint._newInt();
                    _gotoNext = 5196616i64;
                } else if (__value__ == (5196616i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1162"
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196630i64;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196663i64;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196696i64;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196729i64;
                        } else if (__value__ == ((26 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196789i64;
                        } else if (__value__ == ((16 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196855i64;
                        } else if (__value__ == ((17 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196888i64;
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196921i64;
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196952i64;
                        } else if (__value__ == ((22 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5196985i64;
                        } else {
                            _gotoNext = 5197025i64;
                        };
                    };
                } else if (__value__ == (5196630i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1164"
                    _c_32.add(_a_30, _b_31);
                    _gotoNext = 5197054i64;
                } else if (__value__ == (5196663i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1166"
                    _c_32.sub(_a_30, _b_31);
                    _gotoNext = 5197054i64;
                } else if (__value__ == (5196696i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1168"
                    _c_32.mul(_a_30, _b_31);
                    _gotoNext = 5197054i64;
                } else if (__value__ == (5196729i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1170"
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(stdgo._internal.go.constant.Constant__newrat._newRat().setFrac(_a_30, _b_31));
                    _gotoNext = 5197054i64;
                } else if (__value__ == (5196789i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1172"
                    _c_32.quo(_a_30, _b_31);
                    _gotoNext = 5197054i64;
                } else if (__value__ == (5196855i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1174"
                    _c_32.rem(_a_30, _b_31);
                    _gotoNext = 5197054i64;
                } else if (__value__ == (5196888i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1176"
                    _c_32.and(_a_30, _b_31);
                    _gotoNext = 5197054i64;
                } else if (__value__ == (5196921i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1178"
                    _c_32.or(_a_30, _b_31);
                    _gotoNext = 5197054i64;
                } else if (__value__ == (5196952i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1180"
                    _c_32.xor(_a_30, _b_31);
                    _gotoNext = 5197054i64;
                } else if (__value__ == (5196985i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1182"
                    _c_32.andNot(_a_30, _b_31);
                    _gotoNext = 5197054i64;
                } else if (__value__ == (5197025i64)) {
                    _gotoNext = 5198458i64;
                } else if (__value__ == (5197054i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1186"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(_c_32);
                    _x_21;
                    _gotoNext = 5198458i64;
                } else if (__value__ == (5197074i64)) {
                    _a_33 = _x_22._val;
                    _b_34 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)._val;
                    _c_35 = stdgo._internal.go.constant.Constant__newrat._newRat();
                    _gotoNext = 5197140i64;
                } else if (__value__ == (5197140i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1192"
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5197154i64;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5197187i64;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5197220i64;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5197253i64;
                        } else {
                            _gotoNext = 5197286i64;
                        };
                    };
                } else if (__value__ == (5197154i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1194"
                    _c_35.add(_a_33, _b_34);
                    _gotoNext = 5197315i64;
                } else if (__value__ == (5197187i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1196"
                    _c_35.sub(_a_33, _b_34);
                    _gotoNext = 5197315i64;
                } else if (__value__ == (5197220i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1198"
                    _c_35.mul(_a_33, _b_34);
                    _gotoNext = 5197315i64;
                } else if (__value__ == (5197253i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1200"
                    _c_35.quo(_a_33, _b_34);
                    _gotoNext = 5197315i64;
                } else if (__value__ == (5197286i64)) {
                    _gotoNext = 5198458i64;
                } else if (__value__ == (5197315i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1204"
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(_c_35);
                    _x_22;
                    _gotoNext = 5198458i64;
                } else if (__value__ == (5197335i64)) {
                    _a_36 = _x_23._val;
                    _b_37 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)._val;
                    _c_38 = stdgo._internal.go.constant.Constant__newfloat._newFloat();
                    _gotoNext = 5197407i64;
                } else if (__value__ == (5197407i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1210"
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5197421i64;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5197454i64;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5197487i64;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5197520i64;
                        } else {
                            _gotoNext = 5197553i64;
                        };
                    };
                } else if (__value__ == (5197421i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1212"
                    _c_38.add(_a_36, _b_37);
                    _gotoNext = 5197582i64;
                } else if (__value__ == (5197454i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1214"
                    _c_38.sub(_a_36, _b_37);
                    _gotoNext = 5197582i64;
                } else if (__value__ == (5197487i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1216"
                    _c_38.mul(_a_36, _b_37);
                    _gotoNext = 5197582i64;
                } else if (__value__ == (5197520i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1218"
                    _c_38.quo(_a_36, _b_37);
                    _gotoNext = 5197582i64;
                } else if (__value__ == (5197553i64)) {
                    _gotoNext = 5198458i64;
                } else if (__value__ == (5197582i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1222"
                    return stdgo._internal.go.constant.Constant__makefloat._makeFloat(_c_38);
                    _x_23;
                    _gotoNext = 5198458i64;
                } else if (__value__ == (5197604i64)) {
                    _y_39 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal)) : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal)?.__copy__();
                    {
                        final __tmp__0 = _x_24._re;
                        final __tmp__1 = _x_24._im;
                        _a_40 = @:binopAssign __tmp__0;
                        _b_41 = @:binopAssign __tmp__1;
                    };
                    {
                        final __tmp__0 = _y_39._re;
                        final __tmp__1 = _y_39._im;
                        _c_42 = @:binopAssign __tmp__0;
                        _d_43 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5197706i64;
                } else if (__value__ == (5197706i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1229"
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5197720i64;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5197795i64;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5197870i64;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5198029i64;
                        } else {
                            _gotoNext = 5198306i64;
                        };
                    };
                } else if (__value__ == (5197720i64)) {
                    _re_44 = stdgo._internal.go.constant.Constant__add._add(_a_40, _c_42);
                    _im_45 = stdgo._internal.go.constant.Constant__add._add(_b_41, _d_43);
                    _gotoNext = 5198335i64;
                } else if (__value__ == (5197795i64)) {
                    _re_44 = stdgo._internal.go.constant.Constant__sub._sub(_a_40, _c_42);
                    _im_45 = stdgo._internal.go.constant.Constant__sub._sub(_b_41, _d_43);
                    _gotoNext = 5198335i64;
                } else if (__value__ == (5197870i64)) {
                    _ac_46 = stdgo._internal.go.constant.Constant__mul._mul(_a_40, _c_42);
                    _bd_47 = stdgo._internal.go.constant.Constant__mul._mul(_b_41, _d_43);
                    _bc_48 = stdgo._internal.go.constant.Constant__mul._mul(_b_41, _c_42);
                    _ad_49 = stdgo._internal.go.constant.Constant__mul._mul(_a_40, _d_43);
                    _re_44 = stdgo._internal.go.constant.Constant__sub._sub(_ac_46, _bd_47);
                    _im_45 = stdgo._internal.go.constant.Constant__add._add(_bc_48, _ad_49);
                    _gotoNext = 5198335i64;
                } else if (__value__ == (5198029i64)) {
                    _ac_50 = stdgo._internal.go.constant.Constant__mul._mul(_a_40, _c_42);
                    _bd_51 = stdgo._internal.go.constant.Constant__mul._mul(_b_41, _d_43);
                    _bc_52 = stdgo._internal.go.constant.Constant__mul._mul(_b_41, _c_42);
                    _ad_53 = stdgo._internal.go.constant.Constant__mul._mul(_a_40, _d_43);
                    _cc_54 = stdgo._internal.go.constant.Constant__mul._mul(_c_42, _c_42);
                    _dd_55 = stdgo._internal.go.constant.Constant__mul._mul(_d_43, _d_43);
                    _s_56 = stdgo._internal.go.constant.Constant__add._add(_cc_54, _dd_55);
                    _re_44 = stdgo._internal.go.constant.Constant__add._add(_ac_50, _bd_51);
                    _re_44 = stdgo._internal.go.constant.Constant__quo._quo(_re_44, _s_56);
                    _im_45 = stdgo._internal.go.constant.Constant__sub._sub(_bc_52, _ad_53);
                    _im_45 = stdgo._internal.go.constant.Constant__quo._quo(_im_45, _s_56);
                    _gotoNext = 5198335i64;
                } else if (__value__ == (5198306i64)) {
                    _gotoNext = 5198458i64;
                } else if (__value__ == (5198335i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1262"
                    return stdgo._internal.go.constant.Constant__makecomplex._makeComplex(_re_44, _im_45);
                    _x_24;
                    _gotoNext = 5198458i64;
                } else if (__value__ == (5198364i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1265"
                    if (_op == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 5198402i64;
                    } else {
                        _gotoNext = 0i64;
                    };
                } else if (__value__ == (5198402i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1266"
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ _l : _x_25, _r : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) } : stdgo._internal.go.constant.Constant_t_stringval.T_stringVal)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>));
                    _gotoNext = 0i64;
                } else if (__value__ == (5198458i64)) {
                    _gotoNext = 5198458i64;
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1271"
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid binary operation %v %s %v" : stdgo.GoString), stdgo.Go.toInterface(_x_), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y_)));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
