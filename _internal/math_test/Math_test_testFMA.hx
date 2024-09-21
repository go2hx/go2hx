package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testFMA(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _c in _internal.math_test.Math_test__fmaC._fmaC) {
            var _got = (stdgo._internal.math.Math_fma.fma(_c._x, _c._y, _c._z) : stdgo.GoFloat64);
            if (!_internal.math_test.Math_test__alike._alike(_got, _c._want)) {
                _t.errorf(("FMA(%g,%g,%g) == %g; want %g" : stdgo.GoString), stdgo.Go.toInterface(_c._x), stdgo.Go.toInterface(_c._y), stdgo.Go.toInterface(_c._z), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_c._want));
            };
            _got = _internal.math_test.Math_test_portableFMA.portableFMA(_c._x, _c._y, _c._z);
            if (!_internal.math_test.Math_test__alike._alike(_got, _c._want)) {
                _t.errorf(("PortableFMA(%g,%g,%g) == %g; want %g" : stdgo.GoString), stdgo.Go.toInterface(_c._x), stdgo.Go.toInterface(_c._y), stdgo.Go.toInterface(_c._z), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_c._want));
            };
        };
    }
