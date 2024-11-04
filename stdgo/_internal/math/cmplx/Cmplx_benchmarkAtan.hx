package stdgo._internal.math.cmplx;
function benchmarkAtan(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                stdgo._internal.math.cmplx.Cmplx_atan.atan(new stdgo.GoComplex128((2.5 : stdgo.GoFloat64), (3.5 : stdgo.GoFloat64)));
                _i++;
            };
        };
    }
