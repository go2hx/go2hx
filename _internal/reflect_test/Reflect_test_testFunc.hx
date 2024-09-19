package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ret = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__dummy._dummy)).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(7, 7, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((10 : stdgo.GoUInt8)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((20 : stdgo.GoInt)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((30 : stdgo.GoUInt8)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[(40 : stdgo.GoUIntptr), (50 : stdgo.GoUIntptr)]) : _internal.reflect_test.Reflect_test_T_two.T_two)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((60 : stdgo.GoUInt8)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((70 : stdgo.GoFloat64) : stdgo.GoFloat32)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((80 : stdgo.GoUInt8)))?.__copy__()].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        if ((_ret.length) != ((7 : stdgo.GoInt))) {
            _t.fatalf(("Call returned %d values, want 7" : stdgo.GoString), stdgo.Go.toInterface((_ret.length)));
        };
        var _i = (_ret[(0 : stdgo.GoInt)].uint() : stdgo.GoUInt8);
        var _j = (_ret[(1 : stdgo.GoInt)].int_() : stdgo.GoInt);
        var _k = (_ret[(2 : stdgo.GoInt)].uint() : stdgo.GoUInt8);
        var _l = ((stdgo.Go.typeAssert((_ret[(3 : stdgo.GoInt)].interface_() : _internal.reflect_test.Reflect_test_T_two.T_two)) : _internal.reflect_test.Reflect_test_T_two.T_two)?.__copy__() : _internal.reflect_test.Reflect_test_T_two.T_two);
        var _m = (_ret[(4 : stdgo.GoInt)].uint() : stdgo.GoUInt8);
        var _n = (_ret[(5 : stdgo.GoInt)].float_() : stdgo.GoFloat32);
        var _o = (_ret[(6 : stdgo.GoInt)].uint() : stdgo.GoUInt8);
        if (((((((_i != ((10 : stdgo.GoUInt8)) || _j != ((20 : stdgo.GoInt)) : Bool) || _k != ((30 : stdgo.GoUInt8)) : Bool) || stdgo.Go.toInterface(_l) != stdgo.Go.toInterface(((new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[(40 : stdgo.GoUIntptr), (50 : stdgo.GoUIntptr)]) : _internal.reflect_test.Reflect_test_T_two.T_two))) : Bool) || _m != ((60 : stdgo.GoUInt8)) : Bool) || _n != (70 : stdgo.GoFloat64) : Bool) || (_o != (80 : stdgo.GoUInt8)) : Bool)) {
            _t.errorf(("Call returned %d, %d, %d, %v, %d, %g, %d; want 10, 20, 30, [40, 50], 60, 70, 80" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_o));
        };
        for (_i => _v in _ret) {
            if (_v.canAddr()) {
                _t.errorf(("result %d is addressable" : stdgo.GoString), stdgo.Go.toInterface(_i));
            };
        };
    }
