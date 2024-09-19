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
function _perpetuumMobile():Void {
        {
            var __select__ = true;
            while (__select__) {
                if (_internal.runtime_test.Runtime_test__stop._stop != null && _internal.runtime_test.Runtime_test__stop._stop.__isGet__()) {
                    __select__ = false;
                    {
                        _internal.runtime_test.Runtime_test__stop._stop.__get__();
                        {};
                    };
                } else {
                    __select__ = false;
                    {
                        stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__perpetuumMobile._perpetuumMobile());
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
