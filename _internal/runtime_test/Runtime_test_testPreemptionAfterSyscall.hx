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
function testPreemptionAfterSyscall(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (41015 : stdgo.GoInt));
        };
        for (__6 => _i in (new stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>(3, 3, ...[(10i64 : stdgo._internal.time.Time_Duration.Duration), (100i64 : stdgo._internal.time.Time_Duration.Duration), (1000i64 : stdgo._internal.time.Time_Duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>)) {
            var _d = (_i * (1000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
            _t.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(stdgo.Go.asInterface(_d)))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                _internal.runtime_test.Runtime_test__testPreemptionAfterSyscall._testPreemptionAfterSyscall(_t, _d);
            });
        };
    }
