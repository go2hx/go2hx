package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testZoneBounds(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = (stdgo._internal.time.Time_disablePlatformSources.disablePlatformSources() : () -> Void);
            __deferstack__.unshift(() -> _undo());
            var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("Asia/Shanghai" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            for (__2 => _test in _internal.time_test.Time_test__utctests._utctests) {
                var _sec = (_test._seconds : stdgo.GoInt64);
                var _golden = (stdgo.Go.setRef(_test._golden) : stdgo.Ref<_internal.time_test.Time_test_T_parsedTime.T_parsedTime>);
                var _tm = (stdgo._internal.time.Time_unix.unix(_sec, (0i64 : stdgo.GoInt64)).utc()?.__copy__() : stdgo._internal.time.Time_Time.Time);
                var __tmp__ = _tm.zoneBounds(), _start:stdgo._internal.time.Time_Time.Time = __tmp__._0, _end:stdgo._internal.time.Time_Time.Time = __tmp__._1;
                if (!((_start.isZero() && _end.isZero() : Bool))) {
                    _t.errorf(("ZoneBounds of %+v expects two zero Time, got:\n  start=%v\n  end=%v" : stdgo.GoString), stdgo.Go.toInterface((_golden : _internal.time_test.Time_test_T_parsedTime.T_parsedTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_start)), stdgo.Go.toInterface(stdgo.Go.asInterface(_end)));
                };
            };
            var _beginTime = (stdgo._internal.time.Time_date.date((-2147483648 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var __tmp__ = _beginTime.zoneBounds(), _start:stdgo._internal.time.Time_Time.Time = __tmp__._0, _end:stdgo._internal.time.Time_Time.Time = __tmp__._1;
            if ((!_start.isZero() || _end.isZero() : Bool)) {
                _t.errorf(("ZoneBounds of %v expects start is zero Time, got:\n  start=%v\n  end=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_beginTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_start)), stdgo.Go.toInterface(stdgo.Go.asInterface(_end)));
            };
            var _foreverTime = (stdgo._internal.time.Time_date.date((2147483647 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            {
                var __tmp__ = _foreverTime.zoneBounds();
                _start = __tmp__._0?.__copy__();
                _end = __tmp__._1?.__copy__();
            };
            if ((_start.isZero() || !_end.isZero() : Bool)) {
                _t.errorf(("ZoneBounds of %v expects end is zero Time, got:\n  start=%v\n  end=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_foreverTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_start)), stdgo.Go.toInterface(stdgo.Go.asInterface(_end)));
            };
            var _boundOne = (stdgo._internal.time.Time_date.date((1990 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (16 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _boundTwo = (stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (3 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _boundThree = (stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (15 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _makeLocalTime = (function(_sec:stdgo.GoInt64):stdgo._internal.time.Time_Time.Time {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        final __ret__:stdgo._internal.time.Time_Time.Time = stdgo._internal.time.Time_unix.unix(_sec, (0i64 : stdgo.GoInt64))?.__copy__();
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return __ret__;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    final __ret__:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            } : stdgo.GoInt64 -> stdgo._internal.time.Time_Time.Time);
            var _realTests = {
                var s:stdgo.GoArray<_internal.time_test.Time_test_T__struct_30.T__struct_30> = new stdgo.GoArray<_internal.time_test.Time_test_T__struct_30.T__struct_30>(23, 23, ...[for (i in 0 ... 23) ({ _giveTime : ({} : stdgo._internal.time.Time_Time.Time), _wantStart : ({} : stdgo._internal.time.Time_Time.Time), _wantEnd : ({} : stdgo._internal.time.Time_Time.Time) } : _internal.time_test.Time_test_T__struct_30.T__struct_30)]);
                s[0] = ({ _giveTime : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (13 : stdgo.GoInt), (17 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundOne?.__copy__(), _wantEnd : _boundTwo?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[1] = ({ _giveTime : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (13 : stdgo.GoInt), (18 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundOne?.__copy__(), _wantEnd : _boundTwo?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[2] = ({ _giveTime : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (1 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundOne?.__copy__(), _wantEnd : _boundTwo?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[3] = ({ _giveTime : _boundTwo?.__copy__(), _wantStart : _boundTwo?.__copy__(), _wantEnd : _boundThree?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[4] = ({ _giveTime : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (16 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundTwo?.__copy__(), _wantEnd : _boundThree?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[5] = ({ _giveTime : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (17 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundTwo?.__copy__(), _wantEnd : _boundThree?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[6] = ({ _giveTime : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (15 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundTwo?.__copy__(), _wantEnd : _boundThree?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[7] = ({ _giveTime : _boundThree?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time) } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[8] = ({ _giveTime : stdgo._internal.time.Time_date.date((1991 : stdgo.GoInt), (12 : stdgo._internal.time.Time_Month.Month), (15 : stdgo.GoInt), (1 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time) } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[9] = ({ _giveTime : stdgo._internal.time.Time_date.date((1992 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (13 : stdgo.GoInt), (17 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time) } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[10] = ({ _giveTime : stdgo._internal.time.Time_date.date((1992 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (13 : stdgo.GoInt), (18 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time) } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[11] = ({ _giveTime : stdgo._internal.time.Time_date.date((1992 : stdgo.GoInt), (4 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (1 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time) } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[12] = ({ _giveTime : stdgo._internal.time.Time_date.date((1992 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (16 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time) } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[13] = ({ _giveTime : stdgo._internal.time.Time_date.date((1992 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (14 : stdgo.GoInt), (17 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time) } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[14] = ({ _giveTime : stdgo._internal.time.Time_date.date((1992 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (15 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time) } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[15] = ({ _giveTime : _makeLocalTime((0i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((-5756400i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((9972000i64 : stdgo.GoInt64))?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[16] = ({ _giveTime : _makeLocalTime((1221681866i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((1205056800i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((1225616400i64 : stdgo.GoInt64))?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[17] = ({ _giveTime : _makeLocalTime((2152173599i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2145916800i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[18] = ({ _giveTime : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[19] = ({ _giveTime : _makeLocalTime((2152173601i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[20] = ({ _giveTime : _makeLocalTime((2159200800i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[21] = ({ _giveTime : _makeLocalTime((2172733199i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s[22] = ({ _giveTime : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2177452800i64 : stdgo.GoInt64))?.__copy__() } : _internal.time_test.Time_test_T__struct_30.T__struct_30);
                s;
            };
            for (_i => _tt in _realTests) {
                var __tmp__ = _tt._giveTime.zoneBounds(), _start:stdgo._internal.time.Time_Time.Time = __tmp__._0, _end:stdgo._internal.time.Time_Time.Time = __tmp__._1;
                if ((!_start.equal(_tt._wantStart?.__copy__()) || !_end.equal(_tt._wantEnd?.__copy__()) : Bool)) {
                    _t.errorf(("#%d:: ZoneBounds of %v expects right bounds:\n  got start=%v\n  want start=%v\n  got end=%v\n  want end=%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._giveTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_start)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._wantStart)), stdgo.Go.toInterface(stdgo.Go.asInterface(_end)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._wantEnd)));
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
