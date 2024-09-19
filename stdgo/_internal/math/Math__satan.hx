package stdgo._internal.math;
function _satan(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((_x <= (0.66 : stdgo.GoFloat64) : Bool)) {
            return stdgo._internal.math.Math__xatan._xatan(_x);
        };
        if ((_x > (2.414213562373095 : stdgo.GoFloat64) : Bool)) {
            return (((1.5707963267948966 : stdgo.GoFloat64) - stdgo._internal.math.Math__xatan._xatan(((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64)) : stdgo.GoFloat64) + (6.123233995736766e-17 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        return (((0.7853981633974483 : stdgo.GoFloat64) + stdgo._internal.math.Math__xatan._xatan((((_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) / ((_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64) + (3.061616997868383e-17 : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
