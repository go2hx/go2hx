package stdgo._internal.math;
function _sqrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L102"
        if (((_x == ((0 : stdgo.GoFloat64)) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool) || stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L104"
            return _x;
        } else if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L106"
            return stdgo._internal.math.Math_nan.naN();
        };
        var _ix = (stdgo._internal.math.Math_float64bits.float64bits(_x) : stdgo.GoUInt64);
        var _exp = ((((_ix >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (2047i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L111"
        if (_exp == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L112"
            while ((_ix & (4503599627370496i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
                _ix = (_ix << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L114"
                _exp--;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L116"
            _exp++;
        };
        _exp = (_exp - ((1023 : stdgo.GoInt)) : stdgo.GoInt);
        _ix = (_ix & ((((9218868437227405312i64 : stdgo.GoUInt64)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _ix = (_ix | ((4503599627370496i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L121"
        if ((_exp & (1 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            _ix = (_ix << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _exp = (_exp >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        _ix = (_ix << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _q:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _s:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _r = ((9007199254740992i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L129"
        while (_r != ((0i64 : stdgo.GoUInt64))) {
            var _t = (_s + _r : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L131"
            if ((_t <= _ix : Bool)) {
                _s = (_t + _r : stdgo.GoUInt64);
                _ix = (_ix - (_t) : stdgo.GoUInt64);
                _q = (_q + (_r) : stdgo.GoUInt64);
            };
            _ix = (_ix << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _r = (_r >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L140"
        if (_ix != ((0i64 : stdgo.GoUInt64))) {
            _q = (_q + ((_q & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _ix = ((_q >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + ((((_exp - (1 : stdgo.GoInt) : stdgo.GoInt) + (1023 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/sqrt.go#L144"
        return stdgo._internal.math.Math_float64frombits.float64frombits(_ix);
    }
