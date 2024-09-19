package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testUnsetenv(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _set = (function():Bool {
            var _prefix = ("GO_TEST_UNSETENV=" : stdgo.GoString);
            for (__0 => _key in stdgo._internal.os.Os_environ_.environ_()) {
                if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_key?.__copy__(), _prefix?.__copy__())) {
                    return true;
                };
            };
            return false;
        } : () -> Bool);
        {
            var _err = (stdgo._internal.os.Os_setenv.setenv(("GO_TEST_UNSETENV" : stdgo.GoString), ("1" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("Setenv: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (!_set()) {
            _t.error(stdgo.Go.toInterface(("Setenv didn\'t set TestUnsetenv" : stdgo.GoString)));
        };
        {
            var _err = (stdgo._internal.os.Os_unsetenv.unsetenv(("GO_TEST_UNSETENV" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("Unsetenv: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (_set()) {
            _t.fatal(stdgo.Go.toInterface(("Unsetenv didn\'t clear TestUnsetenv" : stdgo.GoString)));
        };
    }
