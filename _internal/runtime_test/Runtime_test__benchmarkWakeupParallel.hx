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
function _benchmarkWakeupParallel(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _spin:stdgo._internal.time.Time_Duration.Duration -> Void):Void {
        if (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) == ((1 : stdgo.GoInt))) {
            _b.skip(stdgo.Go.toInterface(("skipping: GOMAXPROCS=1" : stdgo.GoString)));
        };
        var _wakeDelay = (5000i64 : stdgo._internal.time.Time_Duration.Duration);
        for (__6 => _delay in (new stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>(8, 8, ...[(0i64 : stdgo._internal.time.Time_Duration.Duration), (1000i64 : stdgo._internal.time.Time_Duration.Duration), (2000i64 : stdgo._internal.time.Time_Duration.Duration), (5000i64 : stdgo._internal.time.Time_Duration.Duration), (10000i64 : stdgo._internal.time.Time_Duration.Duration), (20000i64 : stdgo._internal.time.Time_Duration.Duration), (50000i64 : stdgo._internal.time.Time_Duration.Duration), (100000i64 : stdgo._internal.time.Time_Duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>)) {
            _b.run((_delay.string() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                if (_b.n == ((0 : stdgo.GoInt))) {
                    return;
                };
                var __0 = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>), __1 = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
var _pong = __1, _ping = __0;
                var _start = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
                var _done = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _start.__get__();
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                _spin((_delay + _wakeDelay : stdgo._internal.time.Time_Duration.Duration));
                                _ping.__send__((new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0));
                                _spin(_delay);
                                _pong.__get__();
                            });
                        };
                        _done.__send__((new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0));
                    };
                    a();
                });
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                _spin(_delay);
                                _ping.__get__();
                                _spin((_delay + _wakeDelay : stdgo._internal.time.Time_Duration.Duration));
                                _pong.__send__((new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0));
                            });
                        };
                        _done.__send__((new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0));
                    };
                    a();
                });
                _b.resetTimer();
                _start.__send__((new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0));
                _done.__get__();
                _done.__get__();
            });
        };
    }
