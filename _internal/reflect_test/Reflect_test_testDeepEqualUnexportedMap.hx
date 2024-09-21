package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testDeepEqualUnexportedMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x1 = (new _internal.reflect_test.Reflect_test_UnexpT.UnexpT(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((1 : stdgo.GoInt), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)) : _internal.reflect_test.Reflect_test_UnexpT.UnexpT);
        var _x2 = (new _internal.reflect_test.Reflect_test_UnexpT.UnexpT(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((1 : stdgo.GoInt), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)) : _internal.reflect_test.Reflect_test_UnexpT.UnexpT);
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface((stdgo.Go.setRef(_x1) : stdgo.Ref<_internal.reflect_test.Reflect_test_UnexpT.UnexpT>)), stdgo.Go.toInterface((stdgo.Go.setRef(_x2) : stdgo.Ref<_internal.reflect_test.Reflect_test_UnexpT.UnexpT>)))) {
            _t.error(stdgo.Go.toInterface(("DeepEqual(x1, x2) = false, want true" : stdgo.GoString)));
        };
        var _y1 = (new _internal.reflect_test.Reflect_test_UnexpT.UnexpT(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((2 : stdgo.GoInt), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)) : _internal.reflect_test.Reflect_test_UnexpT.UnexpT);
        if (stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface((stdgo.Go.setRef(_x1) : stdgo.Ref<_internal.reflect_test.Reflect_test_UnexpT.UnexpT>)), stdgo.Go.toInterface((stdgo.Go.setRef(_y1) : stdgo.Ref<_internal.reflect_test.Reflect_test_UnexpT.UnexpT>)))) {
            _t.error(stdgo.Go.toInterface(("DeepEqual(x1, y1) = true, want false" : stdgo.GoString)));
        };
    }
