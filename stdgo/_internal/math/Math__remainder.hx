package stdgo._internal.math;
function _remainder(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isnan.isNaN(_y) : Bool) || stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) : Bool) || (_y == (0 : stdgo.GoFloat64)) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        } else if (stdgo._internal.math.Math_isinf.isInf(_y, (0 : stdgo.GoInt))) {
            return _x;
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
            _y = -_y;
        };
        if (_x == (_y)) {
            if (_sign) {
                var _zero = (0 : stdgo.GoFloat64);
                return -_zero;
            };
            return (0 : stdgo.GoFloat64);
        };
        if ((_y <= (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
            _x = stdgo._internal.math.Math_mod.mod(_x, (_y + _y : stdgo.GoFloat64));
        };
        if ((_y < (4.450147717014403e-308 : stdgo.GoFloat64) : Bool)) {
            if (((_x + _x : stdgo.GoFloat64) > _y : Bool)) {
                _x = (_x - (_y) : stdgo.GoFloat64);
                if (((_x + _x : stdgo.GoFloat64) >= _y : Bool)) {
                    _x = (_x - (_y) : stdgo.GoFloat64);
                };
            };
        } else {
            var _yHalf = ((0.5 : stdgo.GoFloat64) * _y : stdgo.GoFloat64);
            if ((_x > _yHalf : Bool)) {
                _x = (_x - (_y) : stdgo.GoFloat64);
                if ((_x >= _yHalf : Bool)) {
                    _x = (_x - (_y) : stdgo.GoFloat64);
                };
            };
        };
        if (_sign) {
            _x = -_x;
        };
        return _x;
    }
