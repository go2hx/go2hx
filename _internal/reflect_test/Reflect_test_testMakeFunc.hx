package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMakeFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f = (_internal.reflect_test.Reflect_test__dummy._dummy : (stdgo.GoUInt8, stdgo.GoInt, stdgo.GoUInt8, _internal.reflect_test.Reflect_test_T_two.T_two, stdgo.GoUInt8, stdgo.GoFloat32, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; var _2 : stdgo.GoUInt8; var _3 : _internal.reflect_test.Reflect_test_T_two.T_two; var _4 : stdgo.GoUInt8; var _5 : stdgo.GoFloat32; var _6 : stdgo.GoUInt8; });
        var _fv = (stdgo._internal.reflect.Reflect_makeFunc.makeFunc(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_f)), function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
            return _in;
        })?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_f) : stdgo.Ref<(stdgo.GoUInt8, stdgo.GoInt, stdgo.GoUInt8, _internal.reflect_test.Reflect_test_T_two.T_two, stdgo.GoUInt8, stdgo.GoFloat32, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; var _2 : stdgo.GoUInt8; var _3 : _internal.reflect_test.Reflect_test_T_two.T_two; var _4 : stdgo.GoUInt8; var _5 : stdgo.GoFloat32; var _6 : stdgo.GoUInt8; }>))).elem().set(_fv?.__copy__());
        var _g = (_internal.reflect_test.Reflect_test__dummy._dummy : (stdgo.GoUInt8, stdgo.GoInt, stdgo.GoUInt8, _internal.reflect_test.Reflect_test_T_two.T_two, stdgo.GoUInt8, stdgo.GoFloat32, stdgo.GoUInt8) -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; var _2 : stdgo.GoUInt8; var _3 : _internal.reflect_test.Reflect_test_T_two.T_two; var _4 : stdgo.GoUInt8; var _5 : stdgo.GoFloat32; var _6 : stdgo.GoUInt8; });
        _g((1 : stdgo.GoUInt8), (2 : stdgo.GoInt), (3 : stdgo.GoUInt8), (new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr)]) : _internal.reflect_test.Reflect_test_T_two.T_two), (6 : stdgo.GoUInt8), (7 : stdgo.GoFloat64), (8 : stdgo.GoUInt8));
        var __tmp__ = _f((10 : stdgo.GoUInt8), (20 : stdgo.GoInt), (30 : stdgo.GoUInt8), (new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[(40 : stdgo.GoUIntptr), (50 : stdgo.GoUIntptr)]) : _internal.reflect_test.Reflect_test_T_two.T_two), (60 : stdgo.GoUInt8), (70 : stdgo.GoFloat64), (80 : stdgo.GoUInt8)), _i:stdgo.GoUInt8 = __tmp__._0, _j:stdgo.GoInt = __tmp__._1, _k:stdgo.GoUInt8 = __tmp__._2, _l:_internal.reflect_test.Reflect_test_T_two.T_two = __tmp__._3, _m:stdgo.GoUInt8 = __tmp__._4, _n:stdgo.GoFloat32 = __tmp__._5, _o:stdgo.GoUInt8 = __tmp__._6;
        if (((((((_i != ((10 : stdgo.GoUInt8)) || _j != ((20 : stdgo.GoInt)) : Bool) || _k != ((30 : stdgo.GoUInt8)) : Bool) || stdgo.Go.toInterface(_l) != stdgo.Go.toInterface(((new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[(40 : stdgo.GoUIntptr), (50 : stdgo.GoUIntptr)]) : _internal.reflect_test.Reflect_test_T_two.T_two))) : Bool) || _m != ((60 : stdgo.GoUInt8)) : Bool) || _n != (70 : stdgo.GoFloat64) : Bool) || (_o != (80 : stdgo.GoUInt8)) : Bool)) {
            _t.errorf(("Call returned %d, %d, %d, %v, %d, %g, %d; want 10, 20, 30, [40, 50], 60, 70, 80" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_o));
        };
    }
