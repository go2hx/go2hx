package stdgo._internal.math.cmplx;
function testTanh(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_tanh.tanh(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__cSoclose._cSoclose(stdgo._internal.math.cmplx.Cmplx__tanh._tanh[(_i : stdgo.GoInt)], _f, (2e-15 : stdgo.GoFloat64))) {
                        _t.errorf(("Tanh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__tanh._tanh[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        for (__0 => _v in stdgo._internal.math.cmplx.Cmplx__tanhSC._tanhSC) {
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_tanh.tanh(_v._in) : stdgo.GoComplex128);
                if (!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(_v._want, _f)) {
                    _t.errorf(("Tanh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_v._in), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_v._want));
                };
            };
            if ((stdgo._internal.math.Math_isNaN.isNaN(_v._in.imag) || stdgo._internal.math.Math_isNaN.isNaN(_v._want.imag) : Bool)) {
                continue;
            };
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_tanh.tanh(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : stdgo.GoComplex128);
                if ((!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want), _f) && !stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(_v._in, stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)) : Bool)) {
                    _t.errorf(("Tanh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._in)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_conj.conj(_v._want)));
                };
            };
            if ((stdgo._internal.math.Math_isNaN.isNaN(_v._in.real) || stdgo._internal.math.Math_isNaN.isNaN(_v._want.real) : Bool)) {
                continue;
            };
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_tanh.tanh(-_v._in) : stdgo.GoComplex128);
                if ((!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(-_v._want, _f) && !stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(_v._in, -_v._in) : Bool)) {
                    _t.errorf(("Tanh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(-_v._in), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(-_v._want));
                };
            };
        };
    }