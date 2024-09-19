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
function testReadMemStats(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.runtime.Runtime_readMemStatsSlow.readMemStatsSlow(), _base:stdgo._internal.runtime.Runtime_MemStats.MemStats = __tmp__._0, _slow:stdgo._internal.runtime.Runtime_MemStats.MemStats = __tmp__._1;
        if (stdgo.Go.toInterface(_base) != stdgo.Go.toInterface(_slow)) {
            _internal.runtime_test.Runtime_test__logDiff._logDiff(_t, ("MemStats" : stdgo.GoString), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_base))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_slow))?.__copy__());
            _t.fatal(stdgo.Go.toInterface(("memstats mismatch" : stdgo.GoString)));
        };
    }
