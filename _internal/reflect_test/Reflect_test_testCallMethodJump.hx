package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testCallMethodJump(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.reflect.Reflect_callGC.callGC.value = true;
        var _p = (stdgo.Go.setRef(({ inner : (stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_Inner.Inner)) : stdgo.Ref<_internal.reflect_test.Reflect_test_Inner.Inner>) } : _internal.reflect_test.Reflect_test_Outer.Outer)) : stdgo.Ref<_internal.reflect_test.Reflect_test_Outer.Outer>);
        _p.inner.x = _p;
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).method((0 : stdgo.GoInt)).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        stdgo._internal.reflect.Reflect_callGC.callGC.value = false;
    }
