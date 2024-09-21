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
function testPallocBitsAllocRange(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _test = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _i:stdgo.GoUInt, _n:stdgo.GoUInt, _want:stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>):Void {
            _internal.runtime_test.Runtime_test__checkPallocBits._checkPallocBits(_t, _internal.runtime_test.Runtime_test__makePallocBits._makePallocBits((new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange(_i, _n) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>)), _want);
        };
        _t.run(("OneLow" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _want = (stdgo.Go.setRef(new stdgo._internal.runtime.Runtime_PallocBits.PallocBits(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
            _want[(0 : stdgo.GoInt)] = (1i64 : stdgo.GoUInt64);
            _test(_t, (0u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), _want);
        });
        _t.run(("OneHigh" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _want = (stdgo.Go.setRef(new stdgo._internal.runtime.Runtime_PallocBits.PallocBits(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
            _want[(7 : stdgo.GoInt)] = (-9223372036854775808i64 : stdgo.GoUInt64);
            _test(_t, (511u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), _want);
        });
        _t.run(("Inner" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _want = (stdgo.Go.setRef(new stdgo._internal.runtime.Runtime_PallocBits.PallocBits(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
            _want[(2 : stdgo.GoInt)] = (62i64 : stdgo.GoUInt64);
            _test(_t, (129u32 : stdgo.GoUInt), (5u32 : stdgo.GoUInt), _want);
        });
        _t.run(("Aligned" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _want = (stdgo.Go.setRef(new stdgo._internal.runtime.Runtime_PallocBits.PallocBits(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
            _want[(2 : stdgo.GoInt)] = (-1i64 : stdgo.GoUInt64);
            _want[(3 : stdgo.GoInt)] = (-1i64 : stdgo.GoUInt64);
            _test(_t, (128u32 : stdgo.GoUInt), (128u32 : stdgo.GoUInt), _want);
        });
        _t.run(("Begin" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _want = (stdgo.Go.setRef(new stdgo._internal.runtime.Runtime_PallocBits.PallocBits(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
            _want[(0 : stdgo.GoInt)] = (-1i64 : stdgo.GoUInt64);
            _want[(1 : stdgo.GoInt)] = (-1i64 : stdgo.GoUInt64);
            _want[(2 : stdgo.GoInt)] = (-1i64 : stdgo.GoUInt64);
            _want[(3 : stdgo.GoInt)] = (-1i64 : stdgo.GoUInt64);
            _want[(4 : stdgo.GoInt)] = (-1i64 : stdgo.GoUInt64);
            _want[(5 : stdgo.GoInt)] = (1i64 : stdgo.GoUInt64);
            _test(_t, (0u32 : stdgo.GoUInt), (321u32 : stdgo.GoUInt), _want);
        });
        _t.run(("End" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _want = (stdgo.Go.setRef(new stdgo._internal.runtime.Runtime_PallocBits.PallocBits(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
            _want[(7 : stdgo.GoInt)] = (-1i64 : stdgo.GoUInt64);
            _want[(6 : stdgo.GoInt)] = (-1i64 : stdgo.GoUInt64);
            _want[(5 : stdgo.GoInt)] = (-1i64 : stdgo.GoUInt64);
            _want[(4 : stdgo.GoInt)] = (-9223372036854775808i64 : stdgo.GoUInt64);
            _test(_t, (319u32 : stdgo.GoUInt), (193u32 : stdgo.GoUInt), _want);
        });
        _t.run(("All" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _want = (stdgo.Go.setRef(new stdgo._internal.runtime.Runtime_PallocBits.PallocBits(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
            for (_i => _ in _want) {
                _want[(_i : stdgo.GoInt)] = (-1i64 : stdgo.GoUInt64);
            };
            _test(_t, (0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt), _want);
        });
    }
