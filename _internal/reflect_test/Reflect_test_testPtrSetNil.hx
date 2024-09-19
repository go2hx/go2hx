package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testPtrSetNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _i:stdgo.GoInt32 = (1234 : stdgo.GoInt32);
        var _ip = stdgo.Go.pointer(_i);
        var _vip = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_ip)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _vip.elem().set(stdgo._internal.reflect.Reflect_zero.zero(_vip.elem().type())?.__copy__());
        if (_ip != null) {
            _t.errorf(("got non-nil (%d), want nil" : stdgo.GoString), stdgo.Go.toInterface(_ip.value));
        };
    }
