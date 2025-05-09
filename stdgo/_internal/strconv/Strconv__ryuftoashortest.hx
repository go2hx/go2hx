package stdgo._internal.strconv;
function _ryuFtoaShortest(_d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>):Void {
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L228"
        if (_mant == ((0i64 : stdgo.GoUInt64))) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                (@:checkr _d ?? throw "null pointer dereference")._nd = @:binopAssign __tmp__0;
                (@:checkr _d ?? throw "null pointer dereference")._dp = @:binopAssign __tmp__1;
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L230"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L234"
        if (((_exp <= (0 : stdgo.GoInt) : Bool) && (stdgo._internal.math.bits.Bits_trailingzeros64.trailingZeros64(_mant) >= -_exp : Bool) : Bool)) {
            _mant = (_mant >> ((-_exp : stdgo.GoUInt)) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L236"
            stdgo._internal.strconv.Strconv__ryudigits._ryuDigits(_d, _mant, _mant, _mant, true, false);
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L237"
            return;
        };
        var __tmp__ = stdgo._internal.strconv.Strconv__computebounds._computeBounds(_mant, _exp, _flt), _ml:stdgo.GoUInt64 = __tmp__._0, _mc:stdgo.GoUInt64 = __tmp__._1, _mu:stdgo.GoUInt64 = __tmp__._2, _e2:stdgo.GoInt = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L240"
        if (_e2 == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L241"
            stdgo._internal.strconv.Strconv__ryudigits._ryuDigits(_d, _ml, _mc, _mu, true, false);
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L242"
            return;
        };
        var _q = (stdgo._internal.strconv.Strconv__mulbylog2log10._mulByLog2Log10(-_e2) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _dl:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _dc:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _du:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _dl0:Bool = false, _dc0:Bool = false, _du0:Bool = false;
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L251"
        if (_flt == ((stdgo.Go.setRef(stdgo._internal.strconv.Strconv__float32info._float32info) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>))) {
            var _dl32:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _dc32:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _du32:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult64bitpow10._mult64bitPow10((_ml : stdgo.GoUInt32), _e2, _q);
                _dl32 = @:tmpset0 __tmp__._0;
                _dl0 = @:tmpset0 __tmp__._2;
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult64bitpow10._mult64bitPow10((_mc : stdgo.GoUInt32), _e2, _q);
                _dc32 = @:tmpset0 __tmp__._0;
                _dc0 = @:tmpset0 __tmp__._2;
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult64bitpow10._mult64bitPow10((_mu : stdgo.GoUInt32), _e2, _q);
                _du32 = @:tmpset0 __tmp__._0;
                _e2 = @:tmpset0 __tmp__._1;
                _du0 = @:tmpset0 __tmp__._2;
            };
            {
                final __tmp__0 = (_dl32 : stdgo.GoUInt64);
                final __tmp__1 = (_dc32 : stdgo.GoUInt64);
                final __tmp__2 = (_du32 : stdgo.GoUInt64);
                _dl = @:binopAssign __tmp__0;
                _dc = @:binopAssign __tmp__1;
                _du = @:binopAssign __tmp__2;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult128bitpow10._mult128bitPow10(_ml, _e2, _q);
                _dl = @:tmpset0 __tmp__._0;
                _dl0 = @:tmpset0 __tmp__._2;
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult128bitpow10._mult128bitPow10(_mc, _e2, _q);
                _dc = @:tmpset0 __tmp__._0;
                _dc0 = @:tmpset0 __tmp__._2;
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv__mult128bitpow10._mult128bitPow10(_mu, _e2, _q);
                _du = @:tmpset0 __tmp__._0;
                _e2 = @:tmpset0 __tmp__._1;
                _du0 = @:tmpset0 __tmp__._2;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L262"
        if ((_e2 >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L263"
            throw stdgo.Go.toInterface(("not enough significant bits after mult128bitPow10" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L266"
        if ((_q > (55 : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = false;
                final __tmp__1 = false;
                final __tmp__2 = false;
                _dl0 = @:binopAssign __tmp__0;
                _dc0 = @:binopAssign __tmp__1;
                _du0 = @:binopAssign __tmp__2;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L270"
        if (((_q < (0 : stdgo.GoInt) : Bool) && (_q >= (-24 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L273"
            if (stdgo._internal.strconv.Strconv__divisiblebypower5._divisibleByPower5(_ml, -_q)) {
                _dl0 = true;
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L276"
            if (stdgo._internal.strconv.Strconv__divisiblebypower5._divisibleByPower5(_mc, -_q)) {
                _dc0 = true;
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L279"
            if (stdgo._internal.strconv.Strconv__divisiblebypower5._divisibleByPower5(_mu, -_q)) {
                _du0 = true;
            };
        };
        var _extra = (-_e2 : stdgo.GoUInt);
        var _extraMask = ((((1i64 : stdgo.GoUInt64) << _extra : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var __0 = (_dl >> _extra : stdgo.GoUInt64), __1 = (_dl & _extraMask : stdgo.GoUInt64);
var _fracl = __1, _dl = __0;
        var __0 = (_dc >> _extra : stdgo.GoUInt64), __1 = (_dc & _extraMask : stdgo.GoUInt64);
var _fracc = __1, _dc = __0;
        var __0 = (_du >> _extra : stdgo.GoUInt64), __1 = (_du & _extraMask : stdgo.GoUInt64);
var _fracu = __1, _du = __0;
        var _uok = (!_du0 || (_fracu > (0i64 : stdgo.GoUInt64) : Bool) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L296"
        if ((_du0 && (_fracu == (0i64 : stdgo.GoUInt64)) : Bool)) {
            _uok = (_mant & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64));
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L299"
        if (!_uok) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L300"
            _du--;
        };
        var _cup = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L305"
        if (_dc0) {
            _cup = ((_fracc > ((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : Bool) || (((_fracc == ((1i64 : stdgo.GoUInt64) << ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64)) && ((_dc & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool)) : Bool);
        } else {
            _cup = (_fracc >> ((_extra - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64));
        };
        var _lok = ((_dl0 && _fracl == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_mant & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L319"
        if (!_lok) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L320"
            _dl++;
        };
        var _c0 = (_dc0 && (_fracc == (0i64 : stdgo.GoUInt64)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L325"
        stdgo._internal.strconv.Strconv__ryudigits._ryuDigits(_d, _dl, _dc, _du, _c0, _cup);
        (@:checkr _d ?? throw "null pointer dereference")._dp = ((@:checkr _d ?? throw "null pointer dereference")._dp - (_q) : stdgo.GoInt);
    }
