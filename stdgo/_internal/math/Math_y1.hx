package stdgo._internal.math;
function y1(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x < (0 : stdgo.GoFloat64) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        } else if (_x == (0 : stdgo.GoFloat64)) {
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        };
        if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
            var _ss = (-_s - _c : stdgo.GoFloat64);
            var _cc = (_s - _c : stdgo.GoFloat64);
            if ((_x < (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
                var _z = (stdgo._internal.math.Math_cos.cos((_x + _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                if (((_s * _c : stdgo.GoFloat64) > (0 : stdgo.GoFloat64) : Bool)) {
                    _cc = (_z / _ss : stdgo.GoFloat64);
                } else {
                    _ss = (_z / _cc : stdgo.GoFloat64);
                };
            };
            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            if ((_x > (6.80564733841877e+38 : stdgo.GoFloat64) : Bool)) {
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * _ss : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
            } else {
                var _u = (stdgo._internal.math.Math__pone._pone(_x) : stdgo.GoFloat64);
                var _v = (stdgo._internal.math.Math__qone._qone(_x) : stdgo.GoFloat64);
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * (((_u * _ss : stdgo.GoFloat64) + (_v * _cc : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
            };
            return _z;
        };
        if ((_x <= (5.551115123125783e-17 : stdgo.GoFloat64) : Bool)) {
            return ((-0.6366197723675814 : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
        };
        var _z = (_x * _x : stdgo.GoFloat64);
        var _u = ((-0.19605709064623894 : stdgo.GoFloat64) + (_z * (((0.05044387166398113 : stdgo.GoFloat64) + (_z * (((-0.0019125689587576355 : stdgo.GoFloat64) + (_z * (((2.352526005616105e-05 : stdgo.GoFloat64) + (_z * (-9.190991580398789e-08 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _v = ((1 : stdgo.GoFloat64) + (_z * (((0.01991673182366499 : stdgo.GoFloat64) + (_z * (((0.00020255258102513517 : stdgo.GoFloat64) + (_z * (((1.3560880109751623e-06 : stdgo.GoFloat64) + (_z * (((6.227414523646215e-09 : stdgo.GoFloat64) + (_z * (1.6655924620799208e-11 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        return ((_x * ((_u / _v : stdgo.GoFloat64)) : stdgo.GoFloat64) + ((0.6366197723675814 : stdgo.GoFloat64) * (((stdgo._internal.math.Math_j1.j1(_x) * stdgo._internal.math.Math_log.log(_x) : stdgo.GoFloat64) - ((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
