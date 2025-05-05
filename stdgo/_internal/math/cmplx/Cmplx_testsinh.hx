package stdgo._internal.math.cmplx;
function testSinh(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1363"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1364"
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_sinh.sinh(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__csoclose._cSoclose(stdgo._internal.math.cmplx.Cmplx__sinh._sinh[(_i : stdgo.GoInt)], _f, (2e-15 : stdgo.GoFloat64))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1365"
                        _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__sinh._sinh[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1368"
        for (__0 => _v in stdgo._internal.math.cmplx.Cmplx__sinhsc._sinhSC) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1369"
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_sinh.sinh(_v._in) : stdgo.GoComplex128);
                if (!stdgo._internal.math.cmplx.Cmplx__calike._cAlike(_v._want, _f)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1370"
                    _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_v._in), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_v._want));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1372"
            if ((stdgo._internal.math.Math_isnan.isNaN((_v._in : stdgo.GoComplex128).imag) || stdgo._internal.math.Math_isnan.isNaN((_v._want : stdgo.GoComplex128).imag) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1374"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1377"
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_sinh.sinh(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : stdgo.GoComplex128);
                if ((!stdgo._internal.math.cmplx.Cmplx__calike._cAlike(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want), _f) && !stdgo._internal.math.cmplx.Cmplx__calike._cAlike(_v._in, stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1378"
                    _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want)));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1380"
            if ((stdgo._internal.math.Math_isnan.isNaN((_v._in : stdgo.GoComplex128).real) || stdgo._internal.math.Math_isnan.isNaN((_v._want : stdgo.GoComplex128).real) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1382"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1385"
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_sinh.sinh(-_v._in) : stdgo.GoComplex128);
                if ((!stdgo._internal.math.cmplx.Cmplx__calike._cAlike(-_v._want, _f) && !stdgo._internal.math.cmplx.Cmplx__calike._cAlike(_v._in, -_v._in) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1386"
                    _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(-_v._in), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(-_v._want));
                };
            };
        };
    }
