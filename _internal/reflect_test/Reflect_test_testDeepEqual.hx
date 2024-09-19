package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testDeepEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__7 => _test in _internal.reflect_test.Reflect_test__deepEqualTests._deepEqualTests) {
            if (_test._b == (stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_self.T_self() : _internal.reflect_test.Reflect_test_T_self.T_self)))) {
                _test._b = _test._a;
            };
            {
                var _r = (stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_test._a, _test._b) : Bool);
                if (_r != (_test._eq)) {
                    _t.errorf(("DeepEqual(%#v, %#v) = %v, want %v" : stdgo.GoString), _test._a, _test._b, stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_test._eq));
                };
            };
        };
    }
