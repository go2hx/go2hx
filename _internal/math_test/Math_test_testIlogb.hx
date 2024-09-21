package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testIlogb(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = (_internal.math_test.Math_test__frexp._frexp[(_i : stdgo.GoInt)]._i - (1 : stdgo.GoInt) : stdgo.GoInt);
                {
                    var _e = (stdgo._internal.math.Math_ilogb.ilogb(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoInt);
                    if (_a != (_e)) {
                        _t.errorf(("Ilogb(%g) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_a));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vflogbSC._vflogbSC.length) : Bool), _i++, {
                {
                    var _e = (stdgo._internal.math.Math_ilogb.ilogb(_internal.math_test.Math_test__vflogbSC._vflogbSC[(_i : stdgo.GoInt)]) : stdgo.GoInt);
                    if (_internal.math_test.Math_test__ilogbSC._ilogbSC[(_i : stdgo.GoInt)] != (_e)) {
                        _t.errorf(("Ilogb(%g) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vflogbSC._vflogbSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_internal.math_test.Math_test__ilogbSC._ilogbSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vffrexpBC._vffrexpBC.length) : Bool), _i++, {
                {
                    var _e = (stdgo._internal.math.Math_ilogb.ilogb(_internal.math_test.Math_test__vffrexpBC._vffrexpBC[(_i : stdgo.GoInt)]) : stdgo.GoInt);
                    if ((_internal.math_test.Math_test__logbBC._logbBC[(_i : stdgo.GoInt)] : stdgo.GoInt) != (_e)) {
                        _t.errorf(("Ilogb(%g) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vffrexpBC._vffrexpBC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_e), stdgo.Go.toInterface((_internal.math_test.Math_test__logbBC._logbBC[(_i : stdgo.GoInt)] : stdgo.GoInt)));
                    };
                };
            });
        };
    }
