package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:keep @:allow(_internal.reflect_test.Reflect_test.Inner_asInterface) class Inner_static_extension {
    @:keep
    static public function m( _pi:stdgo.Ref<_internal.reflect_test.Reflect_test_Inner.Inner>):Void {
        @:recv var _pi:stdgo.Ref<_internal.reflect_test.Reflect_test_Inner.Inner> = _pi;
        _pi.x.inner = null;
        _pi.p1 = (1 : stdgo.GoUIntptr);
        _pi.p2 = ((stdgo.Go.toInterface(_pi) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
    }
}
