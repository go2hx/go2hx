package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testNestedMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_outer.T_outer>)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (((_typ.numMethod() != (1 : stdgo.GoInt)) || (_typ.method((0 : stdgo.GoInt)).func.unsafePointer() != stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_internal.reflect_test.Reflect_test_T_outer_static_extension.T_outer_static_extension.m)).unsafePointer()) : Bool)) {
            _t.errorf(("Wrong method table for outer: (M=%p)" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test_T_outer_static_extension.T_outer_static_extension.m));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _typ.numMethod() : Bool), _i++, {
                    var _m = (_typ.method(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Method.Method);
                    _t.errorf(("\t%d: %s %p\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_m.name), stdgo.Go.toInterface(_m.func.unsafePointer()));
                });
            };
        };
    }
