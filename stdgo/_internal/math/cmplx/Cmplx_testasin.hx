package stdgo._internal.math.cmplx;
function testAsin(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1008"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1009"
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_asin.asin(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__csoclose._cSoclose(stdgo._internal.math.cmplx.Cmplx__asin._asin[(_i : stdgo.GoInt)], _f, (1e-14 : stdgo.GoFloat64))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1010"
                        _t.errorf(("Asin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__asin._asin[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1013"
        for (__0 => _v in stdgo._internal.math.cmplx.Cmplx__asinsc._asinSC) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1014"
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_asin.asin(_v._in) : stdgo.GoComplex128);
                if (!stdgo._internal.math.cmplx.Cmplx__calike._cAlike(_v._want, _f)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1015"
                    _t.errorf(("Asin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_v._in), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_v._want));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1017"
            if ((stdgo._internal.math.Math_isnan.isNaN((_v._in : stdgo.GoComplex128).imag) || stdgo._internal.math.Math_isnan.isNaN((_v._want : stdgo.GoComplex128).imag) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1019"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1022"
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_asin.asin(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : stdgo.GoComplex128);
                if ((!stdgo._internal.math.cmplx.Cmplx__calike._cAlike(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want), _f) && !stdgo._internal.math.cmplx.Cmplx__calike._cAlike(_v._in, stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1023"
                    _t.errorf(("Asin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want)));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1025"
            if ((stdgo._internal.math.Math_isnan.isNaN((_v._in : stdgo.GoComplex128).real) || stdgo._internal.math.Math_isnan.isNaN((_v._want : stdgo.GoComplex128).real) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1027"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1030"
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_asin.asin(-_v._in) : stdgo.GoComplex128);
                if ((!stdgo._internal.math.cmplx.Cmplx__calike._cAlike(-_v._want, _f) && !stdgo._internal.math.cmplx.Cmplx__calike._cAlike(_v._in, -_v._in) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1031"
                    _t.errorf(("Asin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(-_v._in), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(-_v._want));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1034"
        for (__1 => _pt in stdgo._internal.math.cmplx.Cmplx__branchpoints._branchPoints) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1035"
            {
                var __0 = (stdgo._internal.math.cmplx.Cmplx_asin.asin(_pt[(0 : stdgo.GoInt)]) : stdgo.GoComplex128), __1 = (stdgo._internal.math.cmplx.Cmplx_asin.asin(_pt[(1 : stdgo.GoInt)]) : stdgo.GoComplex128);
var _f1 = __1, _f0 = __0;
                if (!stdgo._internal.math.cmplx.Cmplx__cveryclose._cVeryclose(_f0, _f1)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1036"
                    _t.errorf(("Asin(%g) not continuous, got %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_pt[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f0), stdgo.Go.toInterface(_f1));
                };
            };
        };
    }
