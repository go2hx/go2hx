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
function testTimerFairness(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (true) {
            _t.skip(stdgo.Go.toInterface(("no preemption on wasm yet" : stdgo.GoString)));
        };
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        while (true) {
                            {
                                var __select__ = true;
                                while (__select__) {
                                    if (_c != null && _c.__isSend__()) {
                                        __select__ = false;
                                        {
                                            _c.__send__(true);
                                            {};
                                        };
                                    } else if (_done != null && _done.__isGet__()) {
                                        __select__ = false;
                                        {
                                            _done.__get__();
                                            {
                                                return;
                                            };
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
            });
        };
        var _timer = stdgo._internal.time.Time_after.after((20000000i64 : stdgo._internal.time.Time_Duration.Duration));
        while (true) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_c != null && _c.__isGet__()) {
                        __select__ = false;
                        {
                            _c.__get__();
                            {};
                        };
                    } else if (_timer != null && _timer.__isGet__()) {
                        __select__ = false;
                        {
                            _timer.__get__();
                            {
                                if (_done != null) _done.__close__();
                                return;
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
        };
    }
