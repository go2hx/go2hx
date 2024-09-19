package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testAddSubUint32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _test = (function(_msg:stdgo.GoString, _f:(stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32) -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; }, _x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _c:stdgo.GoUInt32, _z:stdgo.GoUInt32, _cout:stdgo.GoUInt32):Void {
            var __tmp__ = _f(_x, _y, _c), _z1:stdgo.GoUInt32 = __tmp__._0, _cout1:stdgo.GoUInt32 = __tmp__._1;
            if (((_z1 != _z) || (_cout1 != _cout) : Bool)) {
                _t.errorf(("%s: got z:cout = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_z1), stdgo.Go.toInterface(_cout1), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_cout));
            };
        } : (stdgo.GoString, (stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32) -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; }, stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32, stdgo.GoUInt32) -> Void);
        for (__0 => _a in (new stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_2.T__struct_2>(11, 11, ...[
({ _x : (0u32 : stdgo.GoUInt32), _y : (0u32 : stdgo.GoUInt32), _c : (0u32 : stdgo.GoUInt32), _z : (0u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2),
({ _x : (0u32 : stdgo.GoUInt32), _y : (1u32 : stdgo.GoUInt32), _c : (0u32 : stdgo.GoUInt32), _z : (1u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2),
({ _x : (0u32 : stdgo.GoUInt32), _y : (0u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (1u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2),
({ _x : (0u32 : stdgo.GoUInt32), _y : (1u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (2u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2),
({ _x : (12345u32 : stdgo.GoUInt32), _y : (67890u32 : stdgo.GoUInt32), _c : (0u32 : stdgo.GoUInt32), _z : (80235u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2),
({ _x : (12345u32 : stdgo.GoUInt32), _y : (67890u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (80236u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2),
({ _x : (-1u32 : stdgo.GoUInt32), _y : (1u32 : stdgo.GoUInt32), _c : (0u32 : stdgo.GoUInt32), _z : (0u32 : stdgo.GoUInt32), _cout : (1u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2),
({ _x : (-1u32 : stdgo.GoUInt32), _y : (0u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (0u32 : stdgo.GoUInt32), _cout : (1u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2),
({ _x : (-1u32 : stdgo.GoUInt32), _y : (1u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (1u32 : stdgo.GoUInt32), _cout : (1u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2),
({ _x : (-1u32 : stdgo.GoUInt32), _y : (-1u32 : stdgo.GoUInt32), _c : (0u32 : stdgo.GoUInt32), _z : (-2u32 : stdgo.GoUInt32), _cout : (1u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2),
({ _x : (-1u32 : stdgo.GoUInt32), _y : (-1u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (-1u32 : stdgo.GoUInt32), _cout : (1u32 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt32), _y : (0 : stdgo.GoUInt32), _c : (0 : stdgo.GoUInt32), _z : (0 : stdgo.GoUInt32), _cout : (0 : stdgo.GoUInt32) } : _internal.math.bits_test.Bits_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_2.T__struct_2>)) {
            _test(("Add32" : stdgo.GoString), stdgo._internal.math.bits.Bits_add32.add32, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add32 symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_add32.add32, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub32" : stdgo.GoString), stdgo._internal.math.bits.Bits_sub32.sub32, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub32 symmetric" : stdgo.GoString), stdgo._internal.math.bits.Bits_sub32.sub32, _a._z, _a._y, _a._c, _a._x, _a._cout);
        };
    }
