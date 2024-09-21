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
function testPageAllocScavenge(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((false && stdgo._internal.testing.Testing_short.short() : Bool)) {
                _t.skip(stdgo.Go.toInterface(("skipping because virtual memory is limited; see #36210" : stdgo.GoString)));
            };
            {};
            var _minPages = (stdgo._internal.runtime.Runtime_physPageSize.physPageSize / (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            if ((_minPages < (1 : stdgo.GoUIntptr) : Bool)) {
                _minPages = (1 : stdgo.GoUIntptr);
            };
            {};
            var _tests = ({
                final x = new stdgo.GoMap.GoStringMap<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___setup_8604.T_testPageAllocScavenge___localname___setup_8604>();
                x.__defaultValue__ = () -> ({} : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___setup_8604.T_testPageAllocScavenge___localname___setup_8604);
                x.set(("AllFreeUnscavExhaust" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _expect : (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>(1, 1, ...[(new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((4294967295 : stdgo.GoUIntptr), (12582912 : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>), _afterScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___setup_8604.T_testPageAllocScavenge___localname___setup_8604));
x.set(("NoneFreeUnscavExhaust" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _expect : (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>(1, 1, ...[(new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((4294967295 : stdgo.GoUIntptr), (0 : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>), _afterScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___setup_8604.T_testPageAllocScavenge___localname___setup_8604));
x.set(("ScavHighestPageFirst" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((_minPages : stdgo.GoUInt), ((512u32 : stdgo.GoUInt) - (((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _expect : (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>(1, 1, ...[(new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((1 : stdgo.GoUIntptr), (_minPages * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>), _afterScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((_minPages : stdgo.GoUInt), ((512u32 : stdgo.GoUInt) - (_minPages : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___setup_8604.T_testPageAllocScavenge___localname___setup_8604));
x.set(("ScavMultiple" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((_minPages : stdgo.GoUInt), ((512u32 : stdgo.GoUInt) - (((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _expect : (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>(2, 2, ...[(new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((_minPages * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr), (_minPages * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481), (new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((_minPages * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr), (_minPages * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>), _afterScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___setup_8604.T_testPageAllocScavenge___localname___setup_8604));
x.set(("ScavMultiple2" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((_minPages : stdgo.GoUInt), ((512u32 : stdgo.GoUInt) - (((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), ((512u32 : stdgo.GoUInt) - (((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _expect : (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>(3, 3, ...[(new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr), (((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481), (new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((_minPages * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr), (_minPages * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481), (new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((_minPages * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr), (_minPages * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>), _afterScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___setup_8604.T_testPageAllocScavenge___localname___setup_8604));
x.set(("ScavDiscontiguous" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (14u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((_minPages : stdgo.GoUInt), ((512u32 : stdgo.GoUInt) - (((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (14u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) : stdgo.GoUInt), ((512u32 : stdgo.GoUInt) - (((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _expect : (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>(3, 3, ...[(new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr), (((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481), (new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((4294967295 : stdgo.GoUIntptr), (((2 : stdgo.GoUIntptr) * _minPages : stdgo.GoUIntptr) * (8192 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481), (new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((4294967295 : stdgo.GoUIntptr), (0 : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>), _afterScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (14u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___setup_8604.T_testPageAllocScavenge___localname___setup_8604));
                x;
            } : stdgo.GoMap<stdgo.GoString, _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___setup_8604.T_testPageAllocScavenge___localname___setup_8604>);
            if (false) {
                _tests[("ScavAllVeryDiscontiguous" : stdgo.GoString)] = ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (4096u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (4096u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _expect : (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>(2, 2, ...[(new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((4294967295 : stdgo.GoUIntptr), (8388608 : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481), (new _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481((4294967295 : stdgo.GoUIntptr), (0 : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___test_8481.T_testPageAllocScavenge___localname___test_8481>), _afterScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (4096u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___setup_8604.T_testPageAllocScavenge___localname___setup_8604);
            };
            for (_name => _v in _tests) {
                var _v = (_v?.__copy__() : _internal.runtime_test.Runtime_test_T_testPageAllocScavenge___localname___setup_8604.T_testPageAllocScavenge___localname___setup_8604);
                _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _b = stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_v._beforeAlloc, _v._beforeScav);
                        {
                            var _a0 = _b;
                            __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_freePageAlloc.freePageAlloc(_a0));
                        };
                        for (_iter => _h in _v._expect) {
                            {
                                var _got = (_b.scavenge(_h._request) : stdgo.GoUIntptr);
                                if (_got != (_h._expect)) {
                                    _t.fatalf(("bad scavenge #%d: want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((_iter + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_h._expect), stdgo.Go.toInterface(_got));
                                };
                            };
                        };
                        var _want = stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_v._beforeAlloc, _v._afterScav);
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
