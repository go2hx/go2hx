package stdgo._internal.math.cmplx;
function benchmarkLog10(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.math.cmplx.Cmplx_log10.log10(new stdgo.GoComplex128((2.5 : stdgo.GoFloat64), (3.5 : stdgo.GoFloat64)));
            });
        };
    }
