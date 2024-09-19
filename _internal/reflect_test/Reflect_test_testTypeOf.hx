package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testTypeOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf((null : stdgo.AnyInterface)) : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_typ.string() : String) == (null.string() : String))) {
                _t.errorf(("expected nil type for nil value; got %v" : stdgo.GoString), stdgo.Go.toInterface(_typ));
            };
        };
        for (__7 => _test in _internal.reflect_test.Reflect_test__deepEqualTests._deepEqualTests) {
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_test._a)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (!_v.isValid()) {
                continue;
            };
            var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_test._a) : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_typ.string() : String) == (_v.type().string() : String))) {
                _t.errorf(("TypeOf(%v) = %v, but ValueOf(%v).Type() = %v" : stdgo.GoString), _test._a, stdgo.Go.toInterface(_typ), _test._a, stdgo.Go.toInterface(_v.type()));
            };
        };
    }
