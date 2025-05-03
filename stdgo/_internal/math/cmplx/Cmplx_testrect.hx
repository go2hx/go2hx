package stdgo._internal.math.cmplx;
function testRect(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1323"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1324"
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_rect.rect(stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._r, stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._theta) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__cveryclose._cVeryclose(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)], _f)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1325"
                        _t.errorf(("Rect(%g, %g) = %g want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._r), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._theta), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1328"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vcpolarsc._vcPolarSC.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1329"
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_rect.rect(stdgo._internal.math.cmplx.Cmplx__polarsc._polarSC[(_i : stdgo.GoInt)]._r, stdgo._internal.math.cmplx.Cmplx__polarsc._polarSC[(_i : stdgo.GoInt)]._theta) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__calike._cAlike(stdgo._internal.math.cmplx.Cmplx__vcpolarsc._vcPolarSC[(_i : stdgo.GoInt)], _f)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1330"
                        _t.errorf(("Rect(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polarsc._polarSC[(_i : stdgo.GoInt)]._r), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polarsc._polarSC[(_i : stdgo.GoInt)]._theta), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vcpolarsc._vcPolarSC[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
    }
