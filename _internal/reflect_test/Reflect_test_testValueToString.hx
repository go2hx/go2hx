package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testValueToString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in _internal.reflect_test.Reflect_test__valueToStringTests._valueToStringTests) {
            var _s = (_internal.reflect_test.Reflect_test__valueToString._valueToString(stdgo._internal.reflect.Reflect_valueOf.valueOf(_test._i)?.__copy__())?.__copy__() : stdgo.GoString);
            if (_s != (_test._s)) {
                _t.errorf(("#%d: have %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._s));
            };
        };
    }
