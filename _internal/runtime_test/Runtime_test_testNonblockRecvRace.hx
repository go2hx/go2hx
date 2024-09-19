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
function testNonblockRecvRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n = (10000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (100 : stdgo.GoInt);
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _c = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                _c.__send__((1 : stdgo.GoInt));
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
                                } else {
                                    __select__ = false;
                                    {
                                        _t.error(stdgo.Go.toInterface(("chan is not ready" : stdgo.GoString)));
                                    };
                                };
                                #if !js Sys.sleep(0.01) #else null #end;
                                stdgo._internal.internal.Async.tick();
                            };
                        };
                    };
                    a();
                });
                if (_c != null) _c.__close__();
                _c.__get__();
                if (_t.failed()) {
                    return;
                };
            });
        };
    }
