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
function benchmarkChanPopular(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _a:stdgo.Slice<stdgo.Chan<Bool>> = (null : stdgo.Slice<stdgo.Chan<Bool>>);
        var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        _wg.add((1000 : stdgo.GoInt));
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (1000 : stdgo.GoInt) : Bool), _j++, {
                var _d = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
                _a = (_a.__append__(_d));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                {
                                    var __select__ = true;
                                    while (__select__) {
                                        if (_c != null && _c.__isGet__()) {
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
                            });
                        };
                        _wg.done();
                    };
                    a();
                });
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__18 => _d in _a) {
                    _d.__send__(true);
                };
            });
        };
        _wg.wait_();
    }
