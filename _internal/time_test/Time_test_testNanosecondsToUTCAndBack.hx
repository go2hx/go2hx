package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testNanosecondsToUTCAndBack(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f = (function(_nsec:stdgo.GoInt64):Bool {
            var _t = (stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), _nsec).utc()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _ns = ((_t.unix() * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_t.nanosecond() : stdgo.GoInt64) : stdgo.GoInt64);
            return _ns == (_nsec);
        } : stdgo.GoInt64 -> Bool);
        var _f32 = (function(_nsec:stdgo.GoInt32):Bool {
            return _f((_nsec : stdgo.GoInt64));
        } : stdgo.GoInt32 -> Bool);
        var _cfg = (stdgo.Go.setRef(({ maxCount : (10000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick_Config.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>);
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f32), _cfg) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f), _cfg) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
