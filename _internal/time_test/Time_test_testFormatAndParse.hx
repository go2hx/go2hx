package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testFormatAndParse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _f = (function(_sec:stdgo.GoInt64):Bool {
            var _t1 = (stdgo._internal.time.Time_unix.unix((_sec / (2i64 : stdgo.GoInt64) : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
            if ((((_t1.year() < (1000 : stdgo.GoInt) : Bool) || (_t1.year() > (9999 : stdgo.GoInt) : Bool) : Bool) || (_t1.unix() != _sec) : Bool)) {
                return true;
            };
            var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon MST 2006-01-02T15:04:05Z07:00" : stdgo.GoString), _t1.format(("Mon MST 2006-01-02T15:04:05Z07:00" : stdgo.GoString))?.__copy__()), _t2:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return false;
            };
            if (((_t1.unix() != _t2.unix()) || (_t1.nanosecond() != _t2.nanosecond()) : Bool)) {
                _t.errorf(("FormatAndParse %d: %q(%d) %q(%d)" : stdgo.GoString), stdgo.Go.toInterface(_sec), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(_t1.unix()), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)), stdgo.Go.toInterface(_t2.unix()));
                return false;
            };
            return true;
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
