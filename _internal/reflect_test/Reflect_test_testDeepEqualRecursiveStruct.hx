package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testDeepEqualRecursiveStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0 = (stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_Recursive.Recursive)) : stdgo.Ref<_internal.reflect_test.Reflect_test_Recursive.Recursive>), __1 = (stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_Recursive.Recursive)) : stdgo.Ref<_internal.reflect_test.Reflect_test_Recursive.Recursive>);
var _b = __1, _a = __0;
        {
            var __tmp__ = (new _internal.reflect_test.Reflect_test_Recursive.Recursive((12 : stdgo.GoInt), _a) : _internal.reflect_test.Reflect_test_Recursive.Recursive);
            (_a : _internal.reflect_test.Reflect_test_Recursive.Recursive)._x = __tmp__._x;
            (_a : _internal.reflect_test.Reflect_test_Recursive.Recursive)._r = __tmp__._r;
        };
        {
            var __tmp__ = (new _internal.reflect_test.Reflect_test_Recursive.Recursive((12 : stdgo.GoInt), _b) : _internal.reflect_test.Reflect_test_Recursive.Recursive);
            (_b : _internal.reflect_test.Reflect_test_Recursive.Recursive)._x = __tmp__._x;
            (_b : _internal.reflect_test.Reflect_test_Recursive.Recursive)._r = __tmp__._r;
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
            _t.error(stdgo.Go.toInterface(("DeepEqual(recursive same) = false, want true" : stdgo.GoString)));
        };
    }
