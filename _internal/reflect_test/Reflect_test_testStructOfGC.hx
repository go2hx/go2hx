package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testStructOfGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _tt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : _internal.reflect_test.Reflect_test_T_testStructOfGC___localname___T_146001.T_testStructOfGC___localname___T_146001))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _fields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("X" : stdgo.GoString), type : _tt } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("Y" : stdgo.GoString), type : _tt } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
        var _st = (stdgo._internal.reflect.Reflect_structOf.structOf(_fields) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {};
        var _x:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10000 : stdgo.GoInt) : Bool), _i++, {
                var _v = (stdgo._internal.reflect.Reflect_new_.new_(_st).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _v.numField() : Bool), _j++, {
                        var _p = stdgo.Go.pointer((0 : stdgo.GoUIntptr));
                        _p.value = (((_i * (10000 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUIntptr);
                        _v.field(_j).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_p)).convert(_tt)?.__copy__());
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
                stdgo.Go.cfor((_j < _v.numField() : Bool), _j++, {
                    var _k = (_v.field(_j).elem().interface_() : stdgo.AnyInterface);
                    if (_k != (stdgo.Go.toInterface((((_i * (10000 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUIntptr)))) {
                        _t.errorf(("lost x[%d].%c = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(("XY" : stdgo.GoString)[(_j : stdgo.GoInt)]), _k, stdgo.Go.toInterface(((_i * (10000 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)));
                    };
                });
            };
        };
    }
