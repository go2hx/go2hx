package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testMulDiv32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testMul = (function(_msg:stdgo.GoString, _f:(stdgo.GoUInt32, stdgo.GoUInt32) -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; }, _x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32):Void {
            var __tmp__ = _f(_x, _y), _hi1:stdgo.GoUInt32 = __tmp__._0, _lo1:stdgo.GoUInt32 = __tmp__._1;
            if (((_hi1 != _hi) || (_lo1 != _lo) : Bool)) {
                _t.errorf(("%s: got hi:lo = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_hi1), stdgo.Go.toInterface(_lo1), stdgo.Go.toInterface(_hi), stdgo.Go.toInterface(_lo));
            };
        } : (stdgo.GoString, (stdgo.GoUInt32, stdgo.GoUInt32) -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; }, stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32) -> Void);
        var _testDiv = (function(_msg:stdgo.GoString, _f:(stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32) -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; }, _hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32, _q:stdgo.GoUInt32, _r:stdgo.GoUInt32):Void {
            var __tmp__ = _f(_hi, _lo, _y), _q1:stdgo.GoUInt32 = __tmp__._0, _r1:stdgo.GoUInt32 = __tmp__._1;
            if (((_q1 != _q) || (_r1 != _r) : Bool)) {
                _t.errorf(("%s: got q:r = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_q1), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
            };
        } : (stdgo.GoString, (stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32) -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; }, stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32) -> Void);
        for (__0 => _a in (new stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_5.T__struct_5>(3, 3, ...[({ _x : (-2147483648u32 : stdgo.GoUInt32), _y : (2u32 : stdgo.GoUInt32), _hi : (1u32 : stdgo.GoUInt32), _lo : (0u32 : stdgo.GoUInt32), _r : (1u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_5.T__struct_5), ({ _x : (-998376820u32 : stdgo.GoUInt32), _y : (50911u32 : stdgo.GoUInt32), _hi : (39076u32 : stdgo.GoUInt32), _lo : (-1719302156u32 : stdgo.GoUInt32), _r : (13u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_5.T__struct_5), ({ _x : (-1u32 : stdgo.GoUInt32), _y : (-1u32 : stdgo.GoUInt32), _hi : (-2u32 : stdgo.GoUInt32), _lo : (1u32 : stdgo.GoUInt32), _r : (42u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_5.T__struct_5)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt32), _y : (0 : stdgo.GoUInt32), _hi : (0 : stdgo.GoUInt32), _lo : (0 : stdgo.GoUInt32), _r : (0 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_5.T__struct_5)])) : stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_5.T__struct_5>)) {
            _testMul(("Mul32" : stdgo.GoString), stdgo._internal.math.bits.Bits_mul32.mul32, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul32 symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_mul32.mul32, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div32" : stdgo.GoString), stdgo._internal.math.bits.Bits_div32.div32, _a._hi, (_a._lo + _a._r : stdgo.GoUInt32), _a._y, _a._x, _a._r);
            _testDiv(("Div32 symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_div32.div32, _a._hi, (_a._lo + _a._r : stdgo.GoUInt32), _a._x, _a._y, _a._r);
        };
    }
