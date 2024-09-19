package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testGamma(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        #if (interp || js) {
            trace("testGamma" + " skip targets: " + "interp, js");
            return;
        } #else null #end;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_gamma.gamma(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_internal.math_test.Math_test__gamma._gamma[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Gamma(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__gamma._gamma[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        for (__0 => _g in _internal.math_test.Math_test__vfgamma._vfgamma) {
            var _f = (stdgo._internal.math.Math_gamma.gamma(_g[(0 : stdgo.GoInt)]) : stdgo.GoFloat64);
            var _ok:Bool = false;
            if ((((stdgo._internal.math.Math_isNaN.isNaN(_g[(1 : stdgo.GoInt)]) || stdgo._internal.math.Math_isInf.isInf(_g[(1 : stdgo.GoInt)], (0 : stdgo.GoInt)) : Bool) || _g[(1 : stdgo.GoInt)] == (0 : stdgo.GoFloat64) : Bool) || (_f == (0 : stdgo.GoFloat64)) : Bool)) {
                _ok = _internal.math_test.Math_test__alike._alike(_g[(1 : stdgo.GoInt)], _f);
            } else if (((_g[(0 : stdgo.GoInt)] > (-50 : stdgo.GoFloat64) : Bool) && (_g[(0 : stdgo.GoInt)] <= (171 : stdgo.GoFloat64) : Bool) : Bool)) {
                _ok = _internal.math_test.Math_test__veryclose._veryclose(_g[(1 : stdgo.GoInt)], _f);
            } else {
                _ok = _internal.math_test.Math_test__close._close(_g[(1 : stdgo.GoInt)], _f);
            };
            if (!_ok) {
                _t.errorf(("Gamma(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_g[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_g[(1 : stdgo.GoInt)]));
            };
        };
    }
