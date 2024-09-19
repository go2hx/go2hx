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
function benchmarkSelectAsyncContended(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _procs = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt);
        var _myc1 = (new stdgo.Chan<stdgo.GoInt>((_procs : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _myc2 = (new stdgo.Chan<stdgo.GoInt>((_procs : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            _myc1.__send__((0 : stdgo.GoInt));
            while (_pb.next()) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_myc1 != null && _myc1.__isGet__()) {
                            __select__ = false;
                            {
                                _myc1.__get__();
                                {
                                    _myc2.__send__((0 : stdgo.GoInt));
                                };
                            };
                        } else if (_myc2 != null && _myc2.__isGet__()) {
                            __select__ = false;
                            {
                                _myc2.__get__();
                                {
                                    _myc1.__send__((0 : stdgo.GoInt));
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
        });
    }
