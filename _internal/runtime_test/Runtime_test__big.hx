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
function _big(_stop:stdgo.Chan<stdgo.GoInt>):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        while (true) {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1000000000 : stdgo.GoInt) : Bool), _i++, {
                    _n++;
                });
            };
            _internal.runtime_test.Runtime_test__bigframe._bigframe(_stop);
            {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_stop != null && _stop.__isGet__()) {
                            __select__ = false;
                            {
                                _stop.__get__();
                                {
                                    return _n;
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                return (0 : stdgo.GoInt);
            };
        };
    }
