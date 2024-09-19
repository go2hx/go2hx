package stdgo._internal.math.cmplx;
function testIsNaN(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (stdgo._internal.math.cmplx.Cmplx__vcIsNaNSC._vcIsNaNSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_isNaN.isNaN(stdgo._internal.math.cmplx.Cmplx__vcIsNaNSC._vcIsNaNSC[(_i : stdgo.GoInt)]) : Bool);
                    if (stdgo._internal.math.cmplx.Cmplx__isNaNSC._isNaNSC[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("IsNaN(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vcIsNaNSC._vcIsNaNSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__isNaNSC._isNaNSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
