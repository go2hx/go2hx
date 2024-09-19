package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testRem64Overflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var rem64Tests = (new stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_7.T__struct_7>(7, 7, ...[({ _hi : (42i64 : stdgo.GoUInt64), _lo : (1119i64 : stdgo.GoUInt64), _y : (42i64 : stdgo.GoUInt64), _rem : (27i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_7.T__struct_7), ({ _hi : (42i64 : stdgo.GoUInt64), _lo : (1119i64 : stdgo.GoUInt64), _y : (38i64 : stdgo.GoUInt64), _rem : (9i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_7.T__struct_7), ({ _hi : (42i64 : stdgo.GoUInt64), _lo : (1119i64 : stdgo.GoUInt64), _y : (26i64 : stdgo.GoUInt64), _rem : (23i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_7.T__struct_7), ({ _hi : (469i64 : stdgo.GoUInt64), _lo : (0i64 : stdgo.GoUInt64), _y : (467i64 : stdgo.GoUInt64), _rem : (271i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_7.T__struct_7), ({ _hi : (469i64 : stdgo.GoUInt64), _lo : (0i64 : stdgo.GoUInt64), _y : (113i64 : stdgo.GoUInt64), _rem : (58i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_7.T__struct_7), ({ _hi : (111111i64 : stdgo.GoUInt64), _lo : (111111i64 : stdgo.GoUInt64), _y : (1171i64 : stdgo.GoUInt64), _rem : (803i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_7.T__struct_7), ({ _hi : (3968194946088682615i64 : stdgo.GoUInt64), _lo : (3192705705065114702i64 : stdgo.GoUInt64), _y : (1000037i64 : stdgo.GoUInt64), _rem : (56067i64 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_7.T__struct_7)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _hi : (0 : stdgo.GoUInt64), _lo : (0 : stdgo.GoUInt64), _y : (0 : stdgo.GoUInt64), _rem : (0 : stdgo.GoUInt64) } : _internal.math.bits_test.Bits_test_T__struct_7.T__struct_7)])) : stdgo.Slice<_internal.math.bits_test.Bits_test_T__struct_7.T__struct_7>);
        for (__0 => _rt in rem64Tests) {
            if ((_rt._hi < _rt._y : Bool)) {
                _t.fatalf(("Rem64(%v, %v, %v) is not a test with quo overflow" : stdgo.GoString), stdgo.Go.toInterface(_rt._hi), stdgo.Go.toInterface(_rt._lo), stdgo.Go.toInterface(_rt._y));
            };
            var _rem = (stdgo._internal.math.bits.Bits_rem64.rem64(_rt._hi, _rt._lo, _rt._y) : stdgo.GoUInt64);
            if (_rem != (_rt._rem)) {
                _t.errorf(("Rem64(%v, %v, %v) returned %v, wanted %v" : stdgo.GoString), stdgo.Go.toInterface(_rt._hi), stdgo.Go.toInterface(_rt._lo), stdgo.Go.toInterface(_rt._y), stdgo.Go.toInterface(_rem), stdgo.Go.toInterface(_rt._rem));
            };
        };
    }
