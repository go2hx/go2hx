package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testConvertNaNs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.reflect_test.Reflect_test__gFloat32._gFloat32 = stdgo._internal.math.Math_float32frombits.float32frombits((2139095041u32 : stdgo.GoUInt32));
        stdgo._internal.runtime.Runtime_gosched.gosched();
        {
            var _got = (stdgo._internal.math.Math_float32bits.float32bits(_internal.reflect_test.Reflect_test__gFloat32._gFloat32) : stdgo.GoUInt32);
            if (_got != ((2139095041u32 : stdgo.GoUInt32))) {
                _t.errorf(("store/load of sNaN not faithful, got %x want %x" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((2139095041u32 : stdgo.GoUInt32)));
            };
        };
        {};
        var _x = (_internal.reflect_test.Reflect_test_v.v(stdgo.Go.toInterface((stdgo._internal.math.Math_float32frombits.float32frombits((2139095041u32 : stdgo.GoUInt32)) : _internal.reflect_test.Reflect_test_T_testConvertNaNs___localname___myFloat32_127187.T_testConvertNaNs___localname___myFloat32_127187)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _y = (_x.convert(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(((0 : stdgo.GoFloat64) : stdgo.GoFloat32))))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _z = (stdgo.Go.typeAssert((_y.interface_() : stdgo.GoFloat32)) : stdgo.GoFloat32);
        {
            var _got = (stdgo._internal.math.Math_float32bits.float32bits(_z) : stdgo.GoUInt32);
            if (_got != ((2139095041u32 : stdgo.GoUInt32))) {
                _t.errorf(("signaling nan conversion got %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((2139095041u32 : stdgo.GoUInt32)));
            };
        };
    }
