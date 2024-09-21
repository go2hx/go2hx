package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testInvalid(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testInvalid___localname___T_175325.T_testInvalid___localname___T_175325() : _internal.reflect_test.Reflect_test_T_testInvalid___localname___T_175325.T_testInvalid___localname___T_175325))).field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (((_v.isValid() != true) || (_v.kind() != (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            _t.errorf(("field: IsValid=%v, Kind=%v, want true, Interface" : stdgo.GoString), stdgo.Go.toInterface(_v.isValid()), stdgo.Go.toInterface(stdgo.Go.asInterface(_v.kind())));
        };
        _v = _v.elem()?.__copy__();
        if (((_v.isValid() != false) || (_v.kind() != (0u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            _t.errorf(("field elem: IsValid=%v, Kind=%v, want false, Invalid" : stdgo.GoString), stdgo.Go.toInterface(_v.isValid()), stdgo.Go.toInterface(stdgo.Go.asInterface(_v.kind())));
        };
    }
