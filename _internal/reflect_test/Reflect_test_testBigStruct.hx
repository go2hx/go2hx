package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testBigStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (new _internal.reflect_test.Reflect_test_T_big.T_big((1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64), (4i64 : stdgo.GoInt64), (5i64 : stdgo.GoInt64)) : _internal.reflect_test.Reflect_test_T_big.T_big);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_b))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _b1 = ((stdgo.Go.typeAssert((_v.interface_() : _internal.reflect_test.Reflect_test_T_big.T_big)) : _internal.reflect_test.Reflect_test_T_big.T_big)?.__copy__() : _internal.reflect_test.Reflect_test_T_big.T_big);
        if (((((_b1._a != (_b._a) || _b1._b != (_b._b) : Bool) || _b1._c != (_b._c) : Bool) || _b1._d != (_b._d) : Bool) || (_b1._e != _b._e) : Bool)) {
            _t.errorf(("ValueOf(%v).Interface().(big) = %v" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_b1));
        };
    }
