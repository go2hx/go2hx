package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testStructOfDifferentPkgPath(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _fields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("f1" : stdgo.GoString), pkgPath : ("p1" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("f2" : stdgo.GoString), pkgPath : ("p2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>);
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("different PkgPath" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_structOf.structOf(_fields);
        });
    }
