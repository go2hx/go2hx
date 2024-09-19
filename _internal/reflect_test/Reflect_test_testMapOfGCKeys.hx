package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMapOfGCKeys(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _tt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : _internal.reflect_test.Reflect_test_T_testMapOfGCKeys___localname___T_161754.T_testMapOfGCKeys___localname___T_161754))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _mt = (stdgo._internal.reflect.Reflect_mapOf.mapOf(_tt, stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(false))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {};
        var _x:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var _v = (stdgo._internal.reflect.Reflect_makeMap.makeMap(_mt)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (100 : stdgo.GoInt) : Bool), _j++, {
                        var _p = stdgo.Go.pointer((0 : stdgo.GoUIntptr));
                        _p.value = (((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUIntptr);
                        _v.setMapIndex(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_p)).convert(_tt)?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(true))?.__copy__());
                    });
                };
                var _pv = (stdgo._internal.reflect.Reflect_new_.new_(_mt)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _pv.elem().set(_v?.__copy__());
                _x = (_x.__append__(_pv.interface_()));
            });
        };
        stdgo._internal.runtime.Runtime_gc.gc();
        for (_i => _xi in _x) {
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_xi).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _out:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            for (__7 => _kv in _v.mapKeys()) {
                _out = (_out.__append__(((stdgo.Go.typeAssert((_kv.elem().interface_() : stdgo.GoUIntptr)) : stdgo.GoUIntptr) : stdgo.GoInt)));
            };
            stdgo._internal.sort.Sort_ints.ints(_out);
            for (_j => _k in _out) {
                if (_k != (((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt))) {
                    _t.errorf(("lost x[%d][%d] = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)));
                };
            };
        };
    }
