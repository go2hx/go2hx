package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testMulDiv64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testMul = (function(_msg:stdgo.GoString, _f:(stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; }, _x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64):Void {
            var __tmp__ = _f(_x, _y), _hi1:stdgo.GoUInt64 = __tmp__._0, _lo1:stdgo.GoUInt64 = __tmp__._1;
            if (((_hi1 != _hi) || (_lo1 != _lo) : Bool)) {
                _t.errorf(("%s: got hi:lo = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_hi1), stdgo.Go.toInterface(_lo1), stdgo.Go.toInterface(_hi), stdgo.Go.toInterface(_lo));
            };
        } : (stdgo.GoString, (stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; }, stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64) -> Void);
        var _testDiv = (function(_msg:stdgo.GoString, _f:(stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; }, _hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64, _q:stdgo.GoUInt64, _r:stdgo.GoUInt64):Void {
            var __tmp__ = _f(_hi, _lo, _y), _q1:stdgo.GoUInt64 = __tmp__._0, _r1:stdgo.GoUInt64 = __tmp__._1;
            if (((_q1 != _q) || (_r1 != _r) : Bool)) {
                _t.errorf(("%s: got q:r = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_q1), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
            };
        } : (stdgo.GoString, (stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; }, stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64) -> Void);
        for (__0 => _a in (new stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_6.T__struct_6>(3, 3, ...[({ _x : (-9223372036854775808i64 : stdgo.GoUInt64), _y : (2i64 : stdgo.GoUInt64), _hi : (1i64 : stdgo.GoUInt64), _lo : (0i64 : stdgo.GoUInt64), _r : (1i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_6.T__struct_6), ({ _x : (15241578750190521i64 : stdgo.GoUInt64), _y : (975461057789971041i64 : stdgo.GoUInt64), _hi : (805972396572648i64 : stdgo.GoUInt64), _lo : (-7073286711136648423i64 : stdgo.GoUInt64), _r : (13i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_6.T__struct_6), ({ _x : (-1i64 : stdgo.GoUInt64), _y : (-1i64 : stdgo.GoUInt64), _hi : (-2i64 : stdgo.GoUInt64), _lo : (1i64 : stdgo.GoUInt64), _r : (42i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_6.T__struct_6)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt64), _y : (0 : stdgo.GoUInt64), _hi : (0 : stdgo.GoUInt64), _lo : (0 : stdgo.GoUInt64), _r : (0 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_6.T__struct_6)])) : stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_6.T__struct_6>)) {
            _testMul(("Mul64" : stdgo.GoString), stdgo._internal.math.bits.Bits_mul64.mul64, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul64 symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_mul64.mul64, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div64" : stdgo.GoString), stdgo._internal.math.bits.Bits_div64.div64, _a._hi, (_a._lo + _a._r : stdgo.GoUInt64), _a._y, _a._x, _a._r);
            _testDiv(("Div64 symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_div64.div64, _a._hi, (_a._lo + _a._r : stdgo.GoUInt64), _a._x, _a._y, _a._r);
            _testMul(("Mul64 intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return stdgo._internal.math.bits.Bits_mul64.mul64(_x, _y);
            }, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul64 intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return stdgo._internal.math.bits.Bits_mul64.mul64(_x, _y);
            }, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div64 intrinsic" : stdgo.GoString), function(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return stdgo._internal.math.bits.Bits_div64.div64(_hi, _lo, _y);
            }, _a._hi, (_a._lo + _a._r : stdgo.GoUInt64), _a._y, _a._x, _a._r);
            _testDiv(("Div64 intrinsic symmetric" : stdgo.GoString), function(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return stdgo._internal.math.bits.Bits_div64.div64(_hi, _lo, _y);
            }, _a._hi, (_a._lo + _a._r : stdgo.GoUInt64), _a._x, _a._y, _a._r);
        };
    }
