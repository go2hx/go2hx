package stdgo._internal.math;
function _stirling(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        if ((_x > (200 : stdgo.GoFloat64) : Bool)) {
            return { _0 : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _1 : (1 : stdgo.GoFloat64) };
        };
        {};
        var _w = ((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
        _w = ((1 : stdgo.GoFloat64) + (_w * ((((((((((((stdgo._internal.math.Math___gams.__gamS[(0 : stdgo.GoInt)] * _w : stdgo.GoFloat64) + stdgo._internal.math.Math___gams.__gamS[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _w : stdgo.GoFloat64) + stdgo._internal.math.Math___gams.__gamS[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _w : stdgo.GoFloat64) + stdgo._internal.math.Math___gams.__gamS[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _w : stdgo.GoFloat64) + stdgo._internal.math.Math___gams.__gamS[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _y1 = (stdgo._internal.math.Math_exp.exp(_x) : stdgo.GoFloat64);
        var _y2 = (1 : stdgo.GoFloat64);
        if ((_x > (143.01608 : stdgo.GoFloat64) : Bool)) {
            var _v = (stdgo._internal.math.Math_pow.pow(_x, (((0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) - (0.25 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            {
                final __tmp__0 = _v;
                final __tmp__1 = (_v / _y1 : stdgo.GoFloat64);
                _y1 = __tmp__0;
                _y2 = __tmp__1;
            };
        } else {
            _y1 = (stdgo._internal.math.Math_pow.pow(_x, (_x - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) / _y1 : stdgo.GoFloat64);
        };
        return { _0 : _y1, _1 : (((2.5066282746310007 : stdgo.GoFloat64) * _w : stdgo.GoFloat64) * _y2 : stdgo.GoFloat64) };
    }
