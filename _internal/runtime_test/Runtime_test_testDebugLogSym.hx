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
function testDebugLogSym(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__skipDebugLog._skipDebugLog(_t);
        stdgo._internal.runtime.Runtime_resetDebugLog.resetDebugLog();
        var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((0 : stdgo.GoInt)), _pc:stdgo.GoUIntptr = __tmp__._0, __6:stdgo.GoString = __tmp__._1, __7:stdgo.GoInt = __tmp__._2, __8:Bool = __tmp__._3;
        stdgo._internal.runtime.Runtime_dlog.dlog().pc(_pc).end();
        var _got = (_internal.runtime_test.Runtime_test__dlogCanonicalize._dlogCanonicalize(stdgo._internal.runtime.Runtime_dumpDebugLog.dumpDebugLog()?.__copy__())?.__copy__() : stdgo.GoString);
        var _want = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("\\[\\] 0x[0-9a-f]+ \\[runtime_test\\.TestDebugLogSym\\+0x[0-9a-f]+ .*/debuglog_test\\.go:[0-9]+\\]\\n" : stdgo.GoString));
        if (!_want.matchString(_got?.__copy__())) {
            _t.fatalf(("want matching %s, got %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(_got));
        };
    }
