package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMapIterNilMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _iter = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m)).mapRange();
        {
            var __0 = (_internal.reflect_test.Reflect_test__iterateToString._iterateToString(_iter)?.__copy__() : stdgo.GoString), __1 = ("[]" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("non-empty result iteratoring nil map: %s" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
    }
