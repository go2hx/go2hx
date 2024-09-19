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
function benchmarkWakeupParallelSyscall(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        if (_internal.runtime_test.Runtime_test__sysNanosleep._sysNanosleep == null) {
            _b.skipf(("skipping on %v; sysNanosleep not defined" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
        };
        _internal.runtime_test.Runtime_test__benchmarkWakeupParallel._benchmarkWakeupParallel(_b, function(_d:stdgo._internal.time.Time_Duration.Duration):Void {
            _internal.runtime_test.Runtime_test__sysNanosleep._sysNanosleep(_d);
        });
    }
