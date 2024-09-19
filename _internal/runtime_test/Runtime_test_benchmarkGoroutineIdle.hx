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
function benchmarkGoroutineIdle(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _quit = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
        var _fn = (function():Void {
            _quit.__get__();
        } : () -> Void);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _internal.runtime_test.Runtime_test__n._n.value : Bool), _i++, {
                stdgo.Go.routine(() -> _fn());
            });
        };
        stdgo._internal.runtime.Runtime_gc.gc();
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.runtime.Runtime_gc.gc();
            });
        };
        _b.stopTimer();
        if (_quit != null) _quit.__close__();
        stdgo._internal.time.Time_sleep.sleep((10000000i64 : stdgo._internal.time.Time_Duration.Duration));
    }
