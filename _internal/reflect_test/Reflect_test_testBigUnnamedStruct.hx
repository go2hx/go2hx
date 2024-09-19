package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testBigUnnamedStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = ({ _a : (1i64 : stdgo.GoInt64), _b : (2i64 : stdgo.GoInt64), _c : (3i64 : stdgo.GoInt64), _d : (4i64 : stdgo.GoInt64) } : _internal.reflect_test.Reflect_test_T__struct_46.T__struct_46);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _b1 = ({
            final x = (stdgo.Go.typeAssert((_v.interface_() : _internal.reflect_test.Reflect_test_T__struct_46.T__struct_46)) : _internal.reflect_test.Reflect_test_T__struct_46.T__struct_46);
            ({ _a : x._a, _b : x._b, _c : x._c, _d : x._d } : _internal.reflect_test.Reflect_test_T__struct_46.T__struct_46);
        } : _internal.reflect_test.Reflect_test_T__struct_46.T__struct_46);
        if ((((_b1._a != (_b._a) || _b1._b != (_b._b) : Bool) || _b1._c != (_b._c) : Bool) || (_b1._d != _b._d) : Bool)) {
            _t.errorf(("ValueOf(%v).Interface().(*Big) = %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b1)));
        };
    }
