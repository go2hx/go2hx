package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
var _deepEqualTests : stdgo.Slice<_internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest> = (new stdgo.Slice<_internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest>(63, 63, ...[
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest((null : stdgo.AnyInterface), (null : stdgo.AnyInterface), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((1 : stdgo.GoInt32)), stdgo.Go.toInterface((1 : stdgo.GoInt32)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((0.5 : stdgo.GoFloat64)), stdgo.Go.toInterface((0.5 : stdgo.GoFloat64)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(((0.5 : stdgo.GoFloat64) : stdgo.GoFloat32)), stdgo.Go.toInterface(((0.5 : stdgo.GoFloat64) : stdgo.GoFloat32)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface(("hello" : stdgo.GoString)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_Basic.Basic((1 : stdgo.GoInt), (0.5 : stdgo.GoFloat64)) : _internal.reflect_test.Reflect_test_Basic.Basic)), stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_Basic.Basic((1 : stdgo.GoInt), (0.5 : stdgo.GoFloat64)) : _internal.reflect_test.Reflect_test_Basic.Basic)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((null : stdgo.Error)), stdgo.Go.toInterface((null : stdgo.Error)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fn1._fn1), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fn2._fn2), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<_internal.reflect_test.Reflect_test_MyByte.MyByte>(3, 3, ...[(1 : _internal.reflect_test.Reflect_test_MyByte.MyByte), (2 : _internal.reflect_test.Reflect_test_MyByte.MyByte), (3 : _internal.reflect_test.Reflect_test_MyByte.MyByte)]).__setNumber32__() : stdgo.Slice<_internal.reflect_test.Reflect_test_MyByte.MyByte>)), stdgo.Go.toInterface((new stdgo.Slice<_internal.reflect_test.Reflect_test_MyByte.MyByte>(3, 3, ...[(1 : _internal.reflect_test.Reflect_test_MyByte.MyByte), (2 : _internal.reflect_test.Reflect_test_MyByte.MyByte), (3 : _internal.reflect_test.Reflect_test_MyByte.MyByte)]).__setNumber32__() : stdgo.Slice<_internal.reflect_test.Reflect_test_MyByte.MyByte>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : _internal.reflect_test.Reflect_test_MyBytes.MyBytes)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : _internal.reflect_test.Reflect_test_MyBytes.MyBytes)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((1 : stdgo.GoInt32)), stdgo.Go.toInterface((2 : stdgo.GoInt32)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((0.5 : stdgo.GoFloat64)), stdgo.Go.toInterface((0.6 : stdgo.GoFloat64)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(((0.5 : stdgo.GoFloat64) : stdgo.GoFloat32)), stdgo.Go.toInterface(((0.6 : stdgo.GoFloat64) : stdgo.GoFloat32)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface(("hey" : stdgo.GoString)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>((11 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_Basic.Basic((1 : stdgo.GoInt), (0.5 : stdgo.GoFloat64)) : _internal.reflect_test.Reflect_test_Basic.Basic)), stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_Basic.Basic((1 : stdgo.GoInt), (0.6000000238418579 : stdgo.GoFloat64)) : _internal.reflect_test.Reflect_test_Basic.Basic)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_Basic.Basic((1 : stdgo.GoInt), (0 : stdgo.GoFloat64)) : _internal.reflect_test.Reflect_test_Basic.Basic)), stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_Basic.Basic((2 : stdgo.GoInt), (0 : stdgo.GoFloat64)) : _internal.reflect_test.Reflect_test_Basic.Basic)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
x.set((3 : stdgo.GoInt), ("two" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
x.set((2 : stdgo.GoInt), ("txo" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest((null : stdgo.AnyInterface), stdgo.Go.toInterface((1 : stdgo.GoInt)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((1 : stdgo.GoInt)), (null : stdgo.AnyInterface), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fn1._fn1), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fn3._fn3), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fn3._fn3), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fn3._fn3), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>(1, 1, ...[(new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>(1, 1, ...[(new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef(({ _p : (stdgo.Go.setRef(({ _s : ("a" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_T_structWithSelfPtr.T_structWithSelfPtr)) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_structWithSelfPtr.T_structWithSelfPtr>) } : _internal.reflect_test.Reflect_test_T_structWithSelfPtr.T_structWithSelfPtr)) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_structWithSelfPtr.T_structWithSelfPtr>)), stdgo.Go.toInterface((stdgo.Go.setRef(({ _p : (stdgo.Go.setRef(({ _s : ("b" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_T_structWithSelfPtr.T_structWithSelfPtr)) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_structWithSelfPtr.T_structWithSelfPtr>) } : _internal.reflect_test.Reflect_test_T_structWithSelfPtr.T_structWithSelfPtr)) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_structWithSelfPtr.T_structWithSelfPtr>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(stdgo._internal.math.Math_naN.naN()), stdgo.Go.toInterface(stdgo._internal.math.Math_naN.naN()), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoFloat64>(1, 1, ...[stdgo._internal.math.Math_naN.naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoFloat64>(1, 1, ...[stdgo._internal.math.Math_naN.naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoFloat64>(1, 1, ...[stdgo._internal.math.Math_naN.naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>)), stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_self.T_self() : _internal.reflect_test.Reflect_test_T_self.T_self)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoFloat64>(1, 1, ...[stdgo._internal.math.Math_naN.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoFloat64>(1, 1, ...[stdgo._internal.math.Math_naN.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoFloat64>(1, 1, ...[stdgo._internal.math.Math_naN.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>)), stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_self.T_self() : _internal.reflect_test.Reflect_test_T_self.T_self)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoFloat64>();
        x.__defaultValue__ = () -> (0 : stdgo.GoFloat64);
        x.set(stdgo._internal.math.Math_naN.naN(), (1 : stdgo.GoFloat64));
        x;
    } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64>)), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoFloat64>();
        x.__defaultValue__ = () -> (0 : stdgo.GoFloat64);
        x.set((1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64));
        x;
    } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoFloat64>();
        x.__defaultValue__ = () -> (0 : stdgo.GoFloat64);
        x.set(stdgo._internal.math.Math_naN.naN(), (1 : stdgo.GoFloat64));
        x;
    } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64>)), stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_self.T_self() : _internal.reflect_test.Reflect_test_T_self.T_self)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoInt>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoInt>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        {};
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)), stdgo.Go.toInterface((null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        {};
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        {};
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)), stdgo.Go.toInterface((null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoFloat64)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((1 : stdgo.GoInt32)), stdgo.Go.toInterface((1i64 : stdgo.GoInt64)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((0.5 : stdgo.GoFloat64)), stdgo.Go.toInterface(("hello" : stdgo.GoString)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((4 : stdgo.GoInt))]) : stdgo.GoArray<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.GoArray<stdgo.AnyInterface>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface(("s" : stdgo.GoString))]) : stdgo.GoArray<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.GoArray<stdgo.AnyInterface>>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_Basic.Basic((1 : stdgo.GoInt), (0.5 : stdgo.GoFloat64)) : _internal.reflect_test.Reflect_test_Basic.Basic)), stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_NotBasic.NotBasic((1 : stdgo.GoInt), (0.5 : stdgo.GoFloat64)) : _internal.reflect_test.Reflect_test_NotBasic.NotBasic)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((1u32 : stdgo.GoUInt), ("one" : stdgo.GoString));
x.set((2u32 : stdgo.GoUInt), ("two" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoUInt, stdgo.GoString>)), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((new stdgo.Slice<_internal.reflect_test.Reflect_test_MyByte.MyByte>(3, 3, ...[(1 : _internal.reflect_test.Reflect_test_MyByte.MyByte), (2 : _internal.reflect_test.Reflect_test_MyByte.MyByte), (3 : _internal.reflect_test.Reflect_test_MyByte.MyByte)]).__setNumber32__() : stdgo.Slice<_internal.reflect_test.Reflect_test_MyByte.MyByte>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<_internal.reflect_test.Reflect_test_MyByte.MyByte>(3, 3, ...[(1 : _internal.reflect_test.Reflect_test_MyByte.MyByte), (2 : _internal.reflect_test.Reflect_test_MyByte.MyByte), (3 : _internal.reflect_test.Reflect_test_MyByte.MyByte)]).__setNumber32__() : stdgo.Slice<_internal.reflect_test.Reflect_test_MyByte.MyByte>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : _internal.reflect_test.Reflect_test_MyBytes.MyBytes)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : _internal.reflect_test.Reflect_test_MyBytes.MyBytes)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loop1._loop1) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loop.Loop>)), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loop1._loop1) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loop.Loop>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loop1._loop1) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loop.Loop>)), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loop2._loop2) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loop.Loop>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loopy1._loopy1) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loopy.Loopy>)), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loopy1._loopy1) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loopy.Loopy>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loopy1._loopy1) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loopy.Loopy>)), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loopy2._loopy2) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loopy.Loopy>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__cycleMap1._cycleMap1) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__cycleMap2._cycleMap2) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), true) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest),
(new _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest(stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__cycleMap1._cycleMap1) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__cycleMap3._cycleMap3) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), false) : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest)].concat([for (i in 63 ... (63 > 63 ? 63 : 63 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_DeepEqualTest.DeepEqualTest>);
