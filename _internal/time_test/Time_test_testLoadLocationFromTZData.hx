package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testLoadLocationFromTZData(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = (stdgo._internal.time.Time_disablePlatformSources.disablePlatformSources() : () -> Void);
            __deferstack__.unshift(() -> _undo());
            {};
            var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("Asia/Jerusalem" : stdgo.GoString)), _reference:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.time.Time_gorootZoneSource.gorootZoneSource(stdgo._internal.internal.testenv.Testenv_goroot.goroot(stdgo.Go.asInterface(_t))?.__copy__()), _gorootSource:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.fatal(stdgo.Go.toInterface(("Failed to locate tzinfo source in GOROOT." : stdgo.GoString)));
            };
            var __tmp__ = stdgo._internal.time.Time_loadTzinfo.loadTzinfo(("Asia/Jerusalem" : stdgo.GoString), _gorootSource?.__copy__()), _tzinfo:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.time.Time_loadLocationFromTZData.loadLocationFromTZData(("Asia/Jerusalem" : stdgo.GoString), _tzinfo), _sample:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_reference)), stdgo.Go.toInterface(stdgo.Go.asInterface(_sample)))) {
                _t.errorf(("return values of LoadLocationFromTZData and LoadLocation don\'t match" : stdgo.GoString));
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
