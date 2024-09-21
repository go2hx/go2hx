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
function testPageCacheFlush(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((false && stdgo._internal.testing.Testing_short.short() : Bool)) {
                _t.skip(stdgo.Go.toInterface(("skipping because virtual memory is limited; see #36210" : stdgo.GoString)));
            };
            var _bits64ToBitRanges = function(_bits:stdgo.GoUInt64, _base:stdgo.GoUInt):stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange> {
                var _ranges:stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                var __0 = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt), __1 = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
var _size = __1, _start = __0;
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (64 : stdgo.GoInt) : Bool), _i++, {
                        if ((_bits & (((1i64 : stdgo.GoUInt64) << _i : stdgo.GoUInt64)) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                            if (_size == ((0u32 : stdgo.GoUInt))) {
                                _start = ((_i : stdgo.GoUInt) + _base : stdgo.GoUInt);
                            };
                            _size++;
                        } else {
                            if (_size != ((0u32 : stdgo.GoUInt))) {
                                _ranges = (_ranges.__append__((new stdgo._internal.runtime.Runtime_BitRange.BitRange(_start, _size) : stdgo._internal.runtime.Runtime_BitRange.BitRange)));
                                _size = (0u32 : stdgo.GoUInt);
                            };
                        };
                    });
                };
                if (_size != ((0u32 : stdgo.GoUInt))) {
                    _ranges = (_ranges.__append__((new stdgo._internal.runtime.Runtime_BitRange.BitRange(_start, _size) : stdgo._internal.runtime.Runtime_BitRange.BitRange)));
                };
                return _ranges;
            };
            var _runTest = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _base:stdgo.GoUInt, _cache:stdgo.GoUInt64, _scav:stdgo.GoUInt64):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _beforeAlloc = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                        x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(1, 1, ...[(new stdgo._internal.runtime.Runtime_BitRange.BitRange(_base, (64u32 : stdgo.GoUInt)) : stdgo._internal.runtime.Runtime_BitRange.BitRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                        x;
                    } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>);
                    var _beforeScav = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                        x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, (new stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>));
                        x;
                    } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>);
                    var _b = stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_beforeAlloc, _beforeScav);
                    {
                        var _a0 = _b;
                        __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_freePageAlloc.freePageAlloc(_a0));
                    };
                    var _c = (stdgo._internal.runtime.Runtime_newPageCache.newPageCache(stdgo._internal.runtime.Runtime_pageBase.pageBase(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, _base), _cache, _scav)?.__copy__() : stdgo._internal.runtime.Runtime_PageCache.PageCache);
                    _c.flush(_b);
                    if (!_c.empty()) {
                        _t.errorf(("pageCache flush did not clear cache" : stdgo.GoString));
                    };
                    var _afterAlloc = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                        x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, _bits64ToBitRanges((-1 ^ _cache), _base));
                        x;
                    } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>);
                    var _afterScav = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
                        x.set(stdgo._internal.runtime.Runtime_baseChunkIdx.baseChunkIdx, _bits64ToBitRanges(_scav, _base));
                        x;
                    } : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>);
                    var _want = stdgo._internal.runtime.Runtime_newPageAlloc.newPageAlloc(_afterAlloc, _afterScav);
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
            };
            _runTest(_t, (0u32 : stdgo.GoUInt), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _runTest(_t, (0u32 : stdgo.GoUInt), (-1i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                    var _base = ((stdgo._internal.math.rand.Rand_intn.intn((8 : stdgo.GoInt)) : stdgo.GoUInt) * (64u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    var _cache = (stdgo._internal.math.rand.Rand_uint64.uint64() : stdgo.GoUInt64);
                    var _scav = (stdgo._internal.math.rand.Rand_uint64.uint64() & _cache : stdgo.GoUInt64);
                    _runTest(_t, _base, _cache, _scav);
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
