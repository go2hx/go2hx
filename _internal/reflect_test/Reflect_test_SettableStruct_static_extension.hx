package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:keep @:allow(_internal.reflect_test.Reflect_test.SettableStruct_asInterface) class SettableStruct_static_extension {
    @:keep
    static public function set( _p:stdgo.Ref<_internal.reflect_test.Reflect_test_SettableStruct.SettableStruct>, _v:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.reflect_test.Reflect_test_SettableStruct.SettableStruct> = _p;
        _p.settableField = _v;
    }
}
