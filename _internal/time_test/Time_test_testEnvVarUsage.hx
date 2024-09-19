package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testEnvVarUsage(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.time.Time_resetZoneinfoForTesting.resetZoneinfoForTesting();
            {};
            {};
            _t.setenv(("ZONEINFO" : stdgo.GoString), ("foo.zip" : stdgo.GoString));
            stdgo._internal.time.Time_loadLocation.loadLocation(("Asia/Jerusalem" : stdgo.GoString));
            __deferstack__.unshift(() -> stdgo._internal.time.Time_resetZoneinfoForTesting.resetZoneinfoForTesting());
            {
                var _zoneinfo = stdgo._internal.time.Time_zoneinfoForTesting.zoneinfoForTesting();
                if (("foo.zip" : stdgo.GoString) != (_zoneinfo.value)) {
                    _t.errorf(("zoneinfo does not match env variable: got %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_zoneinfo.value), stdgo.Go.toInterface(("foo.zip" : stdgo.GoString)));
                };
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
