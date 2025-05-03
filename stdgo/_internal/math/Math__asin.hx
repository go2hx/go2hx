package stdgo._internal.math;
function _asin(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/asin.go#L28"
        if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/asin.go#L29"
            return _x;
        };
        var _sign = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/asin.go#L32"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/asin.go#L36"
        if ((_x > (1 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/asin.go#L37"
            return stdgo._internal.math.Math_nan.naN();
        };
        var _temp = (stdgo._internal.math.Math_sqrt.sqrt(((1 : stdgo.GoFloat64) - (_x * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/asin.go#L41"
        if ((_x > (0.7 : stdgo.GoFloat64) : Bool)) {
            _temp = ((1.5707963267948966 : stdgo.GoFloat64) - stdgo._internal.math.Math__satan._satan((_temp / _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        } else {
            _temp = stdgo._internal.math.Math__satan._satan((_x / _temp : stdgo.GoFloat64));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/asin.go#L47"
        if (_sign) {
            _temp = -_temp;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/asin.go#L50"
        return _temp;
    }
