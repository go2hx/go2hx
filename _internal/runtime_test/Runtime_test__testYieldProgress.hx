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
function _testYieldProgress(_locked:Bool):Void {
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _cack = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                if (_locked) {
                    stdgo._internal.runtime.Runtime_lockOSThread.lockOSThread();
                };
                while (true) {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_c != null && _c.__isGet__()) {
                                __select__ = false;
                                {
                                    _c.__get__();
                                    {
                                        _cack.__send__(true);
                                        return;
                                    };
                                };
                            } else {
                                __select__ = false;
                                {
                                    stdgo._internal.runtime.Runtime_gosched.gosched();
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                };
            };
            a();
        });
        stdgo._internal.time.Time_sleep.sleep((10000000i64 : stdgo._internal.time.Time_Duration.Duration));
        _c.__send__(true);
        _cack.__get__();
    }
