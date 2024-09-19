package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _tt in _internal.reflect_test.Reflect_test__valueTests._valueTests) {
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_tt._i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _v = _v.elem()?.__copy__();
            {
                final __value__ = _v.kind();
                if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setInt((132i64 : stdgo.GoInt64));
                } else if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setInt((8i64 : stdgo.GoInt64));
                } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setInt((16i64 : stdgo.GoInt64));
                } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setInt((32i64 : stdgo.GoInt64));
                } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setInt((64i64 : stdgo.GoInt64));
                } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setUint((132i64 : stdgo.GoUInt64));
                } else if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setUint((8i64 : stdgo.GoUInt64));
                } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setUint((16i64 : stdgo.GoUInt64));
                } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setUint((32i64 : stdgo.GoUInt64));
                } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setUint((64i64 : stdgo.GoUInt64));
                } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setFloat((256.25 : stdgo.GoFloat64));
                } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setFloat((512.125 : stdgo.GoFloat64));
                } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setComplex(((532.125f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 10f64)));
                } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setComplex(((564.25f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64)));
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setString(("stringy cheese" : stdgo.GoString));
                } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.setBool(true);
                };
            };
            var _s = (_internal.reflect_test.Reflect_test__valueToString._valueToString(_v?.__copy__())?.__copy__() : stdgo.GoString);
            if (_s != (_tt._s)) {
                _t.errorf(("#%d: have %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._s));
            };
        };
    }
