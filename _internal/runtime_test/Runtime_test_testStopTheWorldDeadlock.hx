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
function testStopTheWorldDeadlock(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (true) {
            _t.skip(stdgo.Go.toInterface(("no preemption on wasm yet" : stdgo.GoString)));
        };
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping during short test" : stdgo.GoString)));
        };
        var _maxprocs = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((3 : stdgo.GoInt)) : stdgo.GoInt);
        var _compl = (new stdgo.Chan<Bool>((2 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i != ((1000 : stdgo.GoInt)), _i = (_i + ((1 : stdgo.GoInt)) : stdgo.GoInt), {
                        stdgo._internal.runtime.Runtime_gc.gc();
                    });
                };
                _compl.__send__(true);
            };
            a();
        });
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_i != ((1000 : stdgo.GoInt)), _i = (_i + ((1 : stdgo.GoInt)) : stdgo.GoInt), {
                        stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((3 : stdgo.GoInt));
                    });
                };
                _compl.__send__(true);
            };
            a();
        });
        stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__perpetuumMobile._perpetuumMobile());
        _compl.__get__();
        _compl.__get__();
        _internal.runtime_test.Runtime_test__stop._stop.__send__(true);
        stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_maxprocs);
    }
