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
function _warmupScheduler(_targetThreadCount:stdgo.GoInt):Void {
        var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        var _count:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _targetThreadCount : Bool), _i++, {
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(stdgo.Go.pointer(_count), (1 : stdgo.GoInt32));
                        while ((stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(stdgo.Go.pointer(_count)) < (_targetThreadCount : stdgo.GoInt32) : Bool)) {};
                        _internal.runtime_test.Runtime_test__doWork._doWork((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
                        _wg.done();
                    };
                    a();
                });
            });
        };
        _wg.wait_();
    }
