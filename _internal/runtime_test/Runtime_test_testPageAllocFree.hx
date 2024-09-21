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
function testPageAllocFree(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((false && stdgo._internal.testing.Testing_short.short() : Bool)) {
                _t.skip(stdgo.Go.toInterface(("skipping because virtual memory is limited; see #36210" : stdgo.GoString)));
            };
            var _tests = ({
                final x = new stdgo.GoMap.GoStringMap<_internal.runtime_test.Runtime_test_T__struct_22.T__struct_22>();
                x.__defaultValue__ = () -> ({ _before : (null : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _after : (null : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _npages : (0 : stdgo.GoUIntptr), _frees : (null : stdgo.Slice<stdgo.GoUIntptr>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22);
                x.set(("Free1" : stdgo.GoString), ({ _npages : (1 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(5, 5, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (1u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (2u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (3u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (4u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((5u32 : stdgo.GoUInt), (507u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("ManyArena1" : stdgo.GoString), ({ _npages : (1 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(3, 3, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (256u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (511u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(2, 2, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (256u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((257u32 : stdgo.GoUInt), (255u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((1u32 : stdgo.GoUInt), (511u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (511u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("Free2" : stdgo.GoString), ({ _npages : (2 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(5, 5, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (2u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (4u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (6u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (8u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((10u32 : stdgo.GoUInt), (502u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("Straddle2" : stdgo.GoString), ({ _npages : (2 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((511u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (511u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("Free5" : stdgo.GoString), ({ _npages : (5 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(5, 5, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (5u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (10u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (15u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (20u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((25u32 : stdgo.GoUInt), (487u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("Free64" : stdgo.GoString), ({ _npages : (64 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(3, 3, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (64u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (128u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((192u32 : stdgo.GoUInt), (320u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("Free65" : stdgo.GoString), ({ _npages : (65 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(3, 3, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (65u32 : stdgo.GoUInt)), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (130u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((195u32 : stdgo.GoUInt), (317u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("FreePallocChunkPages" : stdgo.GoString), ({ _npages : (512 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("StraddlePallocChunkPages" : stdgo.GoString), ({ _npages : (512 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((256u32 : stdgo.GoUInt), (256u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (256u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (256u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("StraddlePallocChunkPages+1" : stdgo.GoString), ({ _npages : (513 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (256u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (256u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((257u32 : stdgo.GoUInt), (255u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("FreePallocChunkPages*2" : stdgo.GoString), ({ _npages : (1024 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("StraddlePallocChunkPages*2" : stdgo.GoString), ({ _npages : (1024 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (256u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (256u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((256u32 : stdgo.GoUInt), (256u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
x.set(("AllFreePallocChunkPages*7+5" : stdgo.GoString), ({ _npages : (3589 : stdgo.GoUIntptr), _before : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (3u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (4u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (5u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (6u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (7u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _frees : (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo.GoUIntptr>), _after : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (3u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (4u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (5u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (6u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (7u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((5u32 : stdgo.GoUInt), (507u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22));
                x;
            } : stdgo.GoMap<stdgo.GoString, _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22>);
            for (_name => _v in _tests) {
                var _v = ({
                    final x = _v;
                    ({ _before : x._before, _after : x._after, _npages : x._npages, _frees : x._frees } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22);
                } : _internal.runtime_test.Runtime_test_T__struct_22.T__struct_22);
                _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _b = stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_v._before, (null : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>));
                        {
                            var _a0 = _b;
                            __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_freePageAlloc.freePageAlloc(_a0));
                        };
                        for (__14 => _addr in _v._frees) {
                            _b.free(_addr, _v._npages);
                        };
                        var _want = stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_v._after, (null : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>));
                        {
                            var _a0 = _want;
                            __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_freePageAlloc.freePageAlloc(_a0));
                        };
                        _internal.runtime_test.Runtime_test__checkPageAlloc._checkPageAlloc(_t, _want, _b);
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
