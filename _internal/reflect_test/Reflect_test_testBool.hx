package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testBool(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(true))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_v.bool_() != (true)) {
            _t.fatal(stdgo.Go.toInterface(("ValueOf(true).Bool() = false" : stdgo.GoString)));
        };
    }
