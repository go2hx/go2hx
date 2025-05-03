package stdgo._internal.math;
function _acosh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/acosh.go#L53"
        if (((_x < (1 : stdgo.GoFloat64) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/acosh.go#L55"
            return stdgo._internal.math.Math_nan.naN();
        } else if (_x == ((1 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/acosh.go#L57"
            return (0 : stdgo.GoFloat64);
        } else if ((_x >= (2.68435456e+08 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/acosh.go#L59"
            return (stdgo._internal.math.Math_log.log(_x) + (0.6931471805599453 : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if ((_x > (2 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/acosh.go#L61"
            return stdgo._internal.math.Math_log.log((((2 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) - ((1 : stdgo.GoFloat64) / ((_x + stdgo._internal.math.Math_sqrt.sqrt(((_x * _x : stdgo.GoFloat64) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64));
        };
        var _t = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/acosh.go#L64"
        return stdgo._internal.math.Math_log1p.log1p((_t + stdgo._internal.math.Math_sqrt.sqrt((((2 : stdgo.GoFloat64) * _t : stdgo.GoFloat64) + (_t * _t : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64));
    }
