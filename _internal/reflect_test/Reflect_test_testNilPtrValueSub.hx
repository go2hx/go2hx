package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testNilPtrValueSub(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pi:stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
        {
            var _pv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_pi))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (_pv.elem().isValid()) {
                _t.error(stdgo.Go.toInterface(("ValueOf((*int)(nil)).Elem().IsValid()" : stdgo.GoString)));
            };
        };
    }
