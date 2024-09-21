package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testPtrToGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _tt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : _internal.reflect_test.Reflect_test_T_testPtrToGC___localname___T_82765.T_testPtrToGC___localname___T_82765))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _pt = (stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_tt) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {};
        var _x:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var _v = (stdgo._internal.reflect.Reflect_new_.new_(_pt)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                var _p = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.GoUIntptr>));
                _p.value = stdgo.Go.pointer((0 : stdgo.GoUIntptr));
                _p.value.value = (_i : stdgo.GoUIntptr);
                _v.elem().set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_p)).convert(_pt)?.__copy__());
                _x = (_x.__append__(_v.interface_()));
            });
        };
        stdgo._internal.runtime.Runtime_gc.gc();
        for (_i => _xi in _x) {
            var _k = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(_xi).elem().elem().elem().interface_() : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
            if (_k != ((_i : stdgo.GoUIntptr))) {
                _t.errorf(("lost x[%d] = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_i));
            };
        };
    }
