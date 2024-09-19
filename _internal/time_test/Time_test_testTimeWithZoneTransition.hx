package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTimeWithZoneTransition(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = (stdgo._internal.time.Time_disablePlatformSources.disablePlatformSources() : () -> Void);
            __deferstack__.unshift(() -> _undo());
            var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("Asia/Shanghai" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _tests = {
                var s:stdgo.GoArray<_internal.time_test.Time_test_T__struct_29.T__struct_29> = new stdgo.GoArray<_internal.time_test.Time_test_T__struct_29.T__struct_29>(8, 8, ...[for (i in 0 ... 8) ({ _give : ({} : stdgo._internal.time.Time_Time.Time), _want : ({} : stdgo._internal.time.Time_Time.Time) } : _internal.time_test.Time_test_T__struct_29.T__struct_29)]);
                s[0] = ({ _give : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (13 : stdgo.GoInt), (17 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (13 : stdgo.GoInt), (9 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() } : _internal.time_test.Time_test_T__struct_29.T__struct_29);
                s[1] = ({ _give : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (13 : stdgo.GoInt), (18 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (13 : stdgo.GoInt), (10 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() } : _internal.time_test.Time_test_T__struct_29.T__struct_29);
                s[2] = ({ _give : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (1 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (13 : stdgo.GoInt), (17 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() } : _internal.time_test.Time_test_T__struct_29.T__struct_29);
                s[3] = ({ _give : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (3 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (13 : stdgo.GoInt), (18 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() } : _internal.time_test.Time_test_T__struct_29.T__struct_29);
                s[4] = ({ _give : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (16 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (7 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() } : _internal.time_test.Time_test_T__struct_29.T__struct_29);
                s[5] = ({ _give : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (17 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (8 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() } : _internal.time_test.Time_test_T__struct_29.T__struct_29);
                s[6] = ({ _give : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (15 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (15 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() } : _internal.time_test.Time_test_T__struct_29.T__struct_29);
                s[7] = ({ _give : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (15 : stdgo.GoInt), (2 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (18 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() } : _internal.time_test.Time_test_T__struct_29.T__struct_29);
                s;
            };
            for (_i => _tt in _tests) {
                if (!_tt._give.equal(_tt._want?.__copy__())) {
                    _t.errorf(("#%d:: %#v is not equal to %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._give.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(_tt._want.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))));
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
