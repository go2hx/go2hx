package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_SettableStruct_static_extension.SettableStruct_static_extension) class SettableStruct {
    public var settableField : stdgo.GoInt = 0;
    public function new(?settableField:stdgo.GoInt) {
        if (settableField != null) this.settableField = settableField;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SettableStruct(settableField);
    }
}
