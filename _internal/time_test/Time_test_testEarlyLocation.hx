package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testEarlyLocation(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = (stdgo._internal.time.Time_disablePlatformSources.disablePlatformSources() : () -> Void);
            __deferstack__.unshift(() -> _undo());
            {};
            var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("America/New_York" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _d = (stdgo._internal.time.Time_date.date((1900 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var __tmp__ = _d.zone(), _tzName:stdgo.GoString = __tmp__._0, _tzOffset:stdgo.GoInt = __tmp__._1;
            {
                var _want = ("EST" : stdgo.GoString);
                if (_tzName != (_want)) {
                    _t.errorf(("Zone name == %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tzName), stdgo.Go.toInterface(_want));
                };
            };
            {
                var _want = (-18000 : stdgo.GoInt);
                if (_tzOffset != (_want)) {
                    _t.errorf(("Zone offset == %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tzOffset), stdgo.Go.toInterface(_want));
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
