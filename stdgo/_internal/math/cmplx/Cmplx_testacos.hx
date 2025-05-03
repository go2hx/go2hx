package stdgo._internal.math.cmplx;
function testAcos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L957"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L958"
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_acos.acos(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__csoclose._cSoclose(stdgo._internal.math.cmplx.Cmplx__acos._acos[(_i : stdgo.GoInt)], _f, (1e-14 : stdgo.GoFloat64))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L959"
                        _t.errorf(("Acos(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__acos._acos[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L962"
        for (__0 => _v in stdgo._internal.math.cmplx.Cmplx__acossc._acosSC) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L963"
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_acos.acos(_v._in) : stdgo.GoComplex128);
                if (!stdgo._internal.math.cmplx.Cmplx__calike._cAlike(_v._want, _f)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L964"
                    _t.errorf(("Acos(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_v._in), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_v._want));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L966"
            if ((stdgo._internal.math.Math_isnan.isNaN((_v._in : stdgo.GoComplex128).imag) || stdgo._internal.math.Math_isnan.isNaN((_v._want : stdgo.GoComplex128).imag) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L968"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L971"
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_acos.acos(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : stdgo.GoComplex128);
                if ((!stdgo._internal.math.cmplx.Cmplx__calike._cAlike(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want), _f) && !stdgo._internal.math.cmplx.Cmplx__calike._cAlike(_v._in, stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L972"
                    _t.errorf(("Acos(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want)));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L975"
        for (__1 => _pt in stdgo._internal.math.cmplx.Cmplx__branchpoints._branchPoints) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L976"
            {
                var __0 = (stdgo._internal.math.cmplx.Cmplx_acos.acos(_pt[(0 : stdgo.GoInt)]) : stdgo.GoComplex128), __1 = (stdgo._internal.math.cmplx.Cmplx_acos.acos(_pt[(1 : stdgo.GoInt)]) : stdgo.GoComplex128);
var _f1 = __1, _f0 = __0;
                if (!stdgo._internal.math.cmplx.Cmplx__cveryclose._cVeryclose(_f0, _f1)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L977"
                    _t.errorf(("Acos(%g) not continuous, got %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_pt[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f0), stdgo.Go.toInterface(_f1));
                };
            };
        };
    }
