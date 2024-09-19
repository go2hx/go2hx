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
function testPageAllocAllocToCache(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((false && stdgo._internal.testing.Testing_short.short() : Bool)) {
                _t.skip(stdgo.Go.toInterface(("skipping because virtual memory is limited; see #36210" : stdgo.GoString)));
            };
            {};
            var _tests = ({
                final x = new stdgo.GoMap.GoStringMap<_internal.runtime_test.Runtime_test_T_testPageAllocAllocToCache___localname___test_6055.T_testPageAllocAllocToCache___localname___test_6055>();
                x.__defaultValue__ = () -> ({} : _internal.runtime_test.Runtime_test_T_testPageAllocAllocToCache___localname___test_6055.T_testPageAllocAllocToCache___localname___test_6055);
                x.set(("AllFree" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(2, 2, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((1u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((64u32 : stdgo.GoUInt), (64u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _hits : (new stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>(4, 4, ...[stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), (-1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64))?.__copy__(), stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (64u32 : stdgo.GoUInt)), (-1i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64))?.__copy__(), stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (128u32 : stdgo.GoUInt)), (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))?.__copy__(), stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (192u32 : stdgo.GoUInt)), (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_PageCache.PageCache)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>), _afterAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (256u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocAllocToCache___localname___test_6055.T_testPageAllocAllocToCache___localname___test_6055));
x.set(("ManyArena" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (448u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _hits : (new stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>(1, 1, ...[stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (448u32 : stdgo.GoUInt)), (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_PageCache.PageCache)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>), _afterAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocAllocToCache___localname___test_6055.T_testPageAllocAllocToCache___localname___test_6055));
x.set(("NotContiguous" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (255u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (0u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (255u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((31u32 : stdgo.GoUInt), (67u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _hits : (new stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>(1, 1, ...[stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (255u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)), (-1i64 : stdgo.GoUInt64), (-2147483648i64 : stdgo.GoUInt64))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_PageCache.PageCache)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>), _afterAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (255u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (64u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _afterScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (255u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((64u32 : stdgo.GoUInt), (34u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocAllocToCache___localname___test_6055.T_testPageAllocAllocToCache___localname___test_6055));
x.set(("First" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(3, 3, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (32u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((33u32 : stdgo.GoUInt), (31u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((96u32 : stdgo.GoUInt), (32u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(3, 3, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((1u32 : stdgo.GoUInt), (4u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((31u32 : stdgo.GoUInt), (5u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((66u32 : stdgo.GoUInt), (2u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _hits : (new stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>(2, 2, ...[stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), (4294967296i64 : stdgo.GoUInt64), (4294967296i64 : stdgo.GoUInt64))?.__copy__(), stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (64u32 : stdgo.GoUInt)), (4294967295i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_PageCache.PageCache)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>), _afterAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (128u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocAllocToCache___localname___test_6055.T_testPageAllocAllocToCache___localname___test_6055));
x.set(("Fail" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _hits : (new stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>(3, 3, ...[stdgo._internal.runtime.Runtime_newPageCache.newPageCache((0 : stdgo.GoUIntptr), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))?.__copy__(), stdgo._internal.runtime.Runtime_newPageCache.newPageCache((0 : stdgo.GoUIntptr), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))?.__copy__(), stdgo._internal.runtime.Runtime_newPageCache.newPageCache((0 : stdgo.GoUIntptr), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))?.__copy__()].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_PageCache.PageCache)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>), _afterAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocAllocToCache___localname___test_6055.T_testPageAllocAllocToCache___localname___test_6055));
x.set(("RetainScavBits" : stdgo.GoString), ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(2, 2, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((10u32 : stdgo.GoUInt), (2u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(2, 2, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (4u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((11u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _hits : (new stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>(1, 1, ...[stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt)), (-3074i64 : stdgo.GoUInt64), (14i64 : stdgo.GoUInt64))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_PageCache.PageCache)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>), _afterAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (64u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _afterScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(2, 2, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange), (new stdgo._internal.runtime.Runtime_BitRange.BitRange((11u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocAllocToCache___localname___test_6055.T_testPageAllocAllocToCache___localname___test_6055));
                x;
            } : stdgo.GoMap<stdgo.GoString, _internal.runtime_test.Runtime_test_T_testPageAllocAllocToCache___localname___test_6055.T_testPageAllocAllocToCache___localname___test_6055>);
            if (false) {
                {};
                var _sumsPerPhysPage = ((stdgo._internal.runtime.Runtime_physPageSize.physPageSize / (8 : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                var _baseChunkIdx = (stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx & ((((_sumsPerPhysPage - (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx)) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                _tests[("DiscontiguousMappedSumBoundary" : stdgo.GoString)] = ({ _beforeAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(((_baseChunkIdx + _sumsPerPhysPage : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) - (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (511u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((_baseChunkIdx + (1048576u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((1u32 : stdgo.GoUInt), (511u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _beforeScav : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(((_baseChunkIdx + _sumsPerPhysPage : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) - (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((_baseChunkIdx + (1048576u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _hits : (new stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>(3, 3, ...[stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase(((_baseChunkIdx + _sumsPerPhysPage : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) - (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (448u32 : stdgo.GoUInt)), (-9223372036854775808i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))?.__copy__(), stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase((_baseChunkIdx + (1048576u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (0u32 : stdgo.GoUInt)), (1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))?.__copy__(), stdgo._internal.runtime.Runtime_newPageCache.newPageCache((0 : stdgo.GoUIntptr), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))?.__copy__()].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_PageCache.PageCache)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_PageCache.PageCache>), _afterAlloc : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(((_baseChunkIdx + _sumsPerPhysPage : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) - (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((_baseChunkIdx + (1048576u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>) } : _internal.runtime_test.Runtime_test_T_testPageAllocAllocToCache___localname___test_6055.T_testPageAllocAllocToCache___localname___test_6055);
            };
            for (_name => _v in _tests) {
                var _v = (_v?.__copy__() : _internal.runtime_test.Runtime_test_T_testPageAllocAllocToCache___localname___test_6055.T_testPageAllocAllocToCache___localname___test_6055);
                _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _b = stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_v._beforeAlloc, _v._beforeScav);
                        {
                            var _a0 = _b;
                            __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_freePageAlloc.freePageAlloc(_a0));
                        };
                        for (__14 => _expect in _v._hits) {
                            _internal.runtime_test.Runtime_test__checkPageCache._checkPageCache(_t, _b.allocToCache()?.__copy__(), _expect?.__copy__());
                            if (_t.failed()) {
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
                            };
                        };
                        var _want = stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_v._afterAlloc, _v._afterScav);
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
