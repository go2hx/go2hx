package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testMulDiv(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testMul = (function(_msg:stdgo.GoString, _f:(stdgo.GoUInt, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; }, _x:stdgo.GoUInt, _y:stdgo.GoUInt, _hi:stdgo.GoUInt, _lo:stdgo.GoUInt):Void {
            var __tmp__ = _f(_x, _y), _hi1:stdgo.GoUInt = __tmp__._0, _lo1:stdgo.GoUInt = __tmp__._1;
            if (((_hi1 != _hi) || (_lo1 != _lo) : Bool)) {
                _t.errorf(("%s: got hi:lo = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_hi1), stdgo.Go.toInterface(_lo1), stdgo.Go.toInterface(_hi), stdgo.Go.toInterface(_lo));
            };
        } : (stdgo.GoString, (stdgo.GoUInt, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; }, stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt) -> Void);
        var _testDiv = (function(_msg:stdgo.GoString, _f:(stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; }, _hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt, _q:stdgo.GoUInt, _r:stdgo.GoUInt):Void {
            var __tmp__ = _f(_hi, _lo, _y), _q1:stdgo.GoUInt = __tmp__._0, _r1:stdgo.GoUInt = __tmp__._1;
            if (((_q1 != _q) || (_r1 != _r) : Bool)) {
                _t.errorf(("%s: got q:r = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_q1), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
            };
        } : (stdgo.GoString, (stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; }, stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt) -> Void);
        for (__0 => _a in (new stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_4.T__struct_4>(2, 2, ...[({ _x : (-2147483648u32 : stdgo.GoUInt), _y : (2u32 : stdgo.GoUInt), _hi : (1u32 : stdgo.GoUInt), _lo : (0u32 : stdgo.GoUInt), _r : (1u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_4.T__struct_4), ({ _x : (-1u32 : stdgo.GoUInt), _y : (-1u32 : stdgo.GoUInt), _hi : (-2u32 : stdgo.GoUInt), _lo : (1u32 : stdgo.GoUInt), _r : (42u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_4.T__struct_4)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt), _y : (0 : stdgo.GoUInt), _hi : (0 : stdgo.GoUInt), _lo : (0 : stdgo.GoUInt), _r : (0 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_4.T__struct_4)])) : stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_4.T__struct_4>)) {
            _testMul(("Mul" : stdgo.GoString), stdgo._internal.math.bits.Bits_mul.mul, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_mul.mul, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div" : stdgo.GoString), stdgo._internal.math.bits.Bits_div.div, _a._hi, (_a._lo + _a._r : stdgo.GoUInt), _a._y, _a._x, _a._r);
            _testDiv(("Div symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_div.div, _a._hi, (_a._lo + _a._r : stdgo.GoUInt), _a._x, _a._y, _a._r);
            _testMul(("Mul intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return stdgo._internal.math.bits.Bits_mul.mul(_x, _y);
            }, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return stdgo._internal.math.bits.Bits_mul.mul(_x, _y);
            }, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div intrinsic" : stdgo.GoString), function(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return stdgo._internal.math.bits.Bits_div.div(_hi, _lo, _y);
            }, _a._hi, (_a._lo + _a._r : stdgo.GoUInt), _a._y, _a._x, _a._r);
            _testDiv(("Div intrinsic symmetric" : stdgo.GoString), function(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return stdgo._internal.math.bits.Bits_div.div(_hi, _lo, _y);
            }, _a._hi, (_a._lo + _a._r : stdgo.GoUInt), _a._x, _a._y, _a._r);
        };
    }
