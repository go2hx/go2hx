package stdgo._internal.math;
function roundToEven(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _bits = (stdgo._internal.math.Math_float64bits.float64bits(_x) : stdgo.GoUInt64);
        var _e = (((_bits >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt) & (2047u32 : stdgo.GoUInt) : stdgo.GoUInt);
        if ((_e >= (1023u32 : stdgo.GoUInt) : Bool)) {
            {};
            _e = (_e - ((1023u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            _bits = (_bits + (((((2251799813685247i64 : stdgo.GoUInt64) + (((_bits >> (((52u32 : stdgo.GoUInt) - _e : stdgo.GoUInt)) : stdgo.GoUInt64)) & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) >> _e : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _bits = (_bits & (((((4503599627370495i64 : stdgo.GoUInt64) >> _e : stdgo.GoUInt64)) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        } else if (((_e == (1022u32 : stdgo.GoUInt)) && ((_bits & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (0i64 : stdgo.GoUInt64)) : Bool)) {
            _bits = ((_bits & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (4607182418800017408i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        } else {
            _bits = (_bits & ((-9223372036854775808i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return stdgo._internal.math.Math_float64frombits.float64frombits(_bits);
    }
