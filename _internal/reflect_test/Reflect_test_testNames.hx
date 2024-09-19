package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__7 => _test in _internal.reflect_test.Reflect_test__nameTests._nameTests) {
            var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_test._v).elem() : stdgo._internal.reflect.Reflect_Type_.Type_);
            {
                var _got = (_typ.name()?.__copy__() : stdgo.GoString);
                if (_got != (_test._want)) {
                    _t.errorf(("%v Name()=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
