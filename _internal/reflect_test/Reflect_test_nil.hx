package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function nil(_a:stdgo.AnyInterface, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_a).field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (!_n.isNil()) {
            _t.errorf(("%v should be nil" : stdgo.GoString), _a);
        };
    }
