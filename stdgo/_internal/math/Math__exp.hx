package stdgo._internal.math;
function _exp(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/exp.go#L111"
        if ((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/exp.go#L113"
            return _x;
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/exp.go#L115"
            return (0 : stdgo.GoFloat64);
        } else if ((_x > (709.782712893384 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/exp.go#L117"
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        } else if ((_x < (-745.1332191019411 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/exp.go#L119"
            return (0 : stdgo.GoFloat64);
        } else if ((((-3.725290298461914e-09 : stdgo.GoFloat64) < _x : Bool) && (_x < (3.725290298461914e-09 : stdgo.GoFloat64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/exp.go#L121"
            return ((1 : stdgo.GoFloat64) + _x : stdgo.GoFloat64);
        };
        var _k:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/exp.go#L126"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _k = ((((1.4426950408889634 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        } else if ((_x > (0 : stdgo.GoFloat64) : Bool)) {
            _k = ((((1.4426950408889634 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
        };
        var _hi = (_x - ((_k : stdgo.GoFloat64) * (0.6931471803691238 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _lo = ((_k : stdgo.GoFloat64) * (1.9082149292705877e-10 : stdgo.GoFloat64) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/exp.go#L136"
        return stdgo._internal.math.Math__expmulti._expmulti(_hi, _lo, _k);
    }
