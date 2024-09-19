package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTimeIsDST(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = (stdgo._internal.time.Time_disablePlatformSources.disablePlatformSources() : () -> Void);
            __deferstack__.unshift(() -> _undo());
            var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("Australia/Sydney" : stdgo.GoString)), _tzWithDST:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("could not load tz \'Australia/Sydney\': %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("Australia/Brisbane" : stdgo.GoString)), _tzWithoutDST:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("could not load tz \'Australia/Brisbane\': %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _tzFixed = stdgo._internal.time.Time_fixedZone.fixedZone(("FIXED_TIME" : stdgo.GoString), (12345 : stdgo.GoInt));
            var _tests = {
                var s:stdgo.GoArray<_internal.time_test.Time_test_T__struct_28.T__struct_28> = new stdgo.GoArray<_internal.time_test.Time_test_T__struct_28.T__struct_28>(8, 8, ...[for (i in 0 ... 8) ({ _time : ({} : stdgo._internal.time.Time_Time.Time), _want : false } : _internal.time_test.Time_test_T__struct_28.T__struct_28)]);
                s[0] = ({ _time : stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__(), _want : false } : _internal.time_test.Time_test_T__struct_28.T__struct_28);
                s[1] = ({ _time : stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (6 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__(), _want : false } : _internal.time_test.Time_test_T__struct_28.T__struct_28);
                s[2] = ({ _time : stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzWithDST)?.__copy__(), _want : true } : _internal.time_test.Time_test_T__struct_28.T__struct_28);
                s[3] = ({ _time : stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (6 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzWithDST)?.__copy__(), _want : false } : _internal.time_test.Time_test_T__struct_28.T__struct_28);
                s[4] = ({ _time : stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzWithoutDST)?.__copy__(), _want : false } : _internal.time_test.Time_test_T__struct_28.T__struct_28);
                s[5] = ({ _time : stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (6 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzWithoutDST)?.__copy__(), _want : false } : _internal.time_test.Time_test_T__struct_28.T__struct_28);
                s[6] = ({ _time : stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzFixed)?.__copy__(), _want : false } : _internal.time_test.Time_test_T__struct_28.T__struct_28);
                s[7] = ({ _time : stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (6 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzFixed)?.__copy__(), _want : false } : _internal.time_test.Time_test_T__struct_28.T__struct_28);
                s;
            };
            for (_i => _tt in _tests) {
                var _got = (_tt._time.isDST() : Bool);
                if (_got != (_tt._want)) {
                    _t.errorf(("#%d:: (%#v).IsDST()=%t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._time.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
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
