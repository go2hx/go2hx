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
function testCPUMetricsSleep(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("wasip1 currently busy-waits in idle time; test not applicable" : stdgo.GoString)));
        };
        var _names = (new stdgo.Slice<stdgo.GoString>(11, 11, ...[
("/cpu/classes/idle:cpu-seconds" : stdgo.GoString),
("/cpu/classes/gc/mark/assist:cpu-seconds" : stdgo.GoString),
("/cpu/classes/gc/mark/dedicated:cpu-seconds" : stdgo.GoString),
("/cpu/classes/gc/mark/idle:cpu-seconds" : stdgo.GoString),
("/cpu/classes/gc/pause:cpu-seconds" : stdgo.GoString),
("/cpu/classes/gc/total:cpu-seconds" : stdgo.GoString),
("/cpu/classes/scavenge/assist:cpu-seconds" : stdgo.GoString),
("/cpu/classes/scavenge/background:cpu-seconds" : stdgo.GoString),
("/cpu/classes/scavenge/total:cpu-seconds" : stdgo.GoString),
("/cpu/classes/total:cpu-seconds" : stdgo.GoString),
("/cpu/classes/user:cpu-seconds" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _prep = function():stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample> {
            var _mm = (new stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>((_names.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_names.length : stdgo.GoInt).toBasic() > 0 ? (_names.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.metrics.Metrics_Sample.Sample)]) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>);
            for (_i => _ in _names) {
                _mm[(_i : stdgo.GoInt)].name = _names[(_i : stdgo.GoInt)]?.__copy__();
            };
            return _mm;
        };
        var __0 = _prep(), __1 = _prep();
var _m2 = __1, _m1 = __0;
        {};
        var _failureIdleTimes = (new stdgo.Slice<stdgo.GoFloat64>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        var _minIdleCPUSeconds = ((100000000i64 : stdgo._internal.time.Time_Duration.Duration).seconds() * (((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((-1 : stdgo.GoInt)) : stdgo.GoFloat64) - (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        stdgo._internal.runtime.debug.Debug_freeOSMemory.freeOSMemory();
        {
            var _retries = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_retries < (10 : stdgo.GoInt) : Bool), _retries++, {
                stdgo._internal.runtime.Runtime_gc.gc();
                stdgo._internal.runtime.metrics.Metrics_read.read(_m1);
                stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_Duration.Duration));
                stdgo._internal.runtime.Runtime_gc.gc();
                stdgo._internal.runtime.metrics.Metrics_read.read(_m2);
                var _dt = (_m2[(0 : stdgo.GoInt)].value.float64() - _m1[(0 : stdgo.GoInt)].value.float64() : stdgo.GoFloat64);
                if ((_dt >= _minIdleCPUSeconds : Bool)) {
                    return;
                };
                _failureIdleTimes = (_failureIdleTimes.__append__(_dt));
            });
        };
        for (_i => _dt in _failureIdleTimes) {
            _t.logf(("try %2d: idle time = %.5fs\n" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_dt));
        };
        _t.logf(("try %d breakdown:\n" : stdgo.GoString), stdgo.Go.toInterface((_failureIdleTimes.length)));
        for (_i => _ in _names) {
            if (_m1[(_i : stdgo.GoInt)].value.kind() == ((0 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind))) {
                continue;
            };
            _t.logf(("\t%s %0.3f\n" : stdgo.GoString), stdgo.Go.toInterface(_names[(_i : stdgo.GoInt)]), stdgo.Go.toInterface((_m2[(_i : stdgo.GoInt)].value.float64() - _m1[(_i : stdgo.GoInt)].value.float64() : stdgo.GoFloat64)));
        };
        _t.errorf(("time.Sleep did not contribute enough to \"idle\" class: minimum idle time = %.5fs" : stdgo.GoString), stdgo.Go.toInterface(_minIdleCPUSeconds));
    }
