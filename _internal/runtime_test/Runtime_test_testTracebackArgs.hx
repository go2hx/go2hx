package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testTracebackArgs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (_internal.runtime_test.Runtime_test__flagQuick._flagQuick.value) {
            _t.skip(stdgo.Go.toInterface(("-quick" : stdgo.GoString)));
        };
        var _optimized = (!stdgo._internal.internal.testenv.Testenv_optimizationOff.optimizationOff() : Bool);
        var _abiSel = (function(_x:stdgo.GoString, _y:stdgo.GoString):stdgo.GoString {
            if ((_optimized && false : Bool)) {
                return _x?.__copy__();
            };
            return _y?.__copy__();
        } : (stdgo.GoString, stdgo.GoString) -> stdgo.GoString);
        var _tests = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_36.T__struct_36>(19, 19, ...[
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs1._testTracebackArgs1((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt));
        }, _expect : ("testTracebackArgs1(0x1, 0x2, 0x3, 0x4, 0x5)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs2._testTracebackArgs2(false, ({ _a : (1 : stdgo.GoInt), _b : (2 : stdgo.GoInt), _c : (3 : stdgo.GoInt), _x : (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__() } : _internal.runtime_test.Runtime_test_T__struct_37.T__struct_37), (new stdgo.GoArray<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(6 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__());
        }, _expect : ("testTracebackArgs2(0x0, {0x1, 0x2, 0x3, {0x4, 0x5}}, {}, {0x6, 0x7, 0x8})" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs3._testTracebackArgs3((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(7 : stdgo.GoUInt8), (8 : stdgo.GoUInt8), (9 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__());
        }, _expect : ("testTracebackArgs3({0x1, 0x2, 0x3}, 0x4, 0x5, 0x6, {0x7, 0x8, 0x9})" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs4._testTracebackArgs4(false, (new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>>>>>>>>>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>>>>>>>>(1, 1, ...[for (i in 0 ... 1) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>>>>>>>(1, 1, ...[for (i in 0 ... 1) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>>>>>>(1, 1, ...[for (i in 0 ... 1) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>>>>>(1, 1, ...[for (i in 0 ... 1) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>>>>(1, 1, ...[for (i in 0 ... 1) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>>>(1, 1, ...[for (i in 0 ... 1) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>>(1, 1, ...[for (i in 0 ... 1) new stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>(1, 1, ...[for (i in 0 ... 1) new stdgo.GoArray<stdgo.GoInt>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoInt)])])])])])])])])])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>>>>>>>>>));
        }, _expect : ("testTracebackArgs4(0x0, {{{{{...}}}}})" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            var _z = (new stdgo.GoArray<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
            return _internal.runtime_test.Runtime_test__testTracebackArgs5._testTracebackArgs5(false,
({ _x : (1 : stdgo.GoInt), _y : _z?.__copy__(), _z : (new stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>(2, 2, ...[].concat([for (i in 0 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt>(0, 0)])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>) } : _internal.runtime_test.Runtime_test_T__struct_38.T__struct_38),
_z?.__copy__(),
_z?.__copy__(),
_z?.__copy__(),
_z?.__copy__(),
_z?.__copy__(),
_z?.__copy__(),
_z?.__copy__(),
_z?.__copy__(),
_z?.__copy__(),
_z?.__copy__(),
_z?.__copy__(),
_z?.__copy__());
        }, _expect : ("testTracebackArgs5(0x0, {0x1, {}, {{}, {}}}, {}, {}, {}, {}, {}, ...)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs6a._testTracebackArgs6a((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (10 : stdgo.GoInt));
        }, _expect : ("testTracebackArgs6a(0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs6b._testTracebackArgs6b((1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt),
(7 : stdgo.GoInt),
(8 : stdgo.GoInt),
(9 : stdgo.GoInt),
(10 : stdgo.GoInt),
(11 : stdgo.GoInt));
        }, _expect : ("testTracebackArgs6b(0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, ...)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs7a._testTracebackArgs7a((new stdgo.GoArray<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__());
        }, _expect : ("testTracebackArgs7a({0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa})" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs7b._testTracebackArgs7b((new stdgo.GoArray<stdgo.GoInt>(11, 11, ...[
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt),
(7 : stdgo.GoInt),
(8 : stdgo.GoInt),
(9 : stdgo.GoInt),
(10 : stdgo.GoInt),
(11 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__());
        }, _expect : ("testTracebackArgs7b({0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, ...})" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs7c._testTracebackArgs7c((new stdgo.GoArray<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__(), (11 : stdgo.GoInt));
        }, _expect : ("testTracebackArgs7c({0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa}, ...)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs7d._testTracebackArgs7d((new stdgo.GoArray<stdgo.GoInt>(11, 11, ...[
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt),
(7 : stdgo.GoInt),
(8 : stdgo.GoInt),
(9 : stdgo.GoInt),
(10 : stdgo.GoInt),
(11 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__(), (12 : stdgo.GoInt));
        }, _expect : ("testTracebackArgs7d({0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, ...}, ...)" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs8a._testTracebackArgs8a((new _internal.runtime_test.Runtime_test_T_testArgsType8a.T_testArgsType8a((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(9 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__()) : _internal.runtime_test.Runtime_test_T_testArgsType8a.T_testArgsType8a));
        }, _expect : ("testTracebackArgs8a({0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, {0x9, 0xa}})" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs8b._testTracebackArgs8b((new _internal.runtime_test.Runtime_test_T_testArgsType8b.T_testArgsType8b((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(9 : stdgo.GoInt), (10 : stdgo.GoInt), (11 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__()) : _internal.runtime_test.Runtime_test_T_testArgsType8b.T_testArgsType8b));
        }, _expect : ("testTracebackArgs8b({0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, {0x9, 0xa, ...}})" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs8c._testTracebackArgs8c((new _internal.runtime_test.Runtime_test_T_testArgsType8c.T_testArgsType8c((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(9 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__(), (11 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_T_testArgsType8c.T_testArgsType8c));
        }, _expect : ("testTracebackArgs8c({0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, {0x9, 0xa}, ...})" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackArgs8d._testTracebackArgs8d((new _internal.runtime_test.Runtime_test_T_testArgsType8d.T_testArgsType8d((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(9 : stdgo.GoInt), (10 : stdgo.GoInt), (11 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__(), (12 : stdgo.GoInt)) : _internal.runtime_test.Runtime_test_T_testArgsType8d.T_testArgsType8d));
        }, _expect : ("testTracebackArgs8d({0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, {0x9, 0xa, ...}, ...})" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            _internal.runtime_test.Runtime_test__poisonStack._poisonStack();
            return _internal.runtime_test.Runtime_test__testTracebackArgs9._testTracebackArgs9((1i64 : stdgo.GoInt64), (2 : stdgo.GoInt32), (3 : stdgo.GoInt16), (4 : stdgo.GoInt8), (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__(), (7 : stdgo.GoInt));
        }, _expect : _abiSel(("testTracebackArgs9(0x1, 0xffffffff?, 0x3, 0xff?, {0x5, 0x6}, 0x7)" : stdgo.GoString), ("testTracebackArgs9(0x1, 0x2, 0x3, 0x4, {0x5, 0x6}, 0x7)" : stdgo.GoString))?.__copy__() } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            _internal.runtime_test.Runtime_test__poisonStack._poisonStack();
            return _internal.runtime_test.Runtime_test__testTracebackArgs10._testTracebackArgs10((1 : stdgo.GoInt32), (2 : stdgo.GoInt32), (3 : stdgo.GoInt32), (4 : stdgo.GoInt32), (5 : stdgo.GoInt32));
        }, _expect : _abiSel(("testTracebackArgs10(0xffffffff?, 0xffffffff?, 0xffffffff?, 0xffffffff?, 0xffffffff?)" : stdgo.GoString), ("testTracebackArgs10(0x1, 0x2, 0x3, 0x4, 0x5)" : stdgo.GoString))?.__copy__() } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            _internal.runtime_test.Runtime_test__poisonStack._poisonStack();
            return _internal.runtime_test.Runtime_test__testTracebackArgs11a._testTracebackArgs11a((1 : stdgo.GoInt32), (2 : stdgo.GoInt32), (3 : stdgo.GoInt32));
        }, _expect : _abiSel(("testTracebackArgs11a(0xffffffff?, 0xffffffff?, 0xffffffff?)" : stdgo.GoString), ("testTracebackArgs11a(0x1, 0x2, 0x3)" : stdgo.GoString))?.__copy__() } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36),
({ _fn : function():stdgo.GoInt {
            _internal.runtime_test.Runtime_test__poisonStack._poisonStack();
            return _internal.runtime_test.Runtime_test__testTracebackArgs11b._testTracebackArgs11b((1 : stdgo.GoInt32), (2 : stdgo.GoInt32), (3 : stdgo.GoInt32), (4 : stdgo.GoInt32));
        }, _expect : _abiSel(("testTracebackArgs11b(0xffffffff?, 0xffffffff?, 0x3?, 0x4)" : stdgo.GoString), ("testTracebackArgs11b(0x1, 0x2, 0x3, 0x4)" : stdgo.GoString))?.__copy__() } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({ _fn : null, _expect : ("" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_36.T__struct_36)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_36.T__struct_36>);
        for (__6 => _test in _tests) {
            var _n = (_test._fn() : stdgo.GoInt);
            var _got = (_internal.runtime_test.Runtime_test__testTracebackArgsBuf._testTracebackArgsBuf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
            if (!stdgo._internal.bytes.Bytes_contains.contains(_got, (_test._expect : stdgo.Slice<stdgo.GoUInt8>))) {
                _t.errorf(("traceback does not contain expected string: want %q, got\n%s" : stdgo.GoString), stdgo.Go.toInterface(_test._expect), stdgo.Go.toInterface(_got));
            };
        };
    }
