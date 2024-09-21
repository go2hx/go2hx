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
function testNonblockSelectRace2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n = (100000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (1000 : stdgo.GoInt);
        };
        var _done = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _c1 = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                var _c2 = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                _c1.__send__((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var __select__ = true;
                            while (__select__) {
                                if (_c1 != null && _c1.__isGet__()) {
                                    __select__ = false;
                                    {
                                        _c1.__get__();
                                        {};
                                    };
                                } else if (_c2 != null && _c2.__isGet__()) {
                                    __select__ = false;
                                    {
                                        _c2.__get__();
                                        {};
                                    };
                                } else {
                                    __select__ = false;
                                    {
                                        _done.__send__(false);
                                        return;
                                    };
                                };
                                #if !js Sys.sleep(0.01) #else null #end;
                                stdgo._internal.internal.Async.tick();
                            };
                        };
                        _done.__send__(true);
                    };
                    a();
                });
                if (_c2 != null) _c2.__close__();
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_c1 != null && _c1.__isGet__()) {
                            __select__ = false;
                            {
                                _c1.__get__();
                                {};
                            };
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                if (!_done.__get__()) {
                    _t.fatal(stdgo.Go.toInterface(("no chan is ready" : stdgo.GoString)));
                };
            });
        };
    }
