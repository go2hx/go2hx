package stdgo._internal.math.cmplx;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
function testTanHuge(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _x in stdgo._internal.math.cmplx.Cmplx__hugeIn._hugeIn) {
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_tan.tan(_x) : stdgo.GoComplex128);
                if (!stdgo._internal.math.cmplx.Cmplx__cSoclose._cSoclose(stdgo._internal.math.cmplx.Cmplx__tanHuge._tanHuge[(_i : stdgo.GoInt)], _f, (3e-15 : stdgo.GoFloat64))) {
                    @:check2r _t.errorf(("Tan(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__tanHuge._tanHuge[(_i : stdgo.GoInt)]));
                };
            };
        };
    }
