package stdgo._internal.math;
function _sinPi(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((_x < (0.25 : stdgo.GoFloat64) : Bool)) {
            return -stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _x : stdgo.GoFloat64));
        };
        var _z = (stdgo._internal.math.Math_floor.floor(_x) : stdgo.GoFloat64);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_z != (_x)) {
            _x = stdgo._internal.math.Math_mod.mod(_x, (2 : stdgo.GoFloat64));
            _n = ((_x * (4 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        } else {
            if ((_x >= (9.007199254740992e+15 : stdgo.GoFloat64) : Bool)) {
                _x = (0 : stdgo.GoFloat64);
                _n = (0 : stdgo.GoInt);
            } else {
                if ((_x < (4.503599627370496e+15 : stdgo.GoFloat64) : Bool)) {
                    _z = (_x + (4.503599627370496e+15 : stdgo.GoFloat64) : stdgo.GoFloat64);
                };
                _n = (((1i64 : stdgo.GoUInt64) & stdgo._internal.math.Math_float64bits.float64bits(_z) : stdgo.GoUInt64) : stdgo.GoInt);
                _x = (_n : stdgo.GoFloat64);
                _n = (_n << ((2i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
        {
            final __value__ = _n;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _x = stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _x : stdgo.GoFloat64));
            } else if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                _x = stdgo._internal.math.Math_cos.cos(((3.141592653589793 : stdgo.GoFloat64) * (((0.5 : stdgo.GoFloat64) - _x : stdgo.GoFloat64)) : stdgo.GoFloat64));
            } else if (__value__ == ((3 : stdgo.GoInt)) || __value__ == ((4 : stdgo.GoInt))) {
                _x = stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * (((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64)) : stdgo.GoFloat64));
            } else if (__value__ == ((5 : stdgo.GoInt)) || __value__ == ((6 : stdgo.GoInt))) {
                _x = -stdgo._internal.math.Math_cos.cos(((3.141592653589793 : stdgo.GoFloat64) * ((_x - (1.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64));
            } else {
                _x = stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * ((_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64));
            };
        };
        return -_x;
    }
