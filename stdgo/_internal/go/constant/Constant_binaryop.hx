package stdgo._internal.go.constant;
function binaryOp(_x_:stdgo._internal.go.constant.Constant_value.Value, _op:stdgo._internal.go.token.Token_token.Token, _y_:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        var _dd_55:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _cc_54:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_29:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _y_17:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _x_16:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_42:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _b_34:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _x_20:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _a_40:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _y_39:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
        var _c_35:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _c_32:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _x_23:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal);
        var _s_56:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _a_30:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _b_28:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _a_27:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _x_24:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
        var _x_21:stdgo._internal.go.constant.Constant_t_intval.T_intVal = ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal);
        var _x_18:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _ad_49:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _a_33:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _bc_48:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _bd_47:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _im_45:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _re_44:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _d_43:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_38:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _bc_52:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _ac_50:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _b_37:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _y_26:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
        var _x_25:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        var _x_22:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal);
        var _ad_53:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _bd_51:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _b_41:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _a_36:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _b_31:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _x_19:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
        var _ac_46:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _x_19;
                    _gotoNext = 5029325i64;
                    _x_25;
                    _gotoNext = 5029325i64;
                    {
                        var __tmp__ = stdgo._internal.go.constant.Constant__match._match(_x_, _y_);
                        _x_16 = @:tmpset0 __tmp__._0;
                        _y_17 = @:tmpset0 __tmp__._1;
                    };
                    0i64;
                    _gotoNext = 5026422i64;
                } else if (__value__ == (5026422i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1106"
                    {
                        final __type__ = _x_16;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value);
                            _x_18 = _x;
                            _gotoNext = 5026446i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__().value);
                            _x_19 = _x;
                            _gotoNext = 5026476i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                            var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value);
                            _x_20 = _x;
                            _gotoNext = 5026600i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value);
                            _x_21 = _x;
                            _gotoNext = 5027417i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value);
                            _x_22 = _x;
                            _gotoNext = 5027941i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value);
                            _x_23 = _x;
                            _gotoNext = 5028202i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value);
                            _x_24 = _x;
                            _gotoNext = 5028471i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>))) {
                            var _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__.__underlying__().value);
                            _x_25 = _x;
                            _gotoNext = 5029231i64;
                        } else {
                            var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _gotoNext = 5029325i64;
                        };
                    };
                } else if (__value__ == (5026446i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1108"
                    return stdgo.Go.asInterface(_x_18);
                    _x_18;
                    _gotoNext = 5029325i64;
                } else if (__value__ == (5026476i64)) {
                    _y_26 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal)) : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
                    _gotoNext = 5026511i64;
                } else if (__value__ == (5026511i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1112"
                    {
                        final __value__ = _op;
                        if (__value__ == ((34 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5026525i64;
                        } else if (__value__ == ((35 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5026561i64;
                        } else {
                            _gotoNext = 0i64;
                        };
                    };
                } else if (__value__ == (5026525i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1114"
                    return stdgo.Go.asInterface((_x_19 && _y_26 : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal));
                    _gotoNext = 0i64;
                } else if (__value__ == (5026561i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1116"
                    return stdgo.Go.asInterface((_x_19 || _y_26 : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal));
                    _gotoNext = 0i64;
                } else if (__value__ == (5026600i64)) {
                    _a_27 = (_x_20 : stdgo.GoInt64);
                    _b_28 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.GoInt64);
                    _gotoNext = 5026674i64;
                } else if (__value__ == (5026674i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1123"
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5026688i64;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5026822i64;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5026956i64;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027090i64;
                        } else if (__value__ == ((26 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027144i64;
                        } else if (__value__ == ((16 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027208i64;
                        } else if (__value__ == ((17 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027239i64;
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027270i64;
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027300i64;
                        } else if (__value__ == ((22 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027331i64;
                        } else {
                            _gotoNext = 5027367i64;
                        };
                    };
                } else if (__value__ == (5026688i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1125"
                    if ((!stdgo._internal.go.constant.Constant__is63bit._is63bit(_a_27) || !stdgo._internal.go.constant.Constant__is63bit._is63bit(_b_28) : Bool)) {
                        _gotoNext = 5026737i64;
                    } else {
                        _gotoNext = 5026810i64;
                    };
                } else if (__value__ == (5026737i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1126"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(stdgo._internal.go.constant.Constant__newint._newInt().add(stdgo._internal.math.big.Big_newint.newInt(_a_27), stdgo._internal.math.big.Big_newint.newInt(_b_28)));
                    _gotoNext = 5026810i64;
                } else if (__value__ == (5026810i64)) {
                    _c_29 = (_a_27 + _b_28 : stdgo.GoInt64);
                    _gotoNext = 5027396i64;
                } else if (__value__ == (5026822i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1130"
                    if ((!stdgo._internal.go.constant.Constant__is63bit._is63bit(_a_27) || !stdgo._internal.go.constant.Constant__is63bit._is63bit(_b_28) : Bool)) {
                        _gotoNext = 5026871i64;
                    } else {
                        _gotoNext = 5026944i64;
                    };
                } else if (__value__ == (5026871i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1131"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(stdgo._internal.go.constant.Constant__newint._newInt().sub(stdgo._internal.math.big.Big_newint.newInt(_a_27), stdgo._internal.math.big.Big_newint.newInt(_b_28)));
                    _gotoNext = 5026944i64;
                } else if (__value__ == (5026944i64)) {
                    _c_29 = (_a_27 - _b_28 : stdgo.GoInt64);
                    _gotoNext = 5027396i64;
                } else if (__value__ == (5026956i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1135"
                    if ((!stdgo._internal.go.constant.Constant__is32bit._is32bit(_a_27) || !stdgo._internal.go.constant.Constant__is32bit._is32bit(_b_28) : Bool)) {
                        _gotoNext = 5027005i64;
                    } else {
                        _gotoNext = 5027078i64;
                    };
                } else if (__value__ == (5027005i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1136"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(stdgo._internal.go.constant.Constant__newint._newInt().mul(stdgo._internal.math.big.Big_newint.newInt(_a_27), stdgo._internal.math.big.Big_newint.newInt(_b_28)));
                    _gotoNext = 5027078i64;
                } else if (__value__ == (5027078i64)) {
                    _c_29 = (_a_27 * _b_28 : stdgo.GoInt64);
                    _gotoNext = 5027396i64;
                } else if (__value__ == (5027090i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1140"
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(stdgo._internal.math.big.Big_newrat.newRat(_a_27, _b_28));
                    _gotoNext = 5027396i64;
                } else if (__value__ == (5027144i64)) {
                    _c_29 = (_a_27 / _b_28 : stdgo.GoInt64);
                    _gotoNext = 5027396i64;
                } else if (__value__ == (5027208i64)) {
                    _c_29 = (_a_27 % _b_28 : stdgo.GoInt64);
                    _gotoNext = 5027396i64;
                } else if (__value__ == (5027239i64)) {
                    _c_29 = (_a_27 & _b_28 : stdgo.GoInt64);
                    _gotoNext = 5027396i64;
                } else if (__value__ == (5027270i64)) {
                    _c_29 = (_a_27 | _b_28 : stdgo.GoInt64);
                    _gotoNext = 5027396i64;
                } else if (__value__ == (5027300i64)) {
                    _c_29 = (_a_27 ^ _b_28 : stdgo.GoInt64);
                    _gotoNext = 5027396i64;
                } else if (__value__ == (5027331i64)) {
                    _c_29 = (_a_27 & ((_b_28 ^ (-1i64 : stdgo.GoInt32) : stdgo.GoInt64)) : stdgo.GoInt64);
                    _gotoNext = 5027396i64;
                } else if (__value__ == (5027367i64)) {
                    _gotoNext = 5029325i64;
                } else if (__value__ == (5027396i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1156"
                    return stdgo.Go.asInterface((_c_29 : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
                    _x_20;
                    _gotoNext = 5029325i64;
                } else if (__value__ == (5027417i64)) {
                    _a_30 = _x_21._val;
                    _b_31 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_intval.T_intVal)) : stdgo._internal.go.constant.Constant_t_intval.T_intVal)._val;
                    _c_32 = stdgo._internal.go.constant.Constant__newint._newInt();
                    _gotoNext = 5027483i64;
                } else if (__value__ == (5027483i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1162"
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027497i64;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027530i64;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027563i64;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027596i64;
                        } else if (__value__ == ((26 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027656i64;
                        } else if (__value__ == ((16 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027722i64;
                        } else if (__value__ == ((17 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027755i64;
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027788i64;
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027819i64;
                        } else if (__value__ == ((22 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5027852i64;
                        } else {
                            _gotoNext = 5027892i64;
                        };
                    };
                } else if (__value__ == (5027497i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1164"
                    _c_32.add(_a_30, _b_31);
                    _gotoNext = 5027921i64;
                } else if (__value__ == (5027530i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1166"
                    _c_32.sub(_a_30, _b_31);
                    _gotoNext = 5027921i64;
                } else if (__value__ == (5027563i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1168"
                    _c_32.mul(_a_30, _b_31);
                    _gotoNext = 5027921i64;
                } else if (__value__ == (5027596i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1170"
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(stdgo._internal.go.constant.Constant__newrat._newRat().setFrac(_a_30, _b_31));
                    _gotoNext = 5027921i64;
                } else if (__value__ == (5027656i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1172"
                    _c_32.quo(_a_30, _b_31);
                    _gotoNext = 5027921i64;
                } else if (__value__ == (5027722i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1174"
                    _c_32.rem(_a_30, _b_31);
                    _gotoNext = 5027921i64;
                } else if (__value__ == (5027755i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1176"
                    _c_32.and(_a_30, _b_31);
                    _gotoNext = 5027921i64;
                } else if (__value__ == (5027788i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1178"
                    _c_32.or(_a_30, _b_31);
                    _gotoNext = 5027921i64;
                } else if (__value__ == (5027819i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1180"
                    _c_32.xor(_a_30, _b_31);
                    _gotoNext = 5027921i64;
                } else if (__value__ == (5027852i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1182"
                    _c_32.andNot(_a_30, _b_31);
                    _gotoNext = 5027921i64;
                } else if (__value__ == (5027892i64)) {
                    _gotoNext = 5029325i64;
                } else if (__value__ == (5027921i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1186"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(_c_32);
                    _x_21;
                    _gotoNext = 5029325i64;
                } else if (__value__ == (5027941i64)) {
                    _a_33 = _x_22._val;
                    _b_34 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)._val;
                    _c_35 = stdgo._internal.go.constant.Constant__newrat._newRat();
                    _gotoNext = 5028007i64;
                } else if (__value__ == (5028007i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1192"
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028021i64;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028054i64;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028087i64;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028120i64;
                        } else {
                            _gotoNext = 5028153i64;
                        };
                    };
                } else if (__value__ == (5028021i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1194"
                    _c_35.add(_a_33, _b_34);
                    _gotoNext = 5028182i64;
                } else if (__value__ == (5028054i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1196"
                    _c_35.sub(_a_33, _b_34);
                    _gotoNext = 5028182i64;
                } else if (__value__ == (5028087i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1198"
                    _c_35.mul(_a_33, _b_34);
                    _gotoNext = 5028182i64;
                } else if (__value__ == (5028120i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1200"
                    _c_35.quo(_a_33, _b_34);
                    _gotoNext = 5028182i64;
                } else if (__value__ == (5028153i64)) {
                    _gotoNext = 5029325i64;
                } else if (__value__ == (5028182i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1204"
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(_c_35);
                    _x_22;
                    _gotoNext = 5029325i64;
                } else if (__value__ == (5028202i64)) {
                    _a_36 = _x_23._val;
                    _b_37 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)._val;
                    _c_38 = stdgo._internal.go.constant.Constant__newfloat._newFloat();
                    _gotoNext = 5028274i64;
                } else if (__value__ == (5028274i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1210"
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028288i64;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028321i64;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028354i64;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028387i64;
                        } else {
                            _gotoNext = 5028420i64;
                        };
                    };
                } else if (__value__ == (5028288i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1212"
                    _c_38.add(_a_36, _b_37);
                    _gotoNext = 5028449i64;
                } else if (__value__ == (5028321i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1214"
                    _c_38.sub(_a_36, _b_37);
                    _gotoNext = 5028449i64;
                } else if (__value__ == (5028354i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1216"
                    _c_38.mul(_a_36, _b_37);
                    _gotoNext = 5028449i64;
                } else if (__value__ == (5028387i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1218"
                    _c_38.quo(_a_36, _b_37);
                    _gotoNext = 5028449i64;
                } else if (__value__ == (5028420i64)) {
                    _gotoNext = 5029325i64;
                } else if (__value__ == (5028449i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1222"
                    return stdgo._internal.go.constant.Constant__makefloat._makeFloat(_c_38);
                    _x_23;
                    _gotoNext = 5029325i64;
                } else if (__value__ == (5028471i64)) {
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
                    _gotoNext = 5028573i64;
                } else if (__value__ == (5028573i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1229"
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028587i64;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028662i64;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028737i64;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5028896i64;
                        } else {
                            _gotoNext = 5029173i64;
                        };
                    };
                } else if (__value__ == (5028587i64)) {
                    _re_44 = stdgo._internal.go.constant.Constant__add._add(_a_40, _c_42);
                    _im_45 = stdgo._internal.go.constant.Constant__add._add(_b_41, _d_43);
                    _gotoNext = 5029202i64;
                } else if (__value__ == (5028662i64)) {
                    _re_44 = stdgo._internal.go.constant.Constant__sub._sub(_a_40, _c_42);
                    _im_45 = stdgo._internal.go.constant.Constant__sub._sub(_b_41, _d_43);
                    _gotoNext = 5029202i64;
                } else if (__value__ == (5028737i64)) {
                    _ac_46 = stdgo._internal.go.constant.Constant__mul._mul(_a_40, _c_42);
                    _bd_47 = stdgo._internal.go.constant.Constant__mul._mul(_b_41, _d_43);
                    _bc_48 = stdgo._internal.go.constant.Constant__mul._mul(_b_41, _c_42);
                    _ad_49 = stdgo._internal.go.constant.Constant__mul._mul(_a_40, _d_43);
                    _re_44 = stdgo._internal.go.constant.Constant__sub._sub(_ac_46, _bd_47);
                    _im_45 = stdgo._internal.go.constant.Constant__add._add(_bc_48, _ad_49);
                    _gotoNext = 5029202i64;
                } else if (__value__ == (5028896i64)) {
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
                    _gotoNext = 5029202i64;
                } else if (__value__ == (5029173i64)) {
                    _gotoNext = 5029325i64;
                } else if (__value__ == (5029202i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1262"
                    return stdgo._internal.go.constant.Constant__makecomplex._makeComplex(_re_44, _im_45);
                    _x_24;
                    _gotoNext = 5029325i64;
                } else if (__value__ == (5029231i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1265"
                    if (_op == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 5029269i64;
                    } else {
                        _gotoNext = 0i64;
                    };
                } else if (__value__ == (5029269i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1266"
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ _l : _x_25, _r : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) } : stdgo._internal.go.constant.Constant_t_stringval.T_stringVal)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>));
                    _gotoNext = 0i64;
                } else if (__value__ == (5029325i64)) {
                    _gotoNext = 5029325i64;
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L1271"
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid binary operation %v %s %v" : stdgo.GoString), stdgo.Go.toInterface(_x_), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y_)));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
