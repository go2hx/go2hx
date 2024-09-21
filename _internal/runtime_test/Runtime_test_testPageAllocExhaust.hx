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
function testPageAllocExhaust(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((false && stdgo._internal.testing.Testing_short.short() : Bool)) {
                _t.skip(stdgo.Go.toInterface(("skipping because virtual memory is limited; see #36210" : stdgo.GoString)));
            };
            for (__6 => _npages in (new stdgo.Slice<stdgo.GoUIntptr>(12, 12, ...[
(1 : stdgo.GoUIntptr),
(2 : stdgo.GoUIntptr),
(3 : stdgo.GoUIntptr),
(4 : stdgo.GoUIntptr),
(5 : stdgo.GoUIntptr),
(8 : stdgo.GoUIntptr),
(16 : stdgo.GoUIntptr),
(64 : stdgo.GoUIntptr),
(1024 : stdgo.GoUIntptr),
(1025 : stdgo.GoUIntptr),
(2048 : stdgo.GoUIntptr),
(2049 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>)) {
                var _npages = (_npages : stdgo.GoUIntptr);
                _t.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_npages))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _bDesc = ({
                            final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>);
                        {
                            var _i = ((0u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                            stdgo.Go.cfor((_i < (4u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : Bool), _i++, {
                                _bDesc[(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + _i : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx)] = (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                            });
                        };
                        var _b = stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_bDesc, (null : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>));
                        {
                            var _a0 = _b;
                            __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_freePageAlloc.freePageAlloc(_a0));
                        };
                        var _nAlloc = ((2048 : stdgo.GoInt) / (_npages : stdgo.GoInt) : stdgo.GoInt);
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _nAlloc : Bool), _i++, {
                                var _addr = (stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, ((_i : stdgo.GoUInt) * (_npages : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUIntptr);
                                {
                                    var __tmp__ = _b.alloc(_npages), _a:stdgo.GoUIntptr = __tmp__._0, __19:stdgo.GoUIntptr = __tmp__._1;
                                    if (_a != (_addr)) {
                                        _t.fatalf(("bad alloc #%d: want 0x%x, got 0x%x" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_addr), stdgo.Go.toInterface(_a));
                                    };
                                };
                            });
                        };
                        {
                            var __tmp__ = _b.alloc(_npages), _a:stdgo.GoUIntptr = __tmp__._0, __19:stdgo.GoUIntptr = __tmp__._1;
                            if (_a != ((0 : stdgo.GoUIntptr))) {
                                _t.fatalf(("bad alloc #%d: want 0, got 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_nAlloc), stdgo.Go.toInterface(_a));
                            };
                        };
                        var _allocPages = (_nAlloc * (_npages : stdgo.GoInt) : stdgo.GoInt);
                        var _wantDesc = ({
                            final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>);
                        {
                            var _i = ((0u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
                            stdgo.Go.cfor((_i < (4u32 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx) : Bool), _i++, {
                                if ((_allocPages >= (512 : stdgo.GoInt) : Bool)) {
                                    _wantDesc[(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + _i : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx)] = (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (512u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                                    _allocPages = (_allocPages - ((512 : stdgo.GoInt)) : stdgo.GoInt);
                                } else if ((_allocPages > (0 : stdgo.GoInt) : Bool)) {
                                    _wantDesc[(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + _i : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx)] = (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange((0u32 : stdgo.GoUInt), (_allocPages : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                                    _allocPages = (0 : stdgo.GoInt);
                                } else {
                                    _wantDesc[(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx + _i : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx)] = (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                                };
                            });
                        };
                        var _want = stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_wantDesc, (null : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>));
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
