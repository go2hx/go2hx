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
function testReadMetricsConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.runtime.Runtime_gc.gc();
        stdgo._internal.runtime.Runtime_gc.gc();
        stdgo._internal.runtime.Runtime_gc.gc();
        var _oldmaxprocs = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((10 : stdgo.GoInt)) : stdgo.GoInt);
        stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
        stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_oldmaxprocs);
        var __tmp__ = _internal.runtime_test.Runtime_test__prepareAllMetricsSamples._prepareAllMetricsSamples(), _descs:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.metrics.Metrics_Description.Description> = __tmp__._0, _samples:stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample> = __tmp__._1;
        stdgo._internal.runtime.metrics.Metrics_read.read(_samples);
        var _totalVirtual:_internal.runtime_test.Runtime_test_T__struct_16.T__struct_16 = ({ _got : (0 : stdgo.GoUInt64), _want : (0 : stdgo.GoUInt64) } : _internal.runtime_test.Runtime_test_T__struct_16.T__struct_16);
        var _objects:_internal.runtime_test.Runtime_test_T__struct_17.T__struct_17 = ({ _alloc : (null : stdgo.Ref<stdgo._internal.runtime.metrics.Metrics_Float64Histogram.Float64Histogram>), _free : (null : stdgo.Ref<stdgo._internal.runtime.metrics.Metrics_Float64Histogram.Float64Histogram>), _allocs : (0 : stdgo.GoUInt64), _frees : (0 : stdgo.GoUInt64), _allocdBytes : (0 : stdgo.GoUInt64), _freedBytes : (0 : stdgo.GoUInt64), _total : (0 : stdgo.GoUInt64), _totalBytes : (0 : stdgo.GoUInt64) } : _internal.runtime_test.Runtime_test_T__struct_17.T__struct_17);
        var _gc:_internal.runtime_test.Runtime_test_T__struct_18.T__struct_18 = ({ _numGC : (0 : stdgo.GoUInt64), _pauses : (0 : stdgo.GoUInt64) } : _internal.runtime_test.Runtime_test_T__struct_18.T__struct_18);
        var _totalScan:_internal.runtime_test.Runtime_test_T__struct_16.T__struct_16 = ({ _got : (0 : stdgo.GoUInt64), _want : (0 : stdgo.GoUInt64) } : _internal.runtime_test.Runtime_test_T__struct_16.T__struct_16);
        var _cpu:_internal.runtime_test.Runtime_test_T__struct_19.T__struct_19 = ({ _gcAssist : (0 : stdgo.GoFloat64), _gcDedicated : (0 : stdgo.GoFloat64), _gcIdle : (0 : stdgo.GoFloat64), _gcPause : (0 : stdgo.GoFloat64), _gcTotal : (0 : stdgo.GoFloat64), _idle : (0 : stdgo.GoFloat64), _user : (0 : stdgo.GoFloat64), _scavengeAssist : (0 : stdgo.GoFloat64), _scavengeBg : (0 : stdgo.GoFloat64), _scavengeTotal : (0 : stdgo.GoFloat64), _total : (0 : stdgo.GoFloat64) } : _internal.runtime_test.Runtime_test_T__struct_19.T__struct_19);
        for (_i => _ in _samples) {
            var _kind = (_samples[(_i : stdgo.GoInt)].value.kind() : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind);
            {
                var _want = ((_descs[_samples[(_i : stdgo.GoInt)].name] ?? ({} : stdgo._internal.runtime.metrics.Metrics_Description.Description)).kind : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind);
                if (_kind != (_want)) {
                    _t.errorf(("supported metric %q has unexpected kind: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_samples[(_i : stdgo.GoInt)].name), stdgo.Go.toInterface(_kind), stdgo.Go.toInterface(_want));
                    continue;
                };
            };
            if (((_samples[(_i : stdgo.GoInt)].name != ("/memory/classes/total:bytes" : stdgo.GoString)) && stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_samples[(_i : stdgo.GoInt)].name?.__copy__(), ("/memory/classes" : stdgo.GoString)) : Bool)) {
                var _v = (_samples[(_i : stdgo.GoInt)].value.uint64() : stdgo.GoUInt64);
                _totalVirtual._want = (_totalVirtual._want + (_v) : stdgo.GoUInt64);
                if (((_v : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool)) {
                    _t.errorf(("%q has high/negative value: %d" : stdgo.GoString), stdgo.Go.toInterface(_samples[(_i : stdgo.GoInt)].name), stdgo.Go.toInterface(_v));
                };
            };
            {
                final __value__ = _samples[(_i : stdgo.GoInt)].name;
                if (__value__ == (("/cpu/classes/gc/mark/assist:cpu-seconds" : stdgo.GoString))) {
                    _cpu._gcAssist = _samples[(_i : stdgo.GoInt)].value.float64();
                } else if (__value__ == (("/cpu/classes/gc/mark/dedicated:cpu-seconds" : stdgo.GoString))) {
                    _cpu._gcDedicated = _samples[(_i : stdgo.GoInt)].value.float64();
                } else if (__value__ == (("/cpu/classes/gc/mark/idle:cpu-seconds" : stdgo.GoString))) {
                    _cpu._gcIdle = _samples[(_i : stdgo.GoInt)].value.float64();
                } else if (__value__ == (("/cpu/classes/gc/pause:cpu-seconds" : stdgo.GoString))) {
                    _cpu._gcPause = _samples[(_i : stdgo.GoInt)].value.float64();
                } else if (__value__ == (("/cpu/classes/gc/total:cpu-seconds" : stdgo.GoString))) {
                    _cpu._gcTotal = _samples[(_i : stdgo.GoInt)].value.float64();
                } else if (__value__ == (("/cpu/classes/idle:cpu-seconds" : stdgo.GoString))) {
                    _cpu._idle = _samples[(_i : stdgo.GoInt)].value.float64();
                } else if (__value__ == (("/cpu/classes/scavenge/assist:cpu-seconds" : stdgo.GoString))) {
                    _cpu._scavengeAssist = _samples[(_i : stdgo.GoInt)].value.float64();
                } else if (__value__ == (("/cpu/classes/scavenge/background:cpu-seconds" : stdgo.GoString))) {
                    _cpu._scavengeBg = _samples[(_i : stdgo.GoInt)].value.float64();
                } else if (__value__ == (("/cpu/classes/scavenge/total:cpu-seconds" : stdgo.GoString))) {
                    _cpu._scavengeTotal = _samples[(_i : stdgo.GoInt)].value.float64();
                } else if (__value__ == (("/cpu/classes/total:cpu-seconds" : stdgo.GoString))) {
                    _cpu._total = _samples[(_i : stdgo.GoInt)].value.float64();
                } else if (__value__ == (("/cpu/classes/user:cpu-seconds" : stdgo.GoString))) {
                    _cpu._user = _samples[(_i : stdgo.GoInt)].value.float64();
                } else if (__value__ == (("/memory/classes/total:bytes" : stdgo.GoString))) {
                    _totalVirtual._got = _samples[(_i : stdgo.GoInt)].value.uint64();
                } else if (__value__ == (("/memory/classes/heap/objects:bytes" : stdgo.GoString))) {
                    _objects._totalBytes = _samples[(_i : stdgo.GoInt)].value.uint64();
                } else if (__value__ == (("/gc/heap/objects:objects" : stdgo.GoString))) {
                    _objects._total = _samples[(_i : stdgo.GoInt)].value.uint64();
                } else if (__value__ == (("/gc/heap/allocs:bytes" : stdgo.GoString))) {
                    _objects._allocdBytes = _samples[(_i : stdgo.GoInt)].value.uint64();
                } else if (__value__ == (("/gc/heap/allocs:objects" : stdgo.GoString))) {
                    _objects._allocs = _samples[(_i : stdgo.GoInt)].value.uint64();
                } else if (__value__ == (("/gc/heap/allocs-by-size:bytes" : stdgo.GoString))) {
                    _objects._alloc = _samples[(_i : stdgo.GoInt)].value.float64Histogram();
                } else if (__value__ == (("/gc/heap/frees:bytes" : stdgo.GoString))) {
                    _objects._freedBytes = _samples[(_i : stdgo.GoInt)].value.uint64();
                } else if (__value__ == (("/gc/heap/frees:objects" : stdgo.GoString))) {
                    _objects._frees = _samples[(_i : stdgo.GoInt)].value.uint64();
                } else if (__value__ == (("/gc/heap/frees-by-size:bytes" : stdgo.GoString))) {
                    _objects._free = _samples[(_i : stdgo.GoInt)].value.float64Histogram();
                } else if (__value__ == (("/gc/cycles:gc-cycles" : stdgo.GoString))) {
                    _gc._numGC = _samples[(_i : stdgo.GoInt)].value.uint64();
                } else if (__value__ == (("/gc/pauses:seconds" : stdgo.GoString))) {
                    var _h = _samples[(_i : stdgo.GoInt)].value.float64Histogram();
                    _gc._pauses = (0i64 : stdgo.GoUInt64);
                    for (_i => _ in _h.counts) {
                        _gc._pauses = (_gc._pauses + (_h.counts[(_i : stdgo.GoInt)]) : stdgo.GoUInt64);
                    };
                } else if (__value__ == (("/gc/scan/heap:bytes" : stdgo.GoString))) {
                    _totalScan._want = (_totalScan._want + (_samples[(_i : stdgo.GoInt)].value.uint64()) : stdgo.GoUInt64);
                } else if (__value__ == (("/gc/scan/globals:bytes" : stdgo.GoString))) {
                    _totalScan._want = (_totalScan._want + (_samples[(_i : stdgo.GoInt)].value.uint64()) : stdgo.GoUInt64);
                } else if (__value__ == (("/gc/scan/stack:bytes" : stdgo.GoString))) {
                    _totalScan._want = (_totalScan._want + (_samples[(_i : stdgo.GoInt)].value.uint64()) : stdgo.GoUInt64);
                } else if (__value__ == (("/gc/scan/total:bytes" : stdgo.GoString))) {
                    _totalScan._got = _samples[(_i : stdgo.GoInt)].value.uint64();
                } else if (__value__ == (("/sched/gomaxprocs:threads" : stdgo.GoString))) {
                    {
                        var __0 = (_samples[(_i : stdgo.GoInt)].value.uint64() : stdgo.GoUInt64), __1 = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((-1 : stdgo.GoInt)) : stdgo.GoUInt64);
var _want = __1, _got = __0;
                        if (_got != (_want)) {
                            _t.errorf(("gomaxprocs doesn\'t match runtime.GOMAXPROCS: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                        };
                    };
                } else if (__value__ == (("/sched/goroutines:goroutines" : stdgo.GoString))) {
                    if ((_samples[(_i : stdgo.GoInt)].value.uint64() < (1i64 : stdgo.GoUInt64) : Bool)) {
                        _t.error(stdgo.Go.toInterface(("number of goroutines is less than one" : stdgo.GoString)));
                    };
                };
            };
        };
        if (false) {
            if ((((_cpu._gcDedicated <= (0 : stdgo.GoFloat64) : Bool) && (_cpu._gcAssist <= (0 : stdgo.GoFloat64) : Bool) : Bool) && (_cpu._gcIdle <= (0 : stdgo.GoFloat64) : Bool) : Bool)) {
                _t.errorf(("found no time spent on GC work: %#v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cpu)));
            };
            if ((_cpu._gcPause <= (0 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("found no GC pauses: %f" : stdgo.GoString), stdgo.Go.toInterface(_cpu._gcPause));
            };
            if ((_cpu._idle <= (0 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("found no idle time: %f" : stdgo.GoString), stdgo.Go.toInterface(_cpu._idle));
            };
            {
                var _total = (((_cpu._gcDedicated + _cpu._gcAssist : stdgo.GoFloat64) + _cpu._gcIdle : stdgo.GoFloat64) + _cpu._gcPause : stdgo.GoFloat64);
                if (!_internal.runtime_test.Runtime_test__withinEpsilon._withinEpsilon(_cpu._gcTotal, _total, (0.01 : stdgo.GoFloat64))) {
                    _t.errorf(("calculated total GC CPU not within 1%% of sampled total: %f vs. %f" : stdgo.GoString), stdgo.Go.toInterface(_total), stdgo.Go.toInterface(_cpu._gcTotal));
                };
            };
            {
                var _total = (_cpu._scavengeAssist + _cpu._scavengeBg : stdgo.GoFloat64);
                if (!_internal.runtime_test.Runtime_test__withinEpsilon._withinEpsilon(_cpu._scavengeTotal, _total, (0.01 : stdgo.GoFloat64))) {
                    _t.errorf(("calculated total scavenge CPU not within 1%% of sampled total: %f vs. %f" : stdgo.GoString), stdgo.Go.toInterface(_total), stdgo.Go.toInterface(_cpu._scavengeTotal));
                };
            };
            if ((_cpu._total <= (0 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("found no total CPU time passed" : stdgo.GoString));
            };
            if ((_cpu._user <= (0 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("found no user time passed" : stdgo.GoString));
            };
            {
                var _total = (((_cpu._gcTotal + _cpu._scavengeTotal : stdgo.GoFloat64) + _cpu._user : stdgo.GoFloat64) + _cpu._idle : stdgo.GoFloat64);
                if (!_internal.runtime_test.Runtime_test__withinEpsilon._withinEpsilon(_cpu._total, _total, (0.02 : stdgo.GoFloat64))) {
                    _t.errorf(("calculated total CPU not within 2%% of sampled total: %f vs. %f" : stdgo.GoString), stdgo.Go.toInterface(_total), stdgo.Go.toInterface(_cpu._total));
                };
            };
        };
        if (_totalVirtual._got != (_totalVirtual._want)) {
            _t.errorf(("\"/memory/classes/total:bytes\" does not match sum of /memory/classes/**: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_totalVirtual._got), stdgo.Go.toInterface(_totalVirtual._want));
        };
        {
            var __0 = (_objects._allocs - _objects._frees : stdgo.GoUInt64), __1 = (_objects._total : stdgo.GoUInt64);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("mismatch between object alloc/free tallies and total: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = (_objects._allocdBytes - _objects._freedBytes : stdgo.GoUInt64), __1 = (_objects._totalBytes : stdgo.GoUInt64);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("mismatch between object alloc/free tallies and total: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = (_objects._alloc.buckets.length : stdgo.GoInt), __1 = (_objects._alloc.counts.length : stdgo.GoInt);
var _c = __1, _b = __0;
            if (_b != ((_c + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                _t.errorf(("allocs-by-size has wrong bucket or counts length: %d buckets, %d counts" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_c));
            };
        };
        {
            var __0 = (_objects._free.buckets.length : stdgo.GoInt), __1 = (_objects._free.counts.length : stdgo.GoInt);
var _c = __1, _b = __0;
            if (_b != ((_c + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                _t.errorf(("frees-by-size has wrong bucket or counts length: %d buckets, %d counts" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_c));
            };
        };
        if ((_objects._alloc.buckets.length) != ((_objects._free.buckets.length))) {
            _t.error(stdgo.Go.toInterface(("allocs-by-size and frees-by-size buckets don\'t match in length" : stdgo.GoString)));
        } else if ((_objects._alloc.counts.length) != ((_objects._free.counts.length))) {
            _t.error(stdgo.Go.toInterface(("allocs-by-size and frees-by-size counts don\'t match in length" : stdgo.GoString)));
        } else {
            for (_i => _ in _objects._alloc.buckets) {
                var _ba = (_objects._alloc.buckets[(_i : stdgo.GoInt)] : stdgo.GoFloat64);
                var _bf = (_objects._free.buckets[(_i : stdgo.GoInt)] : stdgo.GoFloat64);
                if (_ba != (_bf)) {
                    _t.errorf(("bucket %d is different for alloc and free hists: %f != %f" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ba), stdgo.Go.toInterface(_bf));
                };
            };
            if (!_t.failed()) {
                var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _gotFree = __1, _gotAlloc = __0;
                var _want = (_objects._total : stdgo.GoUInt64);
                for (_i => _ in _objects._alloc.counts) {
                    if ((_objects._alloc.counts[(_i : stdgo.GoInt)] < _objects._free.counts[(_i : stdgo.GoInt)] : Bool)) {
                        _t.errorf(("found more allocs than frees in object dist bucket %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        continue;
                    };
                    _gotAlloc = (_gotAlloc + (_objects._alloc.counts[(_i : stdgo.GoInt)]) : stdgo.GoUInt64);
                    _gotFree = (_gotFree + (_objects._free.counts[(_i : stdgo.GoInt)]) : stdgo.GoUInt64);
                };
                {
                    var _got = (_gotAlloc - _gotFree : stdgo.GoUInt64);
                    if (_got != (_want)) {
                        _t.errorf(("object distribution counts don\'t match count of live objects: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                if (_gotAlloc != (_objects._allocs)) {
                    _t.errorf(("object distribution counts don\'t match total allocs: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_gotAlloc), stdgo.Go.toInterface(_objects._allocs));
                };
                if (_gotFree != (_objects._frees)) {
                    _t.errorf(("object distribution counts don\'t match total allocs: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_gotFree), stdgo.Go.toInterface(_objects._frees));
                };
            };
        };
        if ((_gc._pauses < (_gc._numGC * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
            _t.errorf(("fewer pauses than expected: got %d, want at least %d" : stdgo.GoString), stdgo.Go.toInterface(_gc._pauses), stdgo.Go.toInterface((_gc._numGC * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
        };
        if ((_totalScan._got <= (0i64 : stdgo.GoUInt64) : Bool)) {
            _t.errorf(("scannable GC space is empty: %d" : stdgo.GoString), stdgo.Go.toInterface(_totalScan._got));
        };
        if (_totalScan._got != (_totalScan._want)) {
            _t.errorf(("/gc/scan/total:bytes doesn\'t line up with sum of /gc/scan*: total %d vs. sum %d" : stdgo.GoString), stdgo.Go.toInterface(_totalScan._got), stdgo.Go.toInterface(_totalScan._want));
        };
    }
