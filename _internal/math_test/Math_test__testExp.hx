package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function _testExp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, exp:stdgo.GoFloat64 -> stdgo.GoFloat64, _name:stdgo.GoString):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (exp(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__exp._exp[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("%s(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__exp._exp[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfexpSC._vfexpSC.length) : Bool), _i++, {
                {
                    var _f = (exp(_internal.math_test.Math_test__vfexpSC._vfexpSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__expSC._expSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("%s(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_internal.math_test.Math_test__vfexpSC._vfexpSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__expSC._expSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
