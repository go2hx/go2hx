package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSliceOfGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _tt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : _internal.reflect_test.Reflect_test_T_testSliceOfGC___localname___T_137378.T_testSliceOfGC___localname___T_137378))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _st = (stdgo._internal.reflect.Reflect_sliceOf.sliceOf(_tt) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {};
        var _x:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var _v = (stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_st, (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _v.len() : Bool), _j++, {
                        var _p = stdgo.Go.pointer((0 : stdgo.GoUIntptr));
                        _p.value = (((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUIntptr);
                        _v.index(_j).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_p)).convert(_tt)?.__copy__());
                    });
                };
                _x = (_x.__append__(_v.interface_()));
            });
        };
        stdgo._internal.runtime.Runtime_gc.gc();
        for (_i => _xi in _x) {
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_xi)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            {
                var _j = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_j < _v.len() : Bool), _j++, {
                    var _k = (_v.index(_j).elem().interface_() : stdgo.AnyInterface);
                    if (_k != (stdgo.Go.toInterface((((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUIntptr)))) {
                        _t.errorf(("lost x[%d][%d] = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), _k, stdgo.Go.toInterface(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)));
                    };
                });
            };
        };
    }
