package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testArrayOfPanicOnNegativeLength(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("reflect: negative length passed to ArrayOf" : stdgo.GoString), function():Void {
            stdgo._internal.reflect.Reflect_arrayOf.arrayOf((-1 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoUInt8))));
        });
    }
