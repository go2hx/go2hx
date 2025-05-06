package stdgo._internal.go.constant;
function toInt(_x:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L855"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L857"
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L860"
                if (_x._val.isInt()) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L861"
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(_x._val.num());
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L868"
                if (stdgo._internal.go.constant.Constant__smallfloat._smallFloat(_x._val)) {
                    var _i = stdgo._internal.go.constant.Constant__newint._newInt();
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L870"
                    {
                        var __tmp__ = _x._val.int_(_i), __1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L871"
                            return stdgo._internal.go.constant.Constant__makeint._makeInt(_i);
                        };
                    };
                    {};
                    var _t:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L880"
                    _t.setPrec((508u32 : stdgo.GoUInt));
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L883"
                    _t.setMode((2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode));
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L884"
                    _t.set(_x._val);
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L885"
                    {
                        var __tmp__ = _t.int_(_i), __2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L886"
                            return stdgo._internal.go.constant.Constant__makeint._makeInt(_i);
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L890"
                    _t.setMode((3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode));
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L891"
                    _t.set(_x._val);
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L892"
                    {
                        var __tmp__ = _t.int_(_i), __3:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo._internal.math.big.Big_accuracy.Accuracy))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L893"
                            return stdgo._internal.go.constant.Constant__makeint._makeInt(_i);
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L898"
                {
                    var _re = (stdgo._internal.go.constant.Constant_tofloat.toFloat(stdgo.Go.asInterface(_x)) : stdgo._internal.go.constant.Constant_value.Value);
                    if (_re.kind() == ((4 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L899"
                        return stdgo._internal.go.constant.Constant_toint.toInt(_re);
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L903"
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal() : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal));
    }
