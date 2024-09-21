package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testHostname(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.os.Os_hostname.hostname(), _hostname:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (_hostname == (stdgo.Go.str())) {
            _t.fatal(stdgo.Go.toInterface(("Hostname returned empty string and no error" : stdgo.GoString)));
        };
        if (stdgo._internal.strings.Strings_contains.contains(_hostname?.__copy__(), stdgo.Go.str(0)?.__copy__())) {
            _t.fatalf(("unexpected zero byte in hostname: %q" : stdgo.GoString), stdgo.Go.toInterface(_hostname));
        };
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString))) {
                return;
            } else if (__value__ == (("windows" : stdgo.GoString))) {
                _internal.os_test.Os_test__testWindowsHostname._testWindowsHostname(_t, _hostname?.__copy__());
                return;
            };
        };
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        var _want = (_internal.os_test.Os_test__runBinHostname._runBinHostname(_t)?.__copy__() : stdgo.GoString);
        if (_hostname != (_want)) {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_hostname?.__copy__(), ("." : stdgo.GoString)), _host:stdgo.GoString = __tmp__._0, __8:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if ((!_ok || (_host != _want) : Bool)) {
                _t.errorf(("Hostname() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_hostname), stdgo.Go.toInterface(_want));
            };
        };
    }
