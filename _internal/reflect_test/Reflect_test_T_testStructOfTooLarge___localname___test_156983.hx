package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testStructOfTooLarge___localname___test_156983 {
    public var _shouldPanic : Bool = false;
    public var _fields : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
    public function new(?_shouldPanic:Bool, ?_fields:stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>) {
        if (_shouldPanic != null) this._shouldPanic = _shouldPanic;
        if (_fields != null) this._fields = _fields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStructOfTooLarge___localname___test_156983(_shouldPanic, _fields);
    }
}
