package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testSecondsToUTCAndBack(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f = (function(_sec:stdgo.GoInt64):Bool {
            return stdgo._internal.time.Time_unix.unix(_sec, (0i64 : stdgo.GoInt64)).utc().unix() == (_sec);
        } : stdgo.GoInt64 -> Bool);
        var _f32 = (function(_sec:stdgo.GoInt32):Bool {
            return _f((_sec : stdgo.GoInt64));
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
