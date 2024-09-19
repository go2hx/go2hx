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
function testPallocBitsFree(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = ({
            final x = new stdgo.GoMap.GoStringMap<_internal.runtime_test.Runtime_test_T__struct_27.T__struct_27>();
            x.__defaultValue__ = () -> ({ _beforeInv : (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>), _afterInv : (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>), _frees : (null : stdgo.Slice<stdgo.GoUInt>), _npages : (0 : stdgo.GoUIntptr) } : _internal.runtime_test.Runtime_test_T__struct_27.T__struct_27);
            x.set(("SomeFree" : stdgo.GoString), ({ _npages : (1 : stdgo.GoUIntptr), _beforeInv : (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(3, 3, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (32u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((64u32 : stdgo.GoUInt), (32u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((100u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>), _frees : (new stdgo.Slice<stdgo.GoUInt>(1, 1, ...[(32u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>), _afterInv : (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(3, 3, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (33u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((64u32 : stdgo.GoUInt), (32u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((100u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>) } : _internal.runtime_test.Runtime_test_T__struct_27.T__struct_27));
x.set(("NoneFree1" : stdgo.GoString), ({ _npages : (1 : stdgo.GoUIntptr), _frees : (new stdgo.Slice<stdgo.GoUInt>(6, 6, ...[(0u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (2u32 : stdgo.GoUInt), (3u32 : stdgo.GoUInt), (4u32 : stdgo.GoUInt), (5u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>), _afterInv : (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (6u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>), _beforeInv : (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>) } : _internal.runtime_test.Runtime_test_T__struct_27.T__struct_27));
x.set(("NoneFree2" : stdgo.GoString), ({ _npages : (2 : stdgo.GoUIntptr), _frees : (new stdgo.Slice<stdgo.GoUInt>(6, 6, ...[(0u32 : stdgo.GoUInt), (2u32 : stdgo.GoUInt), (4u32 : stdgo.GoUInt), (6u32 : stdgo.GoUInt), (8u32 : stdgo.GoUInt), (10u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>), _afterInv : (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (12u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>), _beforeInv : (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>) } : _internal.runtime_test.Runtime_test_T__struct_27.T__struct_27));
x.set(("NoneFree5" : stdgo.GoString), ({ _npages : (5 : stdgo.GoUIntptr), _frees : (new stdgo.Slice<stdgo.GoUInt>(5, 5, ...[(0u32 : stdgo.GoUInt), (5u32 : stdgo.GoUInt), (10u32 : stdgo.GoUInt), (15u32 : stdgo.GoUInt), (20u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>), _afterInv : (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (25u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>), _beforeInv : (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>) } : _internal.runtime_test.Runtime_test_T__struct_27.T__struct_27));
x.set(("NoneFree64" : stdgo.GoString), ({ _npages : (64 : stdgo.GoUIntptr), _frees : (new stdgo.Slice<stdgo.GoUInt>(3, 3, ...[(0u32 : stdgo.GoUInt), (64u32 : stdgo.GoUInt), (128u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>), _afterInv : (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (192u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>), _beforeInv : (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>) } : _internal.runtime_test.Runtime_test_T__struct_27.T__struct_27));
x.set(("NoneFree65" : stdgo.GoString), ({ _npages : (65 : stdgo.GoUIntptr), _frees : (new stdgo.Slice<stdgo.GoUInt>(3, 3, ...[(0u32 : stdgo.GoUInt), (65u32 : stdgo.GoUInt), (130u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>), _afterInv : (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (195u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>), _beforeInv : (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>) } : _internal.runtime_test.Runtime_test_T__struct_27.T__struct_27));
            x;
        } : stdgo.GoMap<stdgo.GoString, _internal.runtime_test.Runtime_test_T__struct_27.T__struct_27>);
        for (_name => _v in _tests) {
            var _v = ({
                final x = _v;
                ({ _beforeInv : x._beforeInv, _afterInv : x._afterInv, _frees : x._frees, _npages : x._npages } : _internal.runtime_test.Runtime_test_T__struct_27.T__struct_27);
            } : _internal.runtime_test.Runtime_test_T__struct_27.T__struct_27);
            _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _b = _internal.runtime_test.Runtime_test__makePallocBits._makePallocBits(_v._beforeInv);
                _internal.runtime_test.Runtime_test__invertPallocBits._invertPallocBits(_b);
                for (__14 => _i in _v._frees) {
                    _b.free(_i, (_v._npages : stdgo.GoUInt));
                };
                var _want = _internal.runtime_test.Runtime_test__makePallocBits._makePallocBits(_v._afterInv);
                _internal.runtime_test.Runtime_test__invertPallocBits._invertPallocBits(_want);
                _internal.runtime_test.Runtime_test__checkPallocBits._checkPallocBits(_t, _b, _want);
            });
        };
    }
