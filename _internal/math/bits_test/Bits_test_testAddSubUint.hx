package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testAddSubUint(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _test = (function(_msg:stdgo.GoString, _f:(stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; }, _x:stdgo.GoUInt, _y:stdgo.GoUInt, _c:stdgo.GoUInt, _z:stdgo.GoUInt, _cout:stdgo.GoUInt):Void {
            var __tmp__ = _f(_x, _y, _c), _z1:stdgo.GoUInt = __tmp__._0, _cout1:stdgo.GoUInt = __tmp__._1;
            if (((_z1 != _z) || (_cout1 != _cout) : Bool)) {
                _t.errorf(("%s: got z:cout = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_z1), stdgo.Go.toInterface(_cout1), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_cout));
            };
        } : (stdgo.GoString, (stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; }, stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt, stdgo.GoUInt) -> Void);
        for (__0 => _a in (new stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_1.T__struct_1>(11, 11, ...[
({ _x : (0u32 : stdgo.GoUInt), _y : (0u32 : stdgo.GoUInt), _c : (0u32 : stdgo.GoUInt), _z : (0u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1),
({ _x : (0u32 : stdgo.GoUInt), _y : (1u32 : stdgo.GoUInt), _c : (0u32 : stdgo.GoUInt), _z : (1u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1),
({ _x : (0u32 : stdgo.GoUInt), _y : (0u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (1u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1),
({ _x : (0u32 : stdgo.GoUInt), _y : (1u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (2u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1),
({ _x : (12345u32 : stdgo.GoUInt), _y : (67890u32 : stdgo.GoUInt), _c : (0u32 : stdgo.GoUInt), _z : (80235u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1),
({ _x : (12345u32 : stdgo.GoUInt), _y : (67890u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (80236u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1),
({ _x : (-1u32 : stdgo.GoUInt), _y : (1u32 : stdgo.GoUInt), _c : (0u32 : stdgo.GoUInt), _z : (0u32 : stdgo.GoUInt), _cout : (1u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1),
({ _x : (-1u32 : stdgo.GoUInt), _y : (0u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (0u32 : stdgo.GoUInt), _cout : (1u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1),
({ _x : (-1u32 : stdgo.GoUInt), _y : (1u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (1u32 : stdgo.GoUInt), _cout : (1u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1),
({ _x : (-1u32 : stdgo.GoUInt), _y : (-1u32 : stdgo.GoUInt), _c : (0u32 : stdgo.GoUInt), _z : (-2u32 : stdgo.GoUInt), _cout : (1u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1),
({ _x : (-1u32 : stdgo.GoUInt), _y : (-1u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (-1u32 : stdgo.GoUInt), _cout : (1u32 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt), _y : (0 : stdgo.GoUInt), _c : (0 : stdgo.GoUInt), _z : (0 : stdgo.GoUInt), _cout : (0 : stdgo.GoUInt) } : _internal.math.bits_test.Bits_test_T__struct_1.T__struct_1)])) : stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_1.T__struct_1>)) {
            _test(("Add" : stdgo.GoString), stdgo._internal.math.bits.Bits_add.add, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_add.add, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub" : stdgo.GoString), stdgo._internal.math.bits.Bits_sub.sub, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_sub.sub, _a._z, _a._y, _a._c, _a._x, _a._cout);
            _test(("Add intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _c:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return stdgo._internal.math.bits.Bits_add.add(_x, _y, _c);
            }, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _c:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return stdgo._internal.math.bits.Bits_add.add(_x, _y, _c);
            }, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _c:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return stdgo._internal.math.bits.Bits_sub.sub(_x, _y, _c);
            }, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _c:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return stdgo._internal.math.bits.Bits_sub.sub(_x, _y, _c);
            }, _a._z, _a._y, _a._c, _a._x, _a._cout);
        };
    }
