package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:keep @:allow(_internal.reflect_test.Reflect_test.StructIPtr_asInterface) class StructIPtr_static_extension {
    @:keep
    @:pointer
    static public function set(____:_internal.reflect_test.Reflect_test_StructIPtr.StructIPtr,  _i:stdgo.Pointer<_internal.reflect_test.Reflect_test_StructIPtr.StructIPtr>, _v:stdgo.GoInt):Void {
        new stdgo.Pointer<stdgo.GoInt>(() -> (_i.value : stdgo.GoInt), v -> (_i.value = (v : _internal.reflect_test.Reflect_test_StructIPtr.StructIPtr) : stdgo.GoInt)).value = _v;
    }
    @:keep
    @:pointer
    static public function get(____:_internal.reflect_test.Reflect_test_StructIPtr.StructIPtr,  _i:stdgo.Pointer<_internal.reflect_test.Reflect_test_StructIPtr.StructIPtr>):stdgo.GoInt {
        return (_i.value : stdgo.GoInt);
    }
}
