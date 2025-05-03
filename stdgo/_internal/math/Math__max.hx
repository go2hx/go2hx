package stdgo._internal.math;
function _max(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L49"
        if ((stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt)) || stdgo._internal.math.Math_isinf.isInf(_y, (1 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L51"
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        } else if ((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isnan.isNaN(_y) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L53"
            return stdgo._internal.math.Math_nan.naN();
        } else if (((_x == (0 : stdgo.GoFloat64)) && (_x == _y) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L55"
            if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L56"
                return _y;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L58"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L60"
        if ((_x > _y : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L61"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/dim.go#L63"
        return _y;
    }
