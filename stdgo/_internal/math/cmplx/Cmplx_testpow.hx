package stdgo._internal.math.cmplx;
function testPow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero = new stdgo.GoComplex128((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
        var _zeroPowers = (new stdgo.Slice<stdgo.GoArray<stdgo.GoComplex128>>(4, 4, ...[(new stdgo.GoArray<stdgo.GoComplex128>(2, 2, ...[((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))]) : stdgo.GoArray<stdgo.GoComplex128>), (new stdgo.GoArray<stdgo.GoComplex128>(2, 2, ...[((1.5f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))]) : stdgo.GoArray<stdgo.GoComplex128>), (new stdgo.GoArray<stdgo.GoComplex128>(2, 2, ...[((-1.5f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), new stdgo.GoComplex128(stdgo._internal.math.Math_inf.inf((0 : stdgo.GoInt)), (0 : stdgo.GoFloat64))]) : stdgo.GoArray<stdgo.GoComplex128>), (new stdgo.GoArray<stdgo.GoComplex128>(2, 2, ...[((-1.5f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1.5f64)), stdgo._internal.math.cmplx.Cmplx_inf.inf()]) : stdgo.GoArray<stdgo.GoComplex128>)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoComplex128>(2, 2)])) : stdgo.Slice<stdgo.GoArray<stdgo.GoComplex128>>);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1300"
        for (__0 => _zp in _zeroPowers) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1301"
            {
                var _f = (stdgo._internal.math.cmplx.Cmplx_pow.pow(_zero, _zp[(0 : stdgo.GoInt)]) : stdgo.GoComplex128);
                if (_f != (_zp[((1 : stdgo.GoInt) : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1302"
                    _t.errorf(("Pow(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_zero), stdgo.Go.toInterface(_zp[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_zp[(1 : stdgo.GoInt)]));
                };
            };
        };
        var _a = new stdgo.GoComplex128((3 : stdgo.GoFloat64), (3 : stdgo.GoFloat64));
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1306"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vc._vc.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1307"
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_pow.pow(_a, stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__csoclose._cSoclose(stdgo._internal.math.cmplx.Cmplx__pow._pow[(_i : stdgo.GoInt)], _f, (4e-15 : stdgo.GoFloat64))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1308"
                        _t.errorf(("Pow(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vc._vc[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__pow._pow[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1311"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.math.cmplx.Cmplx__vcpowsc._vcPowSC.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1312"
                {
                    var _f = (stdgo._internal.math.cmplx.Cmplx_pow.pow(stdgo._internal.math.cmplx.Cmplx__vcpowsc._vcPowSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], stdgo._internal.math.cmplx.Cmplx__vcpowsc._vcPowSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoComplex128);
                    if (!stdgo._internal.math.cmplx.Cmplx__calike._cAlike(stdgo._internal.math.cmplx.Cmplx__powsc._powSC[(_i : stdgo.GoInt)], _f)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1313"
                        _t.errorf(("Pow(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vcpowsc._vcPowSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__vcpowsc._vcPowSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx__powsc._powSC[(_i : stdgo.GoInt)]));
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1316"
        for (__1 => _pt in stdgo._internal.math.cmplx.Cmplx__branchpoints._branchPoints) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1317"
            {
                var __0 = (stdgo._internal.math.cmplx.Cmplx_pow.pow(_pt[(0 : stdgo.GoInt)], ((0.1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))) : stdgo.GoComplex128), __1 = (stdgo._internal.math.cmplx.Cmplx_pow.pow(_pt[(1 : stdgo.GoInt)], ((0.1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))) : stdgo.GoComplex128);
var _f1 = __1, _f0 = __0;
                if (!stdgo._internal.math.cmplx.Cmplx__cveryclose._cVeryclose(_f0, _f1)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L1318"
                    _t.errorf(("Pow(%g, 0.1) not continuous, got %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_pt[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f0), stdgo.Go.toInterface(_f1));
                };
            };
        };
    }
