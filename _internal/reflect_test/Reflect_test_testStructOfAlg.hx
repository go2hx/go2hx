package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testStructOfAlg(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _st = (stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(1, 1, ...[({ name : ("X" : stdgo.GoString), tag : (("x" : stdgo.GoString) : stdgo._internal.reflect.Reflect_StructTag.StructTag), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _v1 = (stdgo._internal.reflect.Reflect_new_.new_(_st).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _v2 = (stdgo._internal.reflect.Reflect_new_.new_(_st).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_v1.interface_(), _v1.interface_())) {
            _t.errorf(("constructed struct %v not equal to itself" : stdgo.GoString), _v1.interface_());
        };
        _v1.fieldByName(("X" : stdgo.GoString)).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__());
        {
            var __0 = (_v1.interface_() : stdgo.AnyInterface), __1 = (_v2.interface_() : stdgo.AnyInterface);
var _i2 = __1, _i1 = __0;
            if (stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_i1, _i2)) {
                _t.errorf(("constructed structs %v and %v should not be equal" : stdgo.GoString), _i1, _i2);
            };
        };
        _st = stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(1, 1, ...[({ name : ("X" : stdgo.GoString), tag : (("x" : stdgo.GoString) : stdgo._internal.reflect.Reflect_StructTag.StructTag), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoInt>))) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>));
        _v1 = stdgo._internal.reflect.Reflect_new_.new_(_st).elem()?.__copy__();
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(stdgo.Go.str()?.__copy__(), function():Void {
            var __blank__ = _v1.interface_() == (_v1.interface_());
        });
    }
