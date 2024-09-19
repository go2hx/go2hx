package stdgo._internal.math.cmplx;
function benchmarkRect(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.math.cmplx.Cmplx_rect.rect((2.5 : stdgo.GoFloat64), (1.5 : stdgo.GoFloat64));
            });
        };
    }
