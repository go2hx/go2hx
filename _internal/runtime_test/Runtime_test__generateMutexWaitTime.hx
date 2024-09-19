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
function _generateMutexWaitTime(_mu:_internal.runtime_test.Runtime_test_T_locker2.T_locker2):stdgo._internal.time.Time_Duration.Duration {
        stdgo._internal.runtime.Runtime_casGStatusAlwaysTrack.casGStatusAlwaysTrack.value = true;
        _mu.lock1();
        var _gc = (new stdgo.Chan<stdgo.Ref<stdgo._internal.runtime.Runtime_T_g.T_g>>(0, () -> (null : stdgo.Ref<stdgo._internal.runtime.Runtime_T_g.T_g>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.runtime.Runtime_T_g.T_g>>);
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _gc.__send__(stdgo._internal.runtime.Runtime_getg.getg());
                while (true) {
                    _mu.lock2();
                    _mu.unlock2();
                    if (_done.__get__()) {
                        return;
                    };
                };
            };
            a();
        });
        var _gp = _gc.__get__();
        {};
        while (true) {
            if (stdgo._internal.runtime.Runtime_gisWaitingOnMutex.gisWaitingOnMutex(_gp)) {
                break;
            };
            stdgo._internal.runtime.Runtime_gosched.gosched();
        };
        stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_Duration.Duration));
        _mu.unlock1();
        _done.__send__(true);
        stdgo._internal.runtime.Runtime_casGStatusAlwaysTrack.casGStatusAlwaysTrack.value = false;
        return (100000000i64 : stdgo._internal.time.Time_Duration.Duration);
    }
