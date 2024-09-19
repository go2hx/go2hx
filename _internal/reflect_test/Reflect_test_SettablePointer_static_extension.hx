package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:keep @:allow(_internal.reflect_test.Reflect_test.SettablePointer_asInterface) class SettablePointer_static_extension {
    @:keep
    static public function set( _p:stdgo.Ref<_internal.reflect_test.Reflect_test_SettablePointer.SettablePointer>, _v:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.reflect_test.Reflect_test_SettablePointer.SettablePointer> = _p;
        _p.settableField.value = _v;
    }
}
