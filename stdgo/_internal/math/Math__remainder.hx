package stdgo._internal.math;
function _remainder(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L51"
        if ((((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isnan.isNaN(_y) : Bool) || stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) : Bool) || (_y == (0 : stdgo.GoFloat64)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L53"
            return stdgo._internal.math.Math_nan.naN();
        } else if (stdgo._internal.math.Math_isinf.isInf(_y, (0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L55"
            return _x;
        };
        var _sign = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L58"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L62"
        if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
            _y = -_y;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L65"
        if (_x == (_y)) {
            //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L66"
            if (_sign) {
                var _zero = (0 : stdgo.GoFloat64);
                //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L68"
                return -_zero;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L70"
            return (0 : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L72"
        if ((_y <= (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
            _x = stdgo._internal.math.Math_mod.mod(_x, (_y + _y : stdgo.GoFloat64));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L75"
        if ((_y < (4.450147717014403e-308 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L76"
            if (((_x + _x : stdgo.GoFloat64) > _y : Bool)) {
                _x = (_x - (_y) : stdgo.GoFloat64);
                //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L78"
                if (((_x + _x : stdgo.GoFloat64) >= _y : Bool)) {
                    _x = (_x - (_y) : stdgo.GoFloat64);
                };
            };
        } else {
            var _yHalf = ((0.5 : stdgo.GoFloat64) * _y : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L84"
            if ((_x > _yHalf : Bool)) {
                _x = (_x - (_y) : stdgo.GoFloat64);
                //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L86"
                if ((_x >= _yHalf : Bool)) {
                    _x = (_x - (_y) : stdgo.GoFloat64);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L91"
        if (_sign) {
            _x = -_x;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/remainder.go#L94"
        return _x;
    }
