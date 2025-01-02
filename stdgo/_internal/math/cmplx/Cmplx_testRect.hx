package stdgo._internal.math.cmplx;
function testRect(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_rect.rect(stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._r, stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._theta) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__cVeryclose._cVeryclose(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)], _f)) {
                        @:check2r _t.errorf(("Rect(%g, %g) = %g want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._r), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._theta), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vcPolarSC._vcPolarSC.length) : Bool)) {
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_rect.rect(stdgo._internal.math.cmplx.Cmplx__polarSC._polarSC[(_i : stdgo.GoInt)]._r, stdgo._internal.math.cmplx.Cmplx__polarSC._polarSC[(_i : stdgo.GoInt)]._theta) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(stdgo._internal.math.cmplx.Cmplx__vcPolarSC._vcPolarSC[(_i : stdgo.GoInt)], _f)) {
                        @:check2r _t.errorf(("Rect(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polarSC._polarSC[(_i : stdgo.GoInt)]._r), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polarSC._polarSC[(_i : stdgo.GoInt)]._theta), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vcPolarSC._vcPolarSC[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
    }
