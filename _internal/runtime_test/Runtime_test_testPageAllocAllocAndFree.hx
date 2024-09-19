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
function testPageAllocAllocAndFree(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((false && stdgo._internal.testing.Testing_short.short() : Bool)) {
                _t.skip(stdgo.Go.toInterface(("skipping because virtual memory is limited; see #36210" : stdgo.GoString)));
            };
            {};
            var _tests = ({
                final x = new stdgo.GoMap.GoStringMap<_internal.runtime_test.Runtime_test_T__struct_23.T__struct_23>();
                x.__defaultValue__ = () -> ({ _init : (null : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _hits : (null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004>) } : _internal.runtime_test.Runtime_test_T__struct_23.T__struct_23);
                x.set(("Chunks8" : stdgo.GoString), ({ _init : ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                    x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (1u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (2u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (3u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (4u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (5u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (6u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
x.set((stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + (7u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx), (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                    x;
                } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>), _hits : (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004>(9, 9, ...[(new _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004(true, (4096 : stdgo.GoUIntptr), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))) : _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004), (new _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004(false, (4096 : stdgo.GoUIntptr), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))) : _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004), (new _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004(true, (4096 : stdgo.GoUIntptr), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))) : _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004), (new _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004(false, (4096 : stdgo.GoUIntptr), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))) : _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004), (new _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004(true, (4096 : stdgo.GoUIntptr), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))) : _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004), (new _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004(false, (4096 : stdgo.GoUIntptr), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))) : _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004), (new _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004(true, (1 : stdgo.GoUIntptr), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))) : _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004), (new _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004(false, (1 : stdgo.GoUIntptr), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))) : _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004), (new _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004(true, (4096 : stdgo.GoUIntptr), stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (0u32 : stdgo.GoUInt))) : _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocAllocAndFree___localname___hit_32004.T_testPageAllocAllocAndFree___localname___hit_32004>) } : _internal.runtime_test.Runtime_test_T__struct_23.T__struct_23));
                x;
            } : stdgo.GoMap<stdgo.GoString, _internal.runtime_test.Runtime_test_T__struct_23.T__struct_23>);
            for (_name => _v in _tests) {
                var _v = ({
                    final x = _v;
                    ({ _init : x._init, _hits : x._hits } : _internal.runtime_test.Runtime_test_T__struct_23.T__struct_23);
                } : _internal.runtime_test.Runtime_test_T__struct_23.T__struct_23);
                _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _b = stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_v._init, (null : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>));
                        {
                            var _a0 = _b;
                            __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_freePageAlloc.freePageAlloc(_a0));
                        };
                        for (_iter => _i in _v._hits) {
                            if (_i._alloc) {
                                {
                                    var __tmp__ = _b.alloc(_i._npages), _a:stdgo.GoUIntptr = __tmp__._0, __18:stdgo.GoUIntptr = __tmp__._1;
                                    if (_a != (_i._base)) {
                                        _t.fatalf(("bad alloc #%d: want 0x%x, got 0x%x" : stdgo.GoString), stdgo.Go.toInterface((_iter + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_i._base), stdgo.Go.toInterface(_a));
                                    };
                                };
                            } else {
                                _b.free(_i._base, _i._npages);
                            };
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
