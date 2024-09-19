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
function benchmarkReadMetricsLatency(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _stop = (_internal.runtime_test.Runtime_test__applyGCLoad._applyGCLoad(_b) : () -> Void);
        var _latencies = (new stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>((0 : stdgo.GoInt).toBasic(), (1024 : stdgo.GoInt)).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>);
        var __tmp__ = _internal.runtime_test.Runtime_test__prepareAllMetricsSamples._prepareAllMetricsSamples(), __6:stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.metrics.Metrics_Description.Description> = __tmp__._0, _samples:stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample> = __tmp__._1;
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
                stdgo._internal.runtime.metrics.Metrics_read.read(_samples);
                _latencies = (_latencies.__append__(stdgo._internal.time.Time_since.since(_start?.__copy__())));
            });
        };
        _b.stopTimer();
        _stop();
        _b.reportMetric((0 : stdgo.GoFloat64), ("ns/op" : stdgo.GoString));
        _b.reportMetric((0 : stdgo.GoFloat64), ("B/op" : stdgo.GoString));
        _b.reportMetric((0 : stdgo.GoFloat64), ("allocs/op" : stdgo.GoString));
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_latencies), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_latencies[(_i : stdgo.GoInt)] < _latencies[(_j : stdgo.GoInt)] : Bool);
        });
        _b.reportMetric((_latencies[(((_latencies.length) * (50 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), ("p50-ns" : stdgo.GoString));
        _b.reportMetric((_latencies[(((_latencies.length) * (90 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), ("p90-ns" : stdgo.GoString));
        _b.reportMetric((_latencies[(((_latencies.length) * (99 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), ("p99-ns" : stdgo.GoString));
    }
