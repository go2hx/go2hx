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
function benchmarkScanStackNoLocals(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _ready:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        var _teardown = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (10 : stdgo.GoInt) : Bool), _j++, {
                _ready.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _x = (100000 : stdgo.GoInt);
                        _internal.runtime_test.Runtime_test__countpwg._countpwg(stdgo.Go.pointer(_x), (stdgo.Go.setRef(_ready) : stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>), _teardown);
                    };
                    a();
                });
            });
        };
        _ready.wait_();
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.startTimer();
                stdgo._internal.runtime.Runtime_gc.gc();
                stdgo._internal.runtime.Runtime_gc.gc();
                _b.stopTimer();
            });
        };
        if (_teardown != null) _teardown.__close__();
    }
