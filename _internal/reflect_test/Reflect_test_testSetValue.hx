package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSetValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _tt in _internal.reflect_test.Reflect_test__valueTests._valueTests) {
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_tt._i).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            {
                final __value__ = _v.kind();
                if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((132 : stdgo.GoInt)))?.__copy__());
                } else if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((8 : stdgo.GoInt8)))?.__copy__());
                } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((16 : stdgo.GoInt16)))?.__copy__());
                } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((32 : stdgo.GoInt32)))?.__copy__());
                } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((64i64 : stdgo.GoInt64)))?.__copy__());
                } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((132u32 : stdgo.GoUInt)))?.__copy__());
                } else if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((8 : stdgo.GoUInt8)))?.__copy__());
                } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((16 : stdgo.GoUInt16)))?.__copy__());
                } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((32u32 : stdgo.GoUInt32)))?.__copy__());
                } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((64i64 : stdgo.GoUInt64)))?.__copy__());
                } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((256.25 : stdgo.GoFloat64) : stdgo.GoFloat32)))?.__copy__());
                } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((512.125 : stdgo.GoFloat64)))?.__copy__());
                } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((532.125f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 10f64) : stdgo.GoComplex64)))?.__copy__());
                } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((564.25f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64) : stdgo.GoComplex128)))?.__copy__());
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("stringy cheese" : stdgo.GoString)))?.__copy__());
                } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(true))?.__copy__());
                };
            };
            var _s = (_internal.reflect_test.Reflect_test__valueToString._valueToString(_v?.__copy__())?.__copy__() : stdgo.GoString);
            if (_s != (_tt._s)) {
                _t.errorf(("#%d: have %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._s));
            };
        };
    }
