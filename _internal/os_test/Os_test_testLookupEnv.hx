package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testLookupEnv(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var __tmp__ = stdgo._internal.os.Os_lookupEnv.lookupEnv(("SMALLPOX" : stdgo.GoString)), _value:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((_ok || (_value != stdgo.Go.str()) : Bool)) {
                _t.fatalf(("%s=%q" : stdgo.GoString), stdgo.Go.toInterface(("SMALLPOX" : stdgo.GoString)), stdgo.Go.toInterface(_value));
            };
            {
                var _a0 = ("SMALLPOX" : stdgo.GoString);
                __deferstack__.unshift(() -> stdgo._internal.os.Os_unsetenv.unsetenv(_a0?.__copy__()));
            };
            var _err = (stdgo._internal.os.Os_setenv.setenv(("SMALLPOX" : stdgo.GoString), ("virus" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("failed to release smallpox virus" : stdgo.GoString));
            };
            {
                var __tmp__ = stdgo._internal.os.Os_lookupEnv.lookupEnv(("SMALLPOX" : stdgo.GoString));
                _ok = __tmp__._1;
            };
            if (!_ok) {
                _t.errorf(("smallpox release failed; world remains safe but LookupEnv is broken" : stdgo.GoString));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
