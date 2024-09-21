package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testLog2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = (stdgo._internal.math.Math_abs.abs(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                {
                    var _f = (stdgo._internal.math.Math_log2.log2(_a) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__log2._log2[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log2(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__log2._log2[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _f = (stdgo._internal.math.Math_log2.log2((2.718281828459045 : stdgo.GoFloat64)) : stdgo.GoFloat64);
            if (_f != (1.4426950408889634 : stdgo.GoFloat64)) {
                _t.errorf(("Log2(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface((2.718281828459045 : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((1.4426950408889634 : stdgo.GoFloat64)));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vflogSC._vflogSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_log2.log2(_internal.math_test.Math_test__vflogSC._vflogSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__logSC._logSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log2(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vflogSC._vflogSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__logSC._logSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (-1074 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (1023 : stdgo.GoInt) : Bool), _i++, {
                var _f = (stdgo._internal.math.Math_ldexp.ldexp((1 : stdgo.GoFloat64), _i) : stdgo.GoFloat64);
                var _l = (stdgo._internal.math.Math_log2.log2(_f) : stdgo.GoFloat64);
                if (_l != ((_i : stdgo.GoFloat64))) {
                    _t.errorf(("Log2(2**%d) = %g, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_i));
                };
            });
        };
    }
