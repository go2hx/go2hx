package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMapSetNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _vm = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _vm.elem().set(stdgo._internal.reflect.Reflect_zero.zero(_vm.elem().type())?.__copy__());
        if (_m != null) {
            _t.errorf(("got non-nil (%p), want nil" : stdgo.GoString), stdgo.Go.toInterface(_m));
        };
    }
