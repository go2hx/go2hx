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
function testReadMetrics(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.runtime.Runtime_gc.gc();
            var _limit = ((536870912i64 : stdgo.GoInt64) : stdgo.GoInt64);
            var _oldLimit = (stdgo._internal.runtime.debug.Debug_setMemoryLimit.setMemoryLimit(_limit) : stdgo.GoInt64);
            {
                var _a0 = _oldLimit;
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setMemoryLimit.setMemoryLimit(_a0));
            };
            var _gcPercent = (99 : stdgo.GoInt);
            var _oldGCPercent = (stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_gcPercent) : stdgo.GoInt);
            {
                var _a0 = _oldGCPercent;
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            var _mstats:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
            var __tmp__ = _internal.runtime_test.Runtime_test__prepareAllMetricsSamples._prepareAllMetricsSamples(), __6:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.metrics.Metrics_Description.Description> = __tmp__._0, _samples:stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample> = __tmp__._1;
            stdgo._internal.runtime.Runtime_readMetricsSlow.readMetricsSlow((stdgo.Go.setRef(_mstats) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>), (stdgo.Go.toInterface((stdgo.Go.setRef(_samples[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (_samples.length), _samples.capacity);
            var _checkUint64 = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _m:stdgo.GoString, _got:stdgo.GoUInt64, _want:stdgo.GoUInt64):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _t.helper();
                    if (_got != (_want)) {
                        _t.errorf(("metric %q: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
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
            };
            var _allocsBySize:stdgo.Ref<stdgo._internal.runtime.metrics.Metrics_Float64Histogram.Float64Histogram> = (null : stdgo.Ref<stdgo._internal.runtime.metrics.Metrics_Float64Histogram.Float64Histogram>);
            var _tinyAllocs:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _frees = __1, _mallocs = __0;
            for (_i => _ in _samples) {
                {
                    var _name = (_samples[(_i : stdgo.GoInt)].name?.__copy__() : stdgo.GoString);
                    {
                        final __value__ = _name;
                        if (__value__ == (("/cgo/go-to-c-calls:calls" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), (stdgo._internal.runtime.Runtime_numCgoCall.numCgoCall() : stdgo.GoUInt64));
                        } else if (__value__ == (("/memory/classes/heap/free:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), (_mstats.heapIdle - _mstats.heapReleased : stdgo.GoUInt64));
                        } else if (__value__ == (("/memory/classes/heap/released:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.heapReleased);
                        } else if (__value__ == (("/memory/classes/heap/objects:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.heapAlloc);
                        } else if (__value__ == (("/memory/classes/heap/unused:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), (_mstats.heapInuse - _mstats.heapAlloc : stdgo.GoUInt64));
                        } else if (__value__ == (("/memory/classes/heap/stacks:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.stackInuse);
                        } else if (__value__ == (("/memory/classes/metadata/mcache/free:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), (_mstats.mcacheSys - _mstats.mcacheInuse : stdgo.GoUInt64));
                        } else if (__value__ == (("/memory/classes/metadata/mcache/inuse:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.mcacheInuse);
                        } else if (__value__ == (("/memory/classes/metadata/mspan/free:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), (_mstats.mspanSys - _mstats.mspanInuse : stdgo.GoUInt64));
                        } else if (__value__ == (("/memory/classes/metadata/mspan/inuse:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.mspanInuse);
                        } else if (__value__ == (("/memory/classes/metadata/other:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.gcsys);
                        } else if (__value__ == (("/memory/classes/os-stacks:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), (_mstats.stackSys - _mstats.stackInuse : stdgo.GoUInt64));
                        } else if (__value__ == (("/memory/classes/other:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.otherSys);
                        } else if (__value__ == (("/memory/classes/profiling/buckets:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.buckHashSys);
                        } else if (__value__ == (("/memory/classes/total:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.sys);
                        } else if (__value__ == (("/gc/heap/allocs-by-size:bytes" : stdgo.GoString))) {
                            var _hist = _samples[(_i : stdgo.GoInt)].value.float64Histogram();
                            for (_i => _sc in (_mstats.bySize.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>)) {
                                {
                                    var __0 = (_hist.buckets[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), __1 = ((_sc.size + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoFloat64);
var _s = __1, _b = __0;
                                    if (_b != (_s)) {
                                        _t.errorf(("bucket does not match size class: got %f, want %f" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_s));
                                        continue;
                                    };
                                };
                                {
                                    var __0 = (_hist.counts[(_i : stdgo.GoInt)] : stdgo.GoUInt64), __1 = (_sc.mallocs : stdgo.GoUInt64);
var _m = __1, _c = __0;
                                    if (_c != (_m)) {
                                        _t.errorf(("histogram counts do not much BySize for class %d: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_m));
                                    };
                                };
                            };
                            _allocsBySize = _hist;
                        } else if (__value__ == (("/gc/heap/allocs:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.totalAlloc);
                        } else if (__value__ == (("/gc/heap/frees-by-size:bytes" : stdgo.GoString))) {
                            var _hist = _samples[(_i : stdgo.GoInt)].value.float64Histogram();
                            for (_i => _sc in (_mstats.bySize.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<{ var size : stdgo.GoUInt32; var mallocs : stdgo.GoUInt64; var frees : stdgo.GoUInt64; }>)) {
                                {
                                    var __0 = (_hist.buckets[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), __1 = ((_sc.size + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoFloat64);
var _s = __1, _b = __0;
                                    if (_b != (_s)) {
                                        _t.errorf(("bucket does not match size class: got %f, want %f" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_s));
                                        continue;
                                    };
                                };
                                {
                                    var __0 = (_hist.counts[(_i : stdgo.GoInt)] : stdgo.GoUInt64), __1 = (_sc.frees : stdgo.GoUInt64);
var _f = __1, _c = __0;
                                    if (_c != (_f)) {
                                        _t.errorf(("histogram counts do not match BySize for class %d: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_f));
                                    };
                                };
                            };
                        } else if (__value__ == (("/gc/heap/frees:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), (_mstats.totalAlloc - _mstats.heapAlloc : stdgo.GoUInt64));
                        } else if (__value__ == (("/gc/heap/tiny/allocs:objects" : stdgo.GoString))) {
                            _tinyAllocs = _samples[(_i : stdgo.GoInt)].value.uint64();
                        } else if (__value__ == (("/gc/heap/allocs:objects" : stdgo.GoString))) {
                            _mallocs = _samples[(_i : stdgo.GoInt)].value.uint64();
                        } else if (__value__ == (("/gc/heap/frees:objects" : stdgo.GoString))) {
                            _frees = _samples[(_i : stdgo.GoInt)].value.uint64();
                        } else if (__value__ == (("/gc/heap/live:bytes" : stdgo.GoString))) {
                            {
                                var _live = (_samples[(_i : stdgo.GoInt)].value.uint64() : stdgo.GoUInt64);
                                if ((_live > _mstats.heapSys : Bool)) {
                                    _t.errorf(("live bytes: %d > heap sys: %d" : stdgo.GoString), stdgo.Go.toInterface(_live), stdgo.Go.toInterface(_mstats.heapSys));
                                } else if (_live == ((0i64 : stdgo.GoUInt64))) {
                                    _t.error(stdgo.Go.toInterface(("live bytes is 0" : stdgo.GoString)));
                                };
                            };
                        } else if (__value__ == (("/gc/gomemlimit:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), (_limit : stdgo.GoUInt64));
                        } else if (__value__ == (("/gc/heap/objects:objects" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.heapObjects);
                        } else if (__value__ == (("/gc/heap/goal:bytes" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), _mstats.nextGC);
                        } else if (__value__ == (("/gc/gogc:percent" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), (_gcPercent : stdgo.GoUInt64));
                        } else if (__value__ == (("/gc/cycles/automatic:gc-cycles" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), ((_mstats.numGC - _mstats.numForcedGC : stdgo.GoUInt32) : stdgo.GoUInt64));
                        } else if (__value__ == (("/gc/cycles/forced:gc-cycles" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), (_mstats.numForcedGC : stdgo.GoUInt64));
                        } else if (__value__ == (("/gc/cycles/total:gc-cycles" : stdgo.GoString))) {
                            _checkUint64(_t, _name?.__copy__(), _samples[(_i : stdgo.GoInt)].value.uint64(), (_mstats.numGC : stdgo.GoUInt64));
                        };
                    };
                };
            };
            var _nonTinyAllocs = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            for (__7 => _c in _allocsBySize.counts) {
                _nonTinyAllocs = (_nonTinyAllocs + (_c) : stdgo.GoUInt64);
            };
            _checkUint64(_t, ("/gc/heap/tiny/allocs:objects" : stdgo.GoString), _tinyAllocs, (_mstats.mallocs - _nonTinyAllocs : stdgo.GoUInt64));
            _checkUint64(_t, ("/gc/heap/allocs:objects" : stdgo.GoString), _mallocs, (_mstats.mallocs - _tinyAllocs : stdgo.GoUInt64));
            _checkUint64(_t, ("/gc/heap/frees:objects" : stdgo.GoString), _frees, (_mstats.frees - _tinyAllocs : stdgo.GoUInt64));
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
