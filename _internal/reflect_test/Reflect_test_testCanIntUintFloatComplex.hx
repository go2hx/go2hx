package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testCanIntUintFloatComplex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        {};
        {};
        var _ops:stdgo.GoArray<stdgo.GoString> = (new stdgo.GoArray<stdgo.GoString>(4, 4, ...[("CanInt" : stdgo.GoString), ("CanUint" : stdgo.GoString), ("CanFloat" : stdgo.GoString), ("CanComplex" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>);
        var _testCases:stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_39.T__struct_39> = (new stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_39.T__struct_39>(30, 30, ...[
({ _i : stdgo.Go.toInterface((132 : stdgo.GoInt)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[true, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((8 : stdgo.GoInt8)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[true, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((16 : stdgo.GoInt16)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[true, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((32 : stdgo.GoInt32)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[true, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((64i64 : stdgo.GoInt64)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[true, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((132u32 : stdgo.GoUInt)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, true, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((8 : stdgo.GoUInt8)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, true, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((16 : stdgo.GoUInt16)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, true, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((32u32 : stdgo.GoUInt32)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, true, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((64i64 : stdgo.GoUInt64)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, true, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((43981 : stdgo.GoUIntptr)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, true, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface(((256.25 : stdgo.GoFloat64) : stdgo.GoFloat32)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, true, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((512.125 : stdgo.GoFloat64)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, true, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface(((532.125f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 10f64) : stdgo.GoComplex64)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, true]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface(((564.25f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64) : stdgo.GoComplex128)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, true]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((-132 : _internal.reflect_test.Reflect_test_T_testCanIntUintFloatComplex___localname___integer_8036.T_testCanIntUintFloatComplex___localname___integer_8036)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[true, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((132u32 : _internal.reflect_test.Reflect_test_T_testCanIntUintFloatComplex___localname___uinteger_8054.T_testCanIntUintFloatComplex___localname___uinteger_8054)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, true, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface(((256.25 : stdgo.GoFloat64) : _internal.reflect_test.Reflect_test_T_testCanIntUintFloatComplex___localname___float_8074.T_testCanIntUintFloatComplex___localname___float_8074)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, true, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface(((532.125f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 10f64) : _internal.reflect_test.Reflect_test_T_testCanIntUintFloatComplex___localname___complex_8094.T_testCanIntUintFloatComplex___localname___complex_8094)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, true]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface(("hello world" : stdgo.GoString)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoUInt))), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoFloat64))), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface(stdgo.Go.pointer(new stdgo.GoComplex64(0, 0))), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(5, 5, ...[for (i in 0 ... 5) (0 : stdgo.GoInt)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface(stdgo.Go.pointer(((0 : stdgo.GoInt) : _internal.reflect_test.Reflect_test_T_testCanIntUintFloatComplex___localname___integer_8036.T_testCanIntUintFloatComplex___localname___integer_8036))), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Chan<stdgo.GoInt>)) : stdgo.Ref<stdgo.Chan<stdgo.GoInt>>)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((stdgo.Go.setRef(null) : stdgo.Ref<stdgo.GoInt8 -> Void>)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39),
({ _i : stdgo.Go.toInterface((stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_RS1.RS1)) : stdgo.Ref<_internal.reflect_test.Reflect_test_RS1.RS1>)), _want : (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39)].concat([for (i in 30 ... (30 > 30 ? 30 : 30 : stdgo.GoInt).toBasic()) ({ _i : (null : stdgo.AnyInterface), _want : new stdgo.GoArray<Bool>(4, 4, ...[for (i in 0 ... 4) false]) } : _internal.reflect_test.Reflect_test_T__struct_39.T__struct_39)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_T__struct_39.T__struct_39>);
        for (_i => _tc in _testCases) {
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_tc._i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _got = (new stdgo.GoArray<Bool>(4, 4, ...[_v.canInt(), _v.canUint(), _v.canFloat(), _v.canComplex()]) : stdgo.GoArray<Bool>);
            for (_j => _ in _tc._want) {
                if (_got[(_j : stdgo.GoInt)] != (_tc._want[(_j : stdgo.GoInt)])) {
                    _t.errorf(("#%d: v.%s() returned %t for type %T, want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ops[(_j : stdgo.GoInt)]), stdgo.Go.toInterface(_got[(_j : stdgo.GoInt)]), _tc._i, stdgo.Go.toInterface(_tc._want[(_j : stdgo.GoInt)]));
                };
            };
        };
    }
