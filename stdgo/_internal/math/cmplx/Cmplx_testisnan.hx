package stdgo._internal.math.cmplx;
function testIsNaN(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1228"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vcisnansc._vcIsNaNSC.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1229"
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_isnan.isNaN(stdgo._internal.math.cmplx.Cmplx__vcisnansc._vcIsNaNSC[(_i : stdgo.GoInt)]) : Bool);
                    if (stdgo._internal.math.cmplx.Cmplx__isnansc._isNaNSC[(_i : stdgo.GoInt)] != (_f)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1230"
                        _t.errorf(("IsNaN(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vcisnansc._vcIsNaNSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__isnansc._isNaNSC[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
    }
