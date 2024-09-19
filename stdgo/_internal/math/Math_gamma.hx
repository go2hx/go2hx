package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        stdgo._internal.internal.Macro.controlFlow({
            {};
            if (((stdgo._internal.math.Math__isNegInt._isNegInt(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool)) {
                return stdgo._internal.math.Math_naN.naN();
            } else if (stdgo._internal.math.Math_isInf.isInf(_x, (1 : stdgo.GoInt))) {
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            } else if (_x == (0 : stdgo.GoFloat64)) {
                if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                };
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
            var _q = (stdgo._internal.math.Math_abs.abs(_x) : stdgo.GoFloat64);
            var _p = (stdgo._internal.math.Math_floor.floor(_q) : stdgo.GoFloat64);
            if ((_q > (33 : stdgo.GoFloat64) : Bool)) {
                if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                    var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x), _y1:stdgo.GoFloat64 = __tmp__._0, _y2:stdgo.GoFloat64 = __tmp__._1;
                    return (_y1 * _y2 : stdgo.GoFloat64);
                };
                var _signgam = (1 : stdgo.GoInt);
                {
                    var _ip = (_p : stdgo.GoInt64);
                    if ((_ip & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                        _signgam = (-1 : stdgo.GoInt);
                    };
                };
                var _z = (_q - _p : stdgo.GoFloat64);
                if ((_z > (0.5 : stdgo.GoFloat64) : Bool)) {
                    _p = (_p + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z = (_q - _p : stdgo.GoFloat64);
                };
                _z = (_q * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z : stdgo.GoFloat64)) : stdgo.GoFloat64);
                if (_z == (0 : stdgo.GoFloat64)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam);
                };
                var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q), _sq1:stdgo.GoFloat64 = __tmp__._0, _sq2:stdgo.GoFloat64 = __tmp__._1;
                var _absz = (stdgo._internal.math.Math_abs.abs(_z) : stdgo.GoFloat64);
                var _d = ((_absz * _sq1 : stdgo.GoFloat64) * _sq2 : stdgo.GoFloat64);
                if (stdgo._internal.math.Math_isInf.isInf(_d, (0 : stdgo.GoInt))) {
                    _z = ((((3.141592653589793 : stdgo.GoFloat64) / _absz : stdgo.GoFloat64) / _sq1 : stdgo.GoFloat64) / _sq2 : stdgo.GoFloat64);
                } else {
                    _z = ((3.141592653589793 : stdgo.GoFloat64) / _d : stdgo.GoFloat64);
                };
                return ((_signgam : stdgo.GoFloat64) * _z : stdgo.GoFloat64);
            };
            var _z = (1 : stdgo.GoFloat64);
            while ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _z = (_z * _x : stdgo.GoFloat64);
            };
            while ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                    @:goto "small";
                };
                _z = (_z / _x : stdgo.GoFloat64);
                _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            while ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                    @:goto "small";
                };
                _z = (_z / _x : stdgo.GoFloat64);
                _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            if (_x == (2 : stdgo.GoFloat64)) {
                return _z;
            };
            _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _p = (((((((((((((((((_x * stdgo._internal.math.Math___gamP.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamP.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
            _q = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamQ.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamQ.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
            return ((_z * _p : stdgo.GoFloat64) / _q : stdgo.GoFloat64);
            @:label("small") if (_x == (0 : stdgo.GoFloat64)) {
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
            return (_z / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        });
    }
