package stdgo._internal.math.big;
function _isFinite(_f:stdgo.GoFloat64):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L474"
        return (stdgo._internal.math.Math_abs.abs(_f) <= (1.7976931348623157e+308 : stdgo.GoFloat64) : Bool);
    }
