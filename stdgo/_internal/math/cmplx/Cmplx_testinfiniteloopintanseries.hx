package stdgo._internal.math.cmplx;
function testInfiniteLoopIntanSeries(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _want = (stdgo._internal.math.cmplx.Cmplx_inf.inf() : stdgo.GoComplex128);
        {
            var _got = (stdgo._internal.math.cmplx.Cmplx_cot.cot(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))) : stdgo.GoComplex128);
            if (_got != (_want)) {
                @:check2r _t.errorf(("Cot(0): got %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
