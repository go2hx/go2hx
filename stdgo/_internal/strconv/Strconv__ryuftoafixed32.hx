package stdgo._internal.strconv;
function _ryuFtoaFixed32(_d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice>, _mant:stdgo.GoUInt32, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void {
        if ((_prec < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("ryuFtoaFixed32 called with negative prec" : stdgo.GoString));
        };
        if ((_prec > (9 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("ryuFtoaFixed32 called with prec > 9" : stdgo.GoString));
        };
        if (_mant == ((0u32 : stdgo.GoUInt32))) {
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
            var _b = (stdgo._internal.math.bits.Bits_len32.len32(_mant) : stdgo.GoInt);
            if ((_b < (25 : stdgo.GoInt) : Bool)) {
                _mant = (_mant << ((((25 : stdgo.GoInt) - _b : stdgo.GoInt) : stdgo.GoUInt)) : stdgo.GoUInt32);
                _e2 = (_e2 + ((_b - (25 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _q = ((-stdgo._internal.strconv.Strconv__mulbylog2log10._mulByLog2Log10((_e2 + (24 : stdgo.GoInt) : stdgo.GoInt)) + _prec : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _exact = ((_q <= (27 : stdgo.GoInt) : Bool) && (_q >= (0 : stdgo.GoInt) : Bool) : Bool);
        var __tmp__ = stdgo._internal.strconv.Strconv__mult64bitpow10._mult64bitPow10(_mant, _e2, _q), _di:stdgo.GoUInt32 = __tmp__._0, _dexp2:stdgo.GoInt = __tmp__._1, _d0:Bool = __tmp__._2;
        if ((_dexp2 >= (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("not enough significant bits after mult64bitPow10" : stdgo.GoString));
        };
        if ((((_q < (0 : stdgo.GoInt) : Bool) && (_q >= (-10 : stdgo.GoInt) : Bool) : Bool) && stdgo._internal.strconv.Strconv__divisiblebypower5._divisibleByPower5((_mant : stdgo.GoUInt64), -_q) : Bool)) {
            _exact = true;
            _d0 = true;
        };
        var _extra = (-_dexp2 : stdgo.GoUInt);
        var _extraMask = ((((1u32 : stdgo.GoUInt32) << _extra : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32);
        var __0 = (_di >> _extra : stdgo.GoUInt32), __1 = (_di & _extraMask : stdgo.GoUInt32);
var _dfrac = __1, _di = __0;
        var _roundUp = (false : Bool);
        if (_exact) {
            _roundUp = (((_dfrac > ((1u32 : stdgo.GoUInt32) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32) : Bool) || (((_dfrac == ((1u32 : stdgo.GoUInt32) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) && !_d0 : Bool)) : Bool) || (((_dfrac == (((1u32 : stdgo.GoUInt32) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) && _d0 : Bool) && ((_di & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == (1u32 : stdgo.GoUInt32)) : Bool)) : Bool);
        } else {
            _roundUp = (_dfrac >> ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32));
        };
        if (_dfrac != ((0u32 : stdgo.GoUInt32))) {
            _d0 = false;
        };
        stdgo._internal.strconv.Strconv__formatdecimal._formatDecimal(_d, (_di : stdgo.GoUInt64), !_d0, _roundUp, _prec);
        (@:checkr _d ?? throw "null pointer dereference")._dp = ((@:checkr _d ?? throw "null pointer dereference")._dp - (_q) : stdgo.GoInt);
    }
