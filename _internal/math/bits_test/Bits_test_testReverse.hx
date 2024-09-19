package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testReverse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
            stdgo.Go.cfor((_i < (64u32 : stdgo.GoUInt) : Bool), _i++, {
                _internal.math.bits_test.Bits_test__testReverse._testReverse(_t, ((1i64 : stdgo.GoUInt64) << _i : stdgo.GoUInt64), ((1i64 : stdgo.GoUInt64) << (((63u32 : stdgo.GoUInt) - _i : stdgo.GoUInt)) : stdgo.GoUInt64));
            });
        };
        for (__0 => _test in (new stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_0.T__struct_0>(18, 18, ...[
({ _x : (0i64 : stdgo.GoUInt64), _r : (0i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (1i64 : stdgo.GoUInt64), _r : (-9223372036854775808i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (2i64 : stdgo.GoUInt64), _r : (4611686018427387904i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (3i64 : stdgo.GoUInt64), _r : (-4611686018427387904i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (4i64 : stdgo.GoUInt64), _r : (2305843009213693952i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (5i64 : stdgo.GoUInt64), _r : (-6917529027641081856i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (6i64 : stdgo.GoUInt64), _r : (6917529027641081856i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (7i64 : stdgo.GoUInt64), _r : (-2305843009213693952i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (8i64 : stdgo.GoUInt64), _r : (1152921504606846976i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (9i64 : stdgo.GoUInt64), _r : (-8070450532247928832i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (10i64 : stdgo.GoUInt64), _r : (5764607523034234880i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (11i64 : stdgo.GoUInt64), _r : (-3458764513820540928i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (12i64 : stdgo.GoUInt64), _r : (3458764513820540928i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (13i64 : stdgo.GoUInt64), _r : (-5764607523034234880i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (14i64 : stdgo.GoUInt64), _r : (8070450532247928832i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (15i64 : stdgo.GoUInt64), _r : (-1152921504606846976i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (90727559i64 : stdgo.GoUInt64), _r : (-2223064489610182656i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0),
({ _x : (81985529216486895i64 : stdgo.GoUInt64), _r : (-597899502893742976i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt64), _r : (0 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_0.T__struct_0)])) : stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_0.T__struct_0>)) {
            _internal.math.bits_test.Bits_test__testReverse._testReverse(_t, _test._x, _test._r);
            _internal.math.bits_test.Bits_test__testReverse._testReverse(_t, _test._r, _test._x);
        };
    }
