package stdgo._internal.math.cmplx;
function testPolar(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.math.cmplx.Cmplx_polar.polar(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), _r:stdgo.GoFloat64 = __tmp__._0, _theta:stdgo.GoFloat64 = __tmp__._1;
                    if ((!stdgo._internal.math.cmplx.Cmplx__veryclose._veryclose(stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._r, _r) && !stdgo._internal.math.cmplx.Cmplx__veryclose._veryclose(stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._theta, _theta) : Bool)) {
                        @:check2r _t.errorf(("Polar(%g) = %g, %g want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_theta), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._r), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polar._polar[(_i : stdgo.GoInt)]._theta));
                    };
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vcpolarsc._vcPolarSC.length) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.math.cmplx.Cmplx_polar.polar(stdgo._internal.math.cmplx.Cmplx__vcpolarsc._vcPolarSC[(_i : stdgo.GoInt)]), _r:stdgo.GoFloat64 = __tmp__._0, _theta:stdgo.GoFloat64 = __tmp__._1;
                    if ((!stdgo._internal.math.cmplx.Cmplx__alike._alike(stdgo._internal.math.cmplx.Cmplx__polarsc._polarSC[(_i : stdgo.GoInt)]._r, _r) && !stdgo._internal.math.cmplx.Cmplx__alike._alike(stdgo._internal.math.cmplx.Cmplx__polarsc._polarSC[(_i : stdgo.GoInt)]._theta, _theta) : Bool)) {
                        @:check2r _t.errorf(("Polar(%g) = %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vcpolarsc._vcPolarSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_theta), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polarsc._polarSC[(_i : stdgo.GoInt)]._r), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__polarsc._polarSC[(_i : stdgo.GoInt)]._theta));
                    };
                };
                _i++;
            };
        };
    }
