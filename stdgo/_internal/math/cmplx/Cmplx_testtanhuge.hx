package stdgo._internal.math.cmplx;
function testTanHuge(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/huge_test.go#L17"
        for (_i => _x in stdgo._internal.math.cmplx.Cmplx__hugein._hugeIn) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/huge_test.go#L18"
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_tan.tan(_x) : stdgo.GoComplex128);
                if (!stdgo._internal.math.cmplx.Cmplx__csoclose._cSoclose(stdgo._internal.math.cmplx.Cmplx__tanhuge._tanHuge[(_i : stdgo.GoInt)], _f, (3e-15 : stdgo.GoFloat64))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/huge_test.go#L19"
                    _t.errorf(("Tan(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__tanhuge._tanHuge[(_i : stdgo.GoInt)]));
                };
            };
        };
    }
