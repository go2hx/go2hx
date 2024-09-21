package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testUnixMicro(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f = (function(_usec:stdgo.GoInt64):Bool {
            var _t = (stdgo._internal.time.Time_unixMicro.unixMicro(_usec)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            return _t.unixMicro() == (_usec);
        } : stdgo.GoInt64 -> Bool);
        var _cfg = (stdgo.Go.setRef(({ maxCount : (10000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick_Config.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>);
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f), _cfg) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
