package stdgo._internal.strconv;
function _eiselLemire64(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat64), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L30"
        if (_man == ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L31"
            if (_neg) {
                _f = stdgo._internal.math.Math_float64frombits.float64frombits((-9223372036854775808i64 : stdgo.GoUInt64));
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L34"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : Bool; } = { _0 : _f, _1 : true };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L36"
        if (((_exp10 < (-348 : stdgo.GoInt) : Bool) || ((347 : stdgo.GoInt) < _exp10 : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L37"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : false };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _clz = (stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_man) : stdgo.GoInt);
        _man = (_man << ((_clz : stdgo.GoUInt)) : stdgo.GoUInt64);
        {};
        var _retExp2 = (((((((217706 : stdgo.GoInt) * _exp10 : stdgo.GoInt) >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) + (64 : stdgo.GoInt) : stdgo.GoInt) + (1023 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64) - (_clz : stdgo.GoUInt64) : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_man, stdgo._internal.strconv.Strconv__detailedpowersoften._detailedPowersOfTen[(_exp10 - (-348 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)]), _xHi:stdgo.GoUInt64 = __tmp__._0, _xLo:stdgo.GoUInt64 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L50"
        if ((((_xHi & (511i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (511i64 : stdgo.GoUInt64)) && ((_xLo + _man : stdgo.GoUInt64) < _man : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_man, stdgo._internal.strconv.Strconv__detailedpowersoften._detailedPowersOfTen[(_exp10 - (-348 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)]), _yHi:stdgo.GoUInt64 = __tmp__._0, _yLo:stdgo.GoUInt64 = __tmp__._1;
            var __0 = (_xHi : stdgo.GoUInt64), __1 = (_xLo + _yHi : stdgo.GoUInt64);
var _mergedLo = __1, _mergedHi = __0;
            //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L53"
            if ((_mergedLo < _xLo : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L54"
                _mergedHi++;
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L56"
            if ((((_mergedHi & (511i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((511i64 : stdgo.GoUInt64)) && (_mergedLo + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_yLo + _man : stdgo.GoUInt64) < _man : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L57"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : false };
                    _f = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            {
                final __tmp__0 = _mergedHi;
                final __tmp__1 = _mergedLo;
                _xHi = @:binopAssign __tmp__0;
                _xLo = @:binopAssign __tmp__1;
            };
        };
        var _msb = (_xHi >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _retMantissa = (_xHi >> ((_msb + (9i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _retExp2 = (_retExp2 - (((1i64 : stdgo.GoUInt64) ^ _msb : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L68"
        if (((_xLo == ((0i64 : stdgo.GoUInt64)) && (_xHi & (511i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_retMantissa & (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (1i64 : stdgo.GoUInt64)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L69"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : false };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        _retMantissa = (_retMantissa + ((_retMantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _retMantissa = (_retMantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L75"
        if (((_retMantissa >> (53i64 : stdgo.GoUInt64) : stdgo.GoUInt64) > (0i64 : stdgo.GoUInt64) : Bool)) {
            _retMantissa = (_retMantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _retExp2 = (_retExp2 + ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L84"
        if (((_retExp2 - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >= (2046i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L85"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : Bool; } = { _0 : (0 : stdgo.GoFloat64), _1 : false };
                _f = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _retBits = ((_retExp2 << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_retMantissa & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L88"
        if (_neg) {
            _retBits = (_retBits | ((-9223372036854775808i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/eisel_lemire.go#L91"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : Bool; } = { _0 : stdgo._internal.math.Math_float64frombits.float64frombits(_retBits), _1 : true };
            _f = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
