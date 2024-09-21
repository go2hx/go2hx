package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testStructOfFieldName(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("has invalid name" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("Valid" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("1nvalid" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("has invalid name" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("Val1d" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("+" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("has no name" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(1, 1, ...[({ name : stdgo.Go.str()?.__copy__(), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>));
        });
        var _validFields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(3, 3, ...[({ name : ("φ" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("ValidName" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("Val1dNam5" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.str())) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
        var _validStruct = (stdgo._internal.reflect.Reflect_structOf.structOf(_validFields) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {};
        {
            var __0 = ((_validStruct.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("struct { φ string; ValidName string; Val1dNam5 string }" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("StructOf(validFields).String()=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
