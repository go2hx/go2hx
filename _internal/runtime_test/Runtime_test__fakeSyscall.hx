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
function _fakeSyscall(_duration:stdgo._internal.time.Time_Duration.Duration):Void {
        stdgo._internal.runtime.Runtime_entersyscall.entersyscall();
        {
            var _start = (stdgo._internal.runtime.Runtime_nanotime.nanotime() : stdgo.GoInt64);
            while (((stdgo._internal.runtime.Runtime_nanotime.nanotime() - _start : stdgo.GoInt64) < (_duration : stdgo.GoInt64) : Bool)) {};
        };
        stdgo._internal.runtime.Runtime_exitsyscall.exitsyscall();
    }
