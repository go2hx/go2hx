package stdgo._internal.math.cmplx;
function testAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L945"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L946"
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_abs.abs(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!stdgo._internal.math.cmplx.Cmplx__veryclose._veryclose(stdgo._internal.math.cmplx.Cmplx__abs._abs[(_i : stdgo.GoInt)], _f)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L947"
                        _t.errorf(("Abs(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__abs._abs[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L950"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vcabssc._vcAbsSC.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L951"
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_abs.abs(stdgo._internal.math.cmplx.Cmplx__vcabssc._vcAbsSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!stdgo._internal.math.cmplx.Cmplx__alike._alike(stdgo._internal.math.cmplx.Cmplx__abssc._absSC[(_i : stdgo.GoInt)], _f)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L952"
                        _t.errorf(("Abs(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vcabssc._vcAbsSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__abssc._absSC[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
    }
