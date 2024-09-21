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
function _benchmarkCreateGoroutines(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _procs:stdgo.GoInt):Void {
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _f:stdgo.GoInt -> Void = null;
        _f = function(_n:stdgo.GoInt):Void {
            if (_n == ((0 : stdgo.GoInt))) {
                _c.__send__(true);
                return;
            };
            stdgo.Go.routine(() -> _f((_n - (1 : stdgo.GoInt) : stdgo.GoInt)));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _procs : Bool), _i++, {
                stdgo.Go.routine(() -> _f((_b.n / _procs : stdgo.GoInt)));
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _procs : Bool), _i++, {
                _c.__get__();
            });
        };
    }
