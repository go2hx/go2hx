package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function benchmarkStaggeredTickerLatency(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _gmp = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt);
            if (((_gmp < (2 : stdgo.GoInt) : Bool) || (stdgo._internal.runtime.Runtime_numCPU.numCPU() < _gmp : Bool) : Bool)) {
                _b.skip(stdgo.Go.toInterface(("skipping with GOMAXPROCS < 2 or NumCPU < GOMAXPROCS" : stdgo.GoString)));
            };
            {};
            for (__2 => _dur in (new stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>(2, 2, ...[(300000i64 : stdgo._internal.time.Time_Duration.Duration), (2000000i64 : stdgo._internal.time.Time_Duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>)) {
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("work-dur=%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dur)))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _tickersPerP = (1 : stdgo.GoInt);
                            stdgo.Go.cfor((_tickersPerP < ((((3000000i64 : stdgo._internal.time.Time_Duration.Duration) / _dur : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _tickersPerP++, {
                                var _tickerCount = (_gmp * _tickersPerP : stdgo.GoInt);
                                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("tickers-per-P=%d" : stdgo.GoString), stdgo.Go.toInterface(_tickersPerP))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                                    var __deferstack__:Array<Void -> Void> = [];
                                    try {
                                        var _stats = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_8.T__struct_8>((_tickerCount : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_tickerCount : stdgo.GoInt).toBasic() > 0 ? (_tickerCount : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({ _sum : (0 : stdgo.GoFloat64), _max : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration), _count : (0 : stdgo.GoInt64) } : _internal.time_test.Time_test_T__struct_8.T__struct_8)]) : stdgo.Slice<_internal.time_test.Time_test_T__struct_8.T__struct_8>);
                                        _internal.time_test.Time_test__warmupScheduler._warmupScheduler(_gmp);
                                        _b.resetTimer();
                                        var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
                                        _wg.add(_tickerCount);
                                        {
                                            var _j = (0 : stdgo.GoInt);
                                            stdgo.Go.cfor((_j < _tickerCount : Bool), _j++, {
                                                var _j = (_j : stdgo.GoInt);
                                                _internal.time_test.Time_test__doWork._doWork(((3000000i64 : stdgo._internal.time.Time_Duration.Duration) / (_gmp : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration));
                                                var _expectedWakeup = (stdgo._internal.time.Time_now.now().add((3000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
                                                var _ticker = stdgo._internal.time.Time_newTicker.newTicker((3000000i64 : stdgo._internal.time.Time_Duration.Duration));
                                                stdgo.Go.routine(() -> {
                                                    var a = function(_c:stdgo.GoInt, _ticker:stdgo.Ref<stdgo._internal.time.Time_Ticker.Ticker>, _firstWake:stdgo._internal.time.Time_Time.Time):Void {
                                                        var __deferstack__:Array<Void -> Void> = [];
                                                        try {
                                                            __deferstack__.unshift(() -> _ticker.stop());
                                                            stdgo.Go.cfor((_c > (0 : stdgo.GoInt) : Bool), _c--, {
                                                                _ticker.c.__get__();
                                                                var _late = (stdgo._internal.time.Time_since.since(_expectedWakeup?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                                                                if ((_late < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                                                                    _late = (0i64 : stdgo._internal.time.Time_Duration.Duration);
                                                                };
                                                                _stats[(_j : stdgo.GoInt)]._count++;
                                                                _stats[(_j : stdgo.GoInt)]._sum = (_stats[(_j : stdgo.GoInt)]._sum + ((_late.nanoseconds() : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                                                if ((_late > _stats[(_j : stdgo.GoInt)]._max : Bool)) {
                                                                    _stats[(_j : stdgo.GoInt)]._max = _late;
                                                                };
                                                                _expectedWakeup = _expectedWakeup.add((3000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
                                                                _internal.time_test.Time_test__doWork._doWork(_dur);
                                                            });
                                                            _wg.done();
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
                                                    a(_b.n, _ticker, _expectedWakeup?.__copy__());
                                                });
                                            });
                                        };
                                        _wg.wait_();
                                        var _total:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                                        var _samples:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                                        var _max = ((0i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
                                        for (__39 => _s in _stats) {
                                            if ((_s._max > _max : Bool)) {
                                                _max = _s._max;
                                            };
                                            _total = (_total + (_s._sum) : stdgo.GoFloat64);
                                            _samples = (_samples + ((_s._count : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                        };
                                        _b.reportMetric((0 : stdgo.GoFloat64), ("ns/op" : stdgo.GoString));
                                        _b.reportMetric((_total / _samples : stdgo.GoFloat64), ("avg-late-ns" : stdgo.GoString));
                                        _b.reportMetric((_max.nanoseconds() : stdgo.GoFloat64), ("max-late-ns" : stdgo.GoString));
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
