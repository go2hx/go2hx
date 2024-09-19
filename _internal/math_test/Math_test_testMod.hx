package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testMod(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_mod.mod((10 : stdgo.GoFloat64), _internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (_internal.math_test.Math_test__fmod._fmod[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Mod(10, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__fmod._fmod[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vffmodSC._vffmodSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_mod.mod(_internal.math_test.Math_test__vffmodSC._vffmodSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _internal.math_test.Math_test__vffmodSC._vffmodSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__fmodSC._fmodSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Mod(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vffmodSC._vffmodSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_internal.math_test.Math_test__vffmodSC._vffmodSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__fmodSC._fmodSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _f = (stdgo._internal.math.Math_mod.mod((5.9790119248836734e+200 : stdgo.GoFloat64), (1.1258465975523544 : stdgo.GoFloat64)) : stdgo.GoFloat64);
            if ((0.6447968302508578 : stdgo.GoFloat64) != (_f)) {
                _t.errorf(("Remainder(5.9790119248836734e+200, 1.1258465975523544) = %g, want 0.6447968302508578" : stdgo.GoString), stdgo.Go.toInterface(_f));
            };
        };
    }
