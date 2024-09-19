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
function benchmarkNetpollBreak(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (10 : stdgo.GoInt) : Bool), _j++, {
                        _internal.runtime_test.Runtime_test__wg._wg.add((1 : stdgo.GoInt));
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                stdgo._internal.runtime.Runtime_netpollBreak.netpollBreak();
                                _internal.runtime_test.Runtime_test__wg._wg.done();
                            };
                            a();
                        });
                    });
                };
            });
        };
        _internal.runtime_test.Runtime_test__wg._wg.wait_();
        _b.stopTimer();
    }
