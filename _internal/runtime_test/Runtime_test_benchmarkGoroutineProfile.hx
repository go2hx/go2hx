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
function benchmarkGoroutineProfile(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _run = function(_fn:() -> Bool):stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void {
            var _runOne = function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _latencies = (new stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>((0 : stdgo.GoInt).toBasic(), _b.n).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>);
                _b.resetTimer();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
                        var _ok = (_fn() : Bool);
                        if (!_ok) {
                            _b.fatal(stdgo.Go.toInterface(("goroutine profile failed" : stdgo.GoString)));
                        };
                        _latencies = (_latencies.__append__(stdgo._internal.time.Time_since.since(_start?.__copy__())));
                    });
                };
                _b.stopTimer();
                stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_latencies), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                    return (_latencies[(_i : stdgo.GoInt)] < _latencies[(_j : stdgo.GoInt)] : Bool);
                });
                _b.reportMetric((_latencies[(((_latencies.length) * (50 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), ("p50-ns" : stdgo.GoString));
                _b.reportMetric((_latencies[(((_latencies.length) * (90 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), ("p90-ns" : stdgo.GoString));
                _b.reportMetric((_latencies[(((_latencies.length) * (99 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), ("p99-ns" : stdgo.GoString));
            };
            return function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.run(("idle" : stdgo.GoString), _runOne);
                _b.run(("loaded" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    var _stop = (_internal.runtime_test.Runtime_test__applyGCLoad._applyGCLoad(_b) : () -> Void);
                    _runOne(_b);
                    _b.stopTimer();
                    _stop();
                });
            };
        };
        _b.run(("small-nil" : stdgo.GoString), _run(function():Bool {
            stdgo._internal.runtime.Runtime_goroutineProfile.goroutineProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>));
            return true;
        }));
        var _n = (stdgo._internal.runtime.Runtime_numGoroutine.numGoroutine() : stdgo.GoInt);
        var _p = (new stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>((((2 : stdgo.GoInt) * _n : stdgo.GoInt) + ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((((2 : stdgo.GoInt) * _n : stdgo.GoInt) + ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (((2 : stdgo.GoInt) * _n : stdgo.GoInt) + ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_StackRecord.StackRecord)]) : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>);
        _b.run(("small" : stdgo.GoString), _run(function():Bool {
            var __tmp__ = stdgo._internal.runtime.Runtime_goroutineProfile.goroutineProfile(_p), __22:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            return _ok;
        }));
        var _ch = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var __0:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup), __1:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
var _done = __1, _ready = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5000 : stdgo.GoInt) : Bool), _i++, {
                _ready.add((1 : stdgo.GoInt));
                _done.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _ready.done();
                        _ch.__get__();
                        _done.done();
                    };
                    a();
                });
            });
        };
        _ready.wait_();
        _b.run(("large-nil" : stdgo.GoString), _run(function():Bool {
            stdgo._internal.runtime.Runtime_goroutineProfile.goroutineProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>));
            return true;
        }));
        _n = stdgo._internal.runtime.Runtime_numGoroutine.numGoroutine();
        _p = (new stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>((((2 : stdgo.GoInt) * _n : stdgo.GoInt) + ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((((2 : stdgo.GoInt) * _n : stdgo.GoInt) + ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (((2 : stdgo.GoInt) * _n : stdgo.GoInt) + ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_StackRecord.StackRecord)]) : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>);
        _b.run(("large" : stdgo.GoString), _run(function():Bool {
            var __tmp__ = stdgo._internal.runtime.Runtime_goroutineProfile.goroutineProfile(_p), __42:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            return _ok;
        }));
        if (_ch != null) _ch.__close__();
        _done.wait_();
        _b.run(("sparse-nil" : stdgo.GoString), _run(function():Bool {
            stdgo._internal.runtime.Runtime_goroutineProfile.goroutineProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>));
            return true;
        }));
        _n = stdgo._internal.runtime.Runtime_numGoroutine.numGoroutine();
        _p = (new stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>((((2 : stdgo.GoInt) * _n : stdgo.GoInt) + ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((((2 : stdgo.GoInt) * _n : stdgo.GoInt) + ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (((2 : stdgo.GoInt) * _n : stdgo.GoInt) + ((2 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_StackRecord.StackRecord)]) : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>);
        _b.run(("sparse" : stdgo.GoString), _run(function():Bool {
            var __tmp__ = stdgo._internal.runtime.Runtime_goroutineProfile.goroutineProfile(_p), __62:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            return _ok;
        }));
    }
