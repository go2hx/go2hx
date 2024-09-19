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
function benchmarkChanClosed(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _c = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
        if (_c != null) _c.__close__();
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
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
                                _b.error(stdgo.Go.toInterface(("Unreachable" : stdgo.GoString)));
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
        });
    }
