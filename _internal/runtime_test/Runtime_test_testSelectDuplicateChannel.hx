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
function testSelectDuplicateChannel(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _d = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _e = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_c != null && _c.__isGet__()) {
                            __select__ = false;
                            {
                                _c.__get__();
                                {};
                            };
                        } else if (_c != null && _c.__isGet__()) {
                            __select__ = false;
                            {
                                _c.__get__();
                                {};
                            };
                        } else if (_d != null && _d.__isGet__()) {
                            __select__ = false;
                            {
                                _d.__get__();
                                {};
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                _e.__send__((9 : stdgo.GoInt));
            };
            a();
        });
        stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _c.__get__();
            };
            a();
        });
        stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
        _d.__send__((7 : stdgo.GoInt));
        _e.__get__();
        _c.__send__((8 : stdgo.GoInt));
    }
