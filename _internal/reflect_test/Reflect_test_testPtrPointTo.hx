package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testPtrPointTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ip:stdgo.Pointer<stdgo.GoInt32> = (null : stdgo.Pointer<stdgo.GoInt32>);
        var _i:stdgo.GoInt32 = (1234 : stdgo.GoInt32);
        var _vip = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_ip)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _vi = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_i))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _vip.elem().set(_vi.addr()?.__copy__());
        if (_ip.value != ((1234 : stdgo.GoInt32))) {
            _t.errorf(("got %d, want 1234" : stdgo.GoString), stdgo.Go.toInterface(_ip.value));
        };
        _ip = (null : stdgo.Pointer<stdgo.GoInt32>);
        var _vp = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_ip))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _vp.set(stdgo._internal.reflect.Reflect_zero.zero(_vp.type())?.__copy__());
        if (_ip != null) {
            _t.errorf(("got non-nil (%p), want nil" : stdgo.GoString), stdgo.Go.toInterface(_ip));
        };
    }
