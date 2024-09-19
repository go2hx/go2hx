package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function benchmarkParallelTimerLatency(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _gmp = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt);
        if (((_gmp < (2 : stdgo.GoInt) : Bool) || (stdgo._internal.runtime.Runtime_numCPU.numCPU() < _gmp : Bool) : Bool)) {
            _b.skip(stdgo.Go.toInterface(("skipping with GOMAXPROCS < 2 or NumCPU < GOMAXPROCS" : stdgo.GoString)));
        };
        var _timerCount = (_gmp - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _stats = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_8.T__struct_8>((_timerCount : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_timerCount : stdgo.GoInt).toBasic() > 0 ? (_timerCount : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({ _sum : (0 : stdgo.GoFloat64), _max : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration), _count : (0 : stdgo.GoInt64) } : _internal.time_test.Time_test_T__struct_8.T__struct_8)]) : stdgo.Slice<_internal.time_test.Time_test_T__struct_8.T__struct_8>);
        _internal.time_test.Time_test__warmupScheduler._warmupScheduler(_gmp);
        _internal.time_test.Time_test__doWork._doWork((30000000i64 : stdgo._internal.time.Time_Duration.Duration));
        _b.resetTimer();
        {};
        var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        var _count:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _wg.add(_timerCount);
                stdgo._internal.sync.atomic_.Atomic__storeInt32.storeInt32(stdgo.Go.pointer(_count), (0 : stdgo.GoInt32));
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _timerCount : Bool), _j++, {
                        var _j = (_j : stdgo.GoInt);
                        var _expectedWakeup = (stdgo._internal.time.Time_now.now().add((1000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
                        stdgo._internal.time.Time_afterFunc.afterFunc((1000000i64 : stdgo._internal.time.Time_Duration.Duration), function():Void {
                            var _late = (stdgo._internal.time.Time_since.since(_expectedWakeup?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                            if ((_late < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                                _late = (0i64 : stdgo._internal.time.Time_Duration.Duration);
                            };
                            _stats[(_j : stdgo.GoInt)]._count++;
                            _stats[(_j : stdgo.GoInt)]._sum = (_stats[(_j : stdgo.GoInt)]._sum + ((_late.nanoseconds() : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            if ((_late > _stats[(_j : stdgo.GoInt)]._max : Bool)) {
                                _stats[(_j : stdgo.GoInt)]._max = _late;
                            };
                            stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(stdgo.Go.pointer(_count), (1 : stdgo.GoInt32));
                            while ((stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(stdgo.Go.pointer(_count)) < (_timerCount : stdgo.GoInt32) : Bool)) {};
                            _wg.done();
                        });
                    });
                };
                while ((stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(stdgo.Go.pointer(_count)) < (_timerCount : stdgo.GoInt32) : Bool)) {};
                _wg.wait_();
                _internal.time_test.Time_test__doWork._doWork((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
            });
        };
        var _total:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _samples:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _max = ((0i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        for (__22 => _s in _stats) {
            if ((_s._max > _max : Bool)) {
                _max = _s._max;
            };
            _total = (_total + (_s._sum) : stdgo.GoFloat64);
            _samples = (_samples + ((_s._count : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        _b.reportMetric((0 : stdgo.GoFloat64), ("ns/op" : stdgo.GoString));
        _b.reportMetric((_total / _samples : stdgo.GoFloat64), ("avg-late-ns" : stdgo.GoString));
        _b.reportMetric((_max.nanoseconds() : stdgo.GoFloat64), ("max-late-ns" : stdgo.GoString));
    }
