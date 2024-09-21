package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMapIterNext(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _iter = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m)).mapRange();
        _m[("one" : stdgo.GoString)] = (1 : stdgo.GoInt);
        {
            var __0 = (_internal.reflect_test.Reflect_test__iterateToString._iterateToString(_iter)?.__copy__() : stdgo.GoString), __1 = ("[one: 1]" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("iterator returned deleted elements: got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
