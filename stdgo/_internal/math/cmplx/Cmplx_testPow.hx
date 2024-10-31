package stdgo._internal.math.cmplx;
function testPow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _zero:stdgo.GoComplex128 = new stdgo.GoComplex128((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
        var _zeroPowers = (new stdgo.Slice<stdgo.GoArray<stdgo.GoComplex128>>(4, 4, ...[(new stdgo.GoArray<stdgo.GoComplex128>(2, 2, ...[((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))]) : stdgo.GoArray<stdgo.GoComplex128>), (new stdgo.GoArray<stdgo.GoComplex128>(2, 2, ...[((1.5f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))]) : stdgo.GoArray<stdgo.GoComplex128>), (new stdgo.GoArray<stdgo.GoComplex128>(2, 2, ...[((-1.5f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), new stdgo.GoComplex128(stdgo._internal.math.Math_inf.inf((0 : stdgo.GoInt)), (0 : stdgo.GoFloat64))]) : stdgo.GoArray<stdgo.GoComplex128>), (new stdgo.GoArray<stdgo.GoComplex128>(2, 2, ...[((-1.5f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1.5f64)), stdgo._internal.math.cmplx.Cmplx_inf.inf()]) : stdgo.GoArray<stdgo.GoComplex128>)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoComplex128>(2, 2, ...[for (i in 0 ... 2) new stdgo.GoComplex128(0, 0)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoComplex128>>);
        for (__0 => _zp in _zeroPowers) {
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_pow.pow(_zero, _zp[(0 : stdgo.GoInt)]) : stdgo.GoComplex128);
                if (_f != (_zp[((1 : stdgo.GoInt) : stdgo.GoInt)])) {
                    _t.errorf(("Pow(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_zero), stdgo.Go.toInterface(_zp[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_zp[(1 : stdgo.GoInt)]));
                };
            };
        };
        var _a:stdgo.GoComplex128 = new stdgo.GoComplex128((3 : stdgo.GoFloat64), (3 : stdgo.GoFloat64));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_pow.pow(_a, stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__cSoclose._cSoclose(stdgo._internal.math.cmplx.Cmplx__pow._pow[(_i : stdgo.GoInt)], _f, (4e-15 : stdgo.GoFloat64))) {
                        _t.errorf(("Pow(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__pow._pow[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vcPowSC._vcPowSC.length) : Bool)) {
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_pow.pow(stdgo._internal.math.cmplx.Cmplx__vcPowSC._vcPowSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], stdgo._internal.math.cmplx.Cmplx__vcPowSC._vcPowSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__cAlike._cAlike(stdgo._internal.math.cmplx.Cmplx__powSC._powSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Pow(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vcPowSC._vcPowSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vcPowSC._vcPowSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__powSC._powSC[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        for (__1 => _pt in stdgo._internal.math.cmplx.Cmplx__branchPoints._branchPoints) {
            {
                var __0 = (stdgo._internal.math.cmplx.Cmplx_pow.pow(_pt[(0 : stdgo.GoInt)], ((0.1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))) : stdgo.GoComplex128), __1 = (stdgo._internal.math.cmplx.Cmplx_pow.pow(_pt[(1 : stdgo.GoInt)], ((0.1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))) : stdgo.GoComplex128);
var _f1 = __1, _f0 = __0;
                if (!stdgo._internal.math.cmplx.Cmplx__cVeryclose._cVeryclose(_f0, _f1)) {
                    _t.errorf(("Pow(%g, 0.1) not continuous, got %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_pt[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f0), stdgo.Go.toInterface(_f1));
                };
            };
        };
    }
