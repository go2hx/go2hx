package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testTagGet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__6 => _tt in _internal.reflect_test.Reflect_test__tagGetTests._tagGetTests) {
            {
                var _v = (_tt.tag.get(_tt.key?.__copy__())?.__copy__() : stdgo.GoString);
                if (_v != (_tt.value)) {
                    _t.errorf(("StructTag(%#q).Get(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt.tag)), stdgo.Go.toInterface(_tt.key), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_tt.value));
                };
            };
        };
    }
