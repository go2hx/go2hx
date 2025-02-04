package stdgo._internal.math.cmplx;
function benchmarkRect(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.math.cmplx.Cmplx_rect.rect((2.5 : stdgo.GoFloat64), (1.5 : stdgo.GoFloat64));
                _i++;
            };
        };
    }
