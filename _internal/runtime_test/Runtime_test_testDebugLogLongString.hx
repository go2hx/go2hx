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
function testDebugLogLongString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__skipDebugLog._skipDebugLog(_t);
        stdgo._internal.runtime.Runtime_resetDebugLog.resetDebugLog();
        var _longString:stdgo.GoString = stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (2049 : stdgo.GoInt));
        stdgo._internal.runtime.Runtime_dlog.dlog().s(_longString?.__copy__()).end();
        var _got = (_internal.runtime_test.Runtime_test__dlogCanonicalize._dlogCanonicalize(stdgo._internal.runtime.Runtime_dumpDebugLog.dumpDebugLog()?.__copy__())?.__copy__() : stdgo.GoString);
        var _want = (((("[] " : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (2048 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (" ..(1 more bytes)..\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (_want)) {
            _t.fatalf(("want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
