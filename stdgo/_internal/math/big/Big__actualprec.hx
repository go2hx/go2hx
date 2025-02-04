package stdgo._internal.math.big;
function _actualPrec(_x:stdgo.GoFloat64):stdgo.GoUInt {
        {
            var _mant = (stdgo._internal.math.Math_float64bits.float64bits(_x) : stdgo.GoUInt64);
            if (((_x != (0 : stdgo.GoFloat64)) && ((_mant & (9218868437227405312i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool)) {
                return ((64u32 : stdgo.GoUInt) - (stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64((_mant & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt) : stdgo.GoUInt);
            };
        };
        return (53u32 : stdgo.GoUInt);
    }
