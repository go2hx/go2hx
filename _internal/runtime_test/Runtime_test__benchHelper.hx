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
function _benchHelper(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt, _read:stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0> -> Void):Void {
        var _m = (new stdgo.Slice<stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>>);
        for (_i => _ in _m) {
            _m[(_i : stdgo.GoInt)] = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>((1 : stdgo.GoInt).toBasic(), () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
            stdgo.Go.routine(() -> _read(_m[(_i : stdgo.GoInt)]));
        };
        _b.stopTimer();
        _b.resetTimer();
        stdgo._internal.runtime.Runtime_gc.gc();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__30 => _ch in _m) {
                    if (_ch != null) {
                        _ch.__send__((new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0));
                    };
                };
                stdgo._internal.time.Time_sleep.sleep((10000000i64 : stdgo._internal.time.Time_Duration.Duration));
                _b.startTimer();
                stdgo._internal.runtime.Runtime_gc.gc();
                _b.stopTimer();
            });
        };
        for (__30 => _ch in _m) {
            if (_ch != null) _ch.__close__();
        };
        stdgo._internal.time.Time_sleep.sleep((10000000i64 : stdgo._internal.time.Time_Duration.Duration));
    }
