package _internal.internal.fmtsort_test;
var _sortTests : stdgo.Slice<_internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest> = (new stdgo.Slice<_internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest>(11, 11, ...[
(new _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((7 : stdgo.GoInt), ("bar" : stdgo.GoString));
x.set((-3 : stdgo.GoInt), ("foo" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>)), ("-3:foo 7:bar" : stdgo.GoString)) : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest),
(new _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((7 : stdgo.GoUInt8), ("bar" : stdgo.GoString));
x.set((3 : stdgo.GoUInt8), ("foo" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>)), ("3:foo 7:bar" : stdgo.GoString)) : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest),
(new _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set(("7" : stdgo.GoString), ("bar" : stdgo.GoString));
x.set(("3" : stdgo.GoString), ("foo" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)), ("3:foo 7:bar" : stdgo.GoString)) : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest),
(new _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((7 : stdgo.GoFloat64), ("bar" : stdgo.GoString));
x.set((-3 : stdgo.GoFloat64), ("foo" : stdgo.GoString));
x.set(stdgo._internal.math.Math_naN.naN(), ("nan" : stdgo.GoString));
x.set(stdgo._internal.math.Math_inf.inf((0 : stdgo.GoInt)), ("inf" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoString>)), ("NaN:nan -3:foo 7:bar +Inf:inf" : stdgo.GoString)) : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest),
(new _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoComplex128Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set(((7f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64)), ("bar2" : stdgo.GoString));
x.set(((7f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64)), ("bar" : stdgo.GoString));
x.set(((-3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ("foo" : stdgo.GoString));
x.set(new stdgo.GoComplex128(stdgo._internal.math.Math_naN.naN(), (0 : stdgo.GoFloat64)), ("nan" : stdgo.GoString));
x.set(new stdgo.GoComplex128(stdgo._internal.math.Math_inf.inf((0 : stdgo.GoInt)), (0 : stdgo.GoFloat64)), ("inf" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoComplex128, stdgo.GoString>)), ("(NaN+0i):nan (-3+0i):foo (7+1i):bar (7+2i):bar2 (+Inf+0i):inf" : stdgo.GoString)) : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest),
(new _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoBoolMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set(true, ("true" : stdgo.GoString));
x.set(false, ("false" : stdgo.GoString));
        x;
    } : stdgo.GoMap<Bool, stdgo.GoString>)), ("false:false true:true" : stdgo.GoString)) : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest),
(new _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest(stdgo.Go.toInterface(_internal.internal.fmtsort_test.Fmtsort_test__chanMap._chanMap()), ("CHAN0:0 CHAN1:1 CHAN2:2" : stdgo.GoString)) : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest),
(new _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest(stdgo.Go.toInterface(_internal.internal.fmtsort_test.Fmtsort_test__pointerMap._pointerMap()), ("PTR0:0 PTR1:1 PTR2:2" : stdgo.GoString)) : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest),
(new _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest(stdgo.Go.toInterface(_internal.internal.fmtsort_test.Fmtsort_test__unsafePointerMap._unsafePointerMap()), ("UNSAFEPTR0:0 UNSAFEPTR1:1 UNSAFEPTR2:2" : stdgo.GoString)) : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest),
(new _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<_internal.internal.fmtsort_test.Fmtsort_test_T_toy.T_toy, stdgo.GoString>();
        x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.internal.fmtsort_test.Fmtsort_test_T_toy.T_toy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }));
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((new _internal.internal.fmtsort_test.Fmtsort_test_T_toy.T_toy((7 : stdgo.GoInt), (2 : stdgo.GoInt)) : _internal.internal.fmtsort_test.Fmtsort_test_T_toy.T_toy), ("72" : stdgo.GoString));
x.set((new _internal.internal.fmtsort_test.Fmtsort_test_T_toy.T_toy((7 : stdgo.GoInt), (1 : stdgo.GoInt)) : _internal.internal.fmtsort_test.Fmtsort_test_T_toy.T_toy), ("71" : stdgo.GoString));
x.set((new _internal.internal.fmtsort_test.Fmtsort_test_T_toy.T_toy((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : _internal.internal.fmtsort_test.Fmtsort_test_T_toy.T_toy), ("34" : stdgo.GoString));
        cast x;
    } : stdgo.GoMap<_internal.internal.fmtsort_test.Fmtsort_test_T_toy.T_toy, stdgo.GoString>)), ("{3 4}:34 {7 1}:71 {7 2}:72" : stdgo.GoString)) : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest),
(new _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoInt>, stdgo.GoString>();
        x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, 2));
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(7 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>), ("72" : stdgo.GoString));
x.set((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(7 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>), ("71" : stdgo.GoString));
x.set((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>), ("34" : stdgo.GoString));
        cast x;
    } : stdgo.GoMap<stdgo.GoArray<stdgo.GoInt>, stdgo.GoString>)), ("[3 4]:34 [7 1]:71 [7 2]:72" : stdgo.GoString)) : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : _internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest)])) : stdgo.Slice<_internal.internal.fmtsort_test.Fmtsort_test_T_sortTest.T_sortTest>);
