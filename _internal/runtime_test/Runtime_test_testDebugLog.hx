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
function testDebugLog(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__skipDebugLog._skipDebugLog(_t);
        stdgo._internal.runtime.Runtime_resetDebugLog.resetDebugLog();
        stdgo._internal.runtime.Runtime_dlog.dlog().s(("testing" : stdgo.GoString)).end();
        var _got = (_internal.runtime_test.Runtime_test__dlogCanonicalize._dlogCanonicalize(stdgo._internal.runtime.Runtime_dumpDebugLog.dumpDebugLog()?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var _want = ("[] testing\n" : stdgo.GoString);
            if (_got != (_want)) {
                _t.fatalf(("want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
