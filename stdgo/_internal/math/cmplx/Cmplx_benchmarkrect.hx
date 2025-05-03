package stdgo._internal.math.cmplx;
function benchmarkRect(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1561"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1562"
                stdgo._internal.math.cmplx.Cmplx_rect.rect((2.5 : stdgo.GoFloat64), (1.5 : stdgo.GoFloat64));
                _i++;
            };
        };
    }
