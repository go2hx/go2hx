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
function testDebugLogTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__skipDebugLog._skipDebugLog(_t);
        stdgo._internal.runtime.Runtime_resetDebugLog.resetDebugLog();
        var _varString:stdgo.GoString = stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (4 : stdgo.GoInt));
        stdgo._internal.runtime.Runtime_dlog.dlog().b(true).b(false).i((-42 : stdgo.GoInt)).i16((32767 : stdgo.GoInt16)).u64((-1i64 : stdgo.GoUInt64)).hex((4095i64 : stdgo.GoUInt64)).p((null : stdgo.AnyInterface)).s(_varString?.__copy__()).s(("const string" : stdgo.GoString)).end();
        var _got = (_internal.runtime_test.Runtime_test__dlogCanonicalize._dlogCanonicalize(stdgo._internal.runtime.Runtime_dumpDebugLog.dumpDebugLog()?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var _want = ("[] true false -42 32767 18446744073709551615 0xfff 0x0 aaaa const string\n" : stdgo.GoString);
            if (_got != (_want)) {
                _t.fatalf(("want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
