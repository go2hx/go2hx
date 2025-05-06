package stdgo._internal.go.constant;
@:keep @:allow(stdgo._internal.go.constant.Constant.T_floatVal_asInterface) class T_floatVal_static_extension {
    @:keep
    @:tdfield
    static public function _implementsValue( _:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal):Void {
        @:recv var _:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = _?.__copy__();
    }
    @:keep
    @:tdfield
    static public function exactString( _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = _x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L260"
        return _x._val.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal):stdgo.GoString {
        @:recv var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = _x?.__copy__();
        var _f = _x._val;
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L196"
        if (_f.isInf()) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L197"
            return (_f.string() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L202"
        {
            var __tmp__ = _f.float64(), _x:stdgo.GoFloat64 = __tmp__._0, __1:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
            if ((((_f.sign() == (0 : stdgo.GoInt)) == (_x == (0 : stdgo.GoFloat64))) && !stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
                var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%.6g" : stdgo.GoString), stdgo.Go.toInterface(_x))?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L204"
                if ((!_f.isInt() && (stdgo._internal.strings.Strings_indexbyte.indexByte(_s?.__copy__(), (46 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _s = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%g" : stdgo.GoString), stdgo.Go.toInterface(_x))?.__copy__();
                };
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L209"
                return _s?.__copy__();
            };
        };
        var _mant:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
        var _exp = (_f.mantExp((stdgo.Go.setRef(_mant) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>)) : stdgo.GoInt);
        var __tmp__ = _mant.float64(), _m:stdgo.GoFloat64 = __tmp__._0, __2:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
        var _d = ((_exp : stdgo.GoFloat64) * (0.3010299956639812 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _e = (_d : stdgo.GoInt64);
        _m = (_m * (stdgo._internal.math.Math_pow.pow((10 : stdgo.GoFloat64), (_d - (_e : stdgo.GoFloat64) : stdgo.GoFloat64))) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L229"
        {
            var _am = (stdgo._internal.math.Math_abs.abs(_m) : stdgo.GoFloat64);
            if ((_am < (0.9999995 : stdgo.GoFloat64) : Bool)) {
                _m = (_m * ((10 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L235"
                _e--;
            } else if ((_am >= (10 : stdgo.GoFloat64) : Bool)) {
                _m = (_m / ((10 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L238"
                _e++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L241"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%.6ge%+d" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_e))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function kind( _:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal):stdgo._internal.go.constant.Constant_kind.Kind {
        @:recv var _:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L109"
        return (4 : stdgo._internal.go.constant.Constant_kind.Kind);
    }
}
