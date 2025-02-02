package stdgo._internal.math;
function _atan(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (_x == (0 : stdgo.GoFloat64)) {
            return _x;
        };
        if ((_x > (0 : stdgo.GoFloat64) : Bool)) {
            return stdgo._internal.math.Math__satan._satan(_x);
        };
        return -stdgo._internal.math.Math__satan._satan(-_x);
    }
