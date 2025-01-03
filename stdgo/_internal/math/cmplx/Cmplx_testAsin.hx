package stdgo._internal.math.cmplx;
function testAsin(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_asin.asin(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__cSoclose._cSoclose(stdgo._internal.math.cmplx.Cmplx__asin._asin[(_i : stdgo.GoInt)], _f, (1e-14 : stdgo.GoFloat64))) {
                        @:check2r _t.errorf(("Asin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__asin._asin[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        for (__0 => _v in stdgo._internal.math.cmplx.Cmplx__asinSC._asinSC) {
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_asin.asin(_v._in) : stdgo.GoComplex128);
                if (!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(_v._want, _f)) {
                    @:check2r _t.errorf(("Asin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_v._in), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_v._want));
                };
            };
            if ((stdgo._internal.math.Math_isNaN.isNaN(_v._in.imag) || stdgo._internal.math.Math_isNaN.isNaN(_v._want.imag) : Bool)) {
                continue;
            };
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_asin.asin(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : stdgo.GoComplex128);
                if ((!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want), _f) && !stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(_v._in, stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : Bool)) {
                    @:check2r _t.errorf(("Asin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want)));
                };
            };
            if ((stdgo._internal.math.Math_isNaN.isNaN(_v._in.real) || stdgo._internal.math.Math_isNaN.isNaN(_v._want.real) : Bool)) {
                continue;
            };
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_asin.asin(-_v._in) : stdgo.GoComplex128);
                if ((!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(-_v._want, _f) && !stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(_v._in, -_v._in) : Bool)) {
                    @:check2r _t.errorf(("Asin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(-_v._in), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(-_v._want));
                };
            };
        };
        for (__1 => _pt in stdgo._internal.math.cmplx.Cmplx__branchPoints._branchPoints) {
            {
                var __0 = (stdgo._internal.math.cmplx.Cmplx_asin.asin(_pt[(0 : stdgo.GoInt)]) : stdgo.GoComplex128), __1 = (stdgo._internal.math.cmplx.Cmplx_asin.asin(_pt[(1 : stdgo.GoInt)]) : stdgo.GoComplex128);
var _f1 = __1, _f0 = __0;
                if (!stdgo._internal.math.cmplx.Cmplx__cVeryclose._cVeryclose(_f0, _f1)) {
                    @:check2r _t.errorf(("Asin(%g) not continuous, got %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_pt[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f0), stdgo.Go.toInterface(_f1));
                };
            };
        };
    }
