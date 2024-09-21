package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testDeepEqualComplexStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoFloat64>();
            x.__defaultValue__ = () -> (0 : stdgo.GoFloat64);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64>);
        var __0 = ("hello" : stdgo.GoString), __1 = ("hello" : stdgo.GoString);
var _strb = __1, _stra = __0;
        var __0 = (stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_T__Complex.T__Complex)) : stdgo.Ref<_internal.reflect_test.Reflect_test_T__Complex.T__Complex>), __1 = (stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_T__Complex.T__Complex)) : stdgo.Ref<_internal.reflect_test.Reflect_test_T__Complex.T__Complex>);
var _b = __1, _a = __0;
        {
            var __tmp__ = (new _internal.reflect_test.Reflect_test_T__Complex.T__Complex((5 : stdgo.GoInt), (new stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_T__Complex.T__Complex>>(3, 3, ...[_a, _b, _a]) : stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_T__Complex.T__Complex>>), stdgo.Go.pointer(_stra), _m) : _internal.reflect_test.Reflect_test_T__Complex.T__Complex);
            (_a : _internal.reflect_test.Reflect_test_T__Complex.T__Complex)._a = __tmp__._a;
            (_a : _internal.reflect_test.Reflect_test_T__Complex.T__Complex)._b = __tmp__._b;
            (_a : _internal.reflect_test.Reflect_test_T__Complex.T__Complex)._c = __tmp__._c;
            (_a : _internal.reflect_test.Reflect_test_T__Complex.T__Complex)._d = __tmp__._d;
        };
        {
            var __tmp__ = (new _internal.reflect_test.Reflect_test_T__Complex.T__Complex((5 : stdgo.GoInt), (new stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_T__Complex.T__Complex>>(3, 3, ...[_b, _a, _a]) : stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_T__Complex.T__Complex>>), stdgo.Go.pointer(_strb), _m) : _internal.reflect_test.Reflect_test_T__Complex.T__Complex);
            (_b : _internal.reflect_test.Reflect_test_T__Complex.T__Complex)._a = __tmp__._a;
            (_b : _internal.reflect_test.Reflect_test_T__Complex.T__Complex)._b = __tmp__._b;
            (_b : _internal.reflect_test.Reflect_test_T__Complex.T__Complex)._c = __tmp__._c;
            (_b : _internal.reflect_test.Reflect_test_T__Complex.T__Complex)._d = __tmp__._d;
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
            _t.error(stdgo.Go.toInterface(("DeepEqual(complex same) = false, want true" : stdgo.GoString)));
        };
    }
