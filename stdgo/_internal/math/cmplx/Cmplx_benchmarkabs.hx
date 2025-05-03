package stdgo._internal.math.cmplx;
function benchmarkAbs(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1481"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1482"
                stdgo._internal.math.cmplx.Cmplx_abs.abs(new stdgo.GoComplex128((2.5 : stdgo.GoFloat64), (3.5 : stdgo.GoFloat64)));
                _i++;
            };
        };
    }
