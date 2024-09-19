package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMethodCallValueCodePtr(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_Point.Point() : _internal.reflect_test.Reflect_test_Point.Point)))).method((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _want = (stdgo._internal.reflect.Reflect_methodValueCallCodePtr.methodValueCallCodePtr() : stdgo.GoUIntptr);
        {
            var _got = (_m.unsafePointer().__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
            if (_got != (_want)) {
                _t.errorf(("methodValueCall code pointer mismatched, want: %v, got: %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _got = (_m.pointer() : stdgo.GoUIntptr);
            if (_got != (_want)) {
                _t.errorf(("methodValueCall code pointer mismatched, want: %v, got: %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
