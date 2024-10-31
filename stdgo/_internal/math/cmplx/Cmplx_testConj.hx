package stdgo._internal.math.cmplx;
function testConj(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_conj.conj(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__cVeryclose._cVeryclose(stdgo._internal.math.cmplx.Cmplx__conj._conj[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Conj(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__conj._conj[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vcConjSC._vcConjSC.length) : Bool)) {
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_conj.conj(stdgo._internal.math.cmplx.Cmplx__vcConjSC._vcConjSC[(_i : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(stdgo._internal.math.cmplx.Cmplx__conjSC._conjSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Conj(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vcConjSC._vcConjSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__conjSC._conjSC[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
    }
