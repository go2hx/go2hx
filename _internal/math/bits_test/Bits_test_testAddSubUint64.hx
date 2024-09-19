package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testAddSubUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _test = (function(_msg:stdgo.GoString, _f:(stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; }, _x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _c:stdgo.GoUInt64, _z:stdgo.GoUInt64, _cout:stdgo.GoUInt64):Void {
            var __tmp__ = _f(_x, _y, _c), _z1:stdgo.GoUInt64 = __tmp__._0, _cout1:stdgo.GoUInt64 = __tmp__._1;
            if (((_z1 != _z) || (_cout1 != _cout) : Bool)) {
                _t.errorf(("%s: got z:cout = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_z1), stdgo.Go.toInterface(_cout1), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_cout));
            };
        } : (stdgo.GoString, (stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64) -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; }, stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64) -> Void);
        for (__0 => _a in (new stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_3.T__struct_3>(11, 11, ...[
({ _x : (0i64 : stdgo.GoUInt64), _y : (0i64 : stdgo.GoUInt64), _c : (0i64 : stdgo.GoUInt64), _z : (0i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3),
({ _x : (0i64 : stdgo.GoUInt64), _y : (1i64 : stdgo.GoUInt64), _c : (0i64 : stdgo.GoUInt64), _z : (1i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3),
({ _x : (0i64 : stdgo.GoUInt64), _y : (0i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (1i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3),
({ _x : (0i64 : stdgo.GoUInt64), _y : (1i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (2i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3),
({ _x : (12345i64 : stdgo.GoUInt64), _y : (67890i64 : stdgo.GoUInt64), _c : (0i64 : stdgo.GoUInt64), _z : (80235i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3),
({ _x : (12345i64 : stdgo.GoUInt64), _y : (67890i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (80236i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3),
({ _x : (-1i64 : stdgo.GoUInt64), _y : (1i64 : stdgo.GoUInt64), _c : (0i64 : stdgo.GoUInt64), _z : (0i64 : stdgo.GoUInt64), _cout : (1i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3),
({ _x : (-1i64 : stdgo.GoUInt64), _y : (0i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (0i64 : stdgo.GoUInt64), _cout : (1i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3),
({ _x : (-1i64 : stdgo.GoUInt64), _y : (1i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (1i64 : stdgo.GoUInt64), _cout : (1i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3),
({ _x : (-1i64 : stdgo.GoUInt64), _y : (-1i64 : stdgo.GoUInt64), _c : (0i64 : stdgo.GoUInt64), _z : (-2i64 : stdgo.GoUInt64), _cout : (1i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3),
({ _x : (-1i64 : stdgo.GoUInt64), _y : (-1i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (-1i64 : stdgo.GoUInt64), _cout : (1i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt64), _y : (0 : stdgo.GoUInt64), _c : (0 : stdgo.GoUInt64), _z : (0 : stdgo.GoUInt64), _cout : (0 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_3.T__struct_3)])) : stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_3.T__struct_3>)) {
            _test(("Add64" : stdgo.GoString), stdgo._internal.math.bits.Bits_add64.add64, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add64 symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_add64.add64, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub64" : stdgo.GoString), stdgo._internal.math.bits.Bits_sub64.sub64, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub64 symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_sub64.sub64, _a._z, _a._y, _a._c, _a._x, _a._cout);
            _test(("Add64 intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _c:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return stdgo._internal.math.bits.Bits_add64.add64(_x, _y, _c);
            }, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add64 intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _c:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return stdgo._internal.math.bits.Bits_add64.add64(_x, _y, _c);
            }, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub64 intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _c:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return stdgo._internal.math.bits.Bits_sub64.sub64(_x, _y, _c);
            }, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub64 intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _c:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return stdgo._internal.math.bits.Bits_sub64.sub64(_x, _y, _c);
            }, _a._z, _a._y, _a._c, _a._x, _a._cout);
        };
    }
