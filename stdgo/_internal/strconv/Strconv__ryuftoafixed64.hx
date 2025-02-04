package stdgo._internal.strconv;
function _ryuFtoaFixed64(_d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void {
        if ((_prec > (18 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("ryuFtoaFixed64 called with prec > 18" : stdgo.GoString));
        };
        if (_mant == ((0i64 : stdgo.GoUInt64))) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                (@:checkr _d ?? throw "null pointer dereference")._nd = __tmp__0;
                (@:checkr _d ?? throw "null pointer dereference")._dp = __tmp__1;
            };
            return;
        };
        var _e2 = (_exp : stdgo.GoInt);
        {
            var _b = (stdgo._internal.math.bits.Bits_len64.len64(_mant) : stdgo.GoInt);
            if ((_b < (55 : stdgo.GoInt) : Bool)) {
                _mant = (_mant << (((55 : stdgo.GoInt) - _b : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64);
                _e2 = (_e2 + ((_b - (55 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _q = ((-stdgo._internal.strconv.Strconv__mulbylog2log10._mulByLog2Log10((_e2 + (54 : stdgo.GoInt) : stdgo.GoInt)) + _prec : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _exact = ((_q <= (55 : stdgo.GoInt) : Bool) && (_q >= (0 : stdgo.GoInt) : Bool) : Bool);
        var __tmp__ = stdgo._internal.strconv.Strconv__mult128bitpow10._mult128bitPow10(_mant, _e2, _q), _di:stdgo.GoUInt64 = __tmp__._0, _dexp2:stdgo.GoInt = __tmp__._1, _d0:Bool = __tmp__._2;
        if ((_dexp2 >= (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("not enough significant bits after mult128bitPow10" : stdgo.GoString));
        };
        if ((((_q < (0 : stdgo.GoInt) : Bool) && (_q >= (-22 : stdgo.GoInt) : Bool) : Bool) && stdgo._internal.strconv.Strconv__divisiblebypower5._divisibleByPower5(_mant, -_q) : Bool)) {
            _exact = true;
            _d0 = true;
        };
        var _extra = (-_dexp2 : stdgo.GoUInt);
        var _extraMask = ((((1i64 : stdgo.GoUInt64) << _extra : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var __0 = (_di >> _extra : stdgo.GoUInt64), __1 = (_di & _extraMask : stdgo.GoUInt64);
var _dfrac = __1, _di = __0;
        var _roundUp = (false : Bool);
        if (_exact) {
            _roundUp = (((_dfrac > ((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : Bool) || (((_dfrac == ((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64)) && !_d0 : Bool)) : Bool) || (((_dfrac == (((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64)) && _d0 : Bool) && ((_di & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool)) : Bool);
        } else {
            _roundUp = (_dfrac >> ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64));
        };
        if (_dfrac != ((0i64 : stdgo.GoUInt64))) {
            _d0 = false;
        };
        stdgo._internal.strconv.Strconv__formatdecimal._formatDecimal(_d, _di, !_d0, _roundUp, _prec);
        (@:checkr _d ?? throw "null pointer dereference")._dp = ((@:checkr _d ?? throw "null pointer dereference")._dp - (_q) : stdgo.GoInt);
    }
