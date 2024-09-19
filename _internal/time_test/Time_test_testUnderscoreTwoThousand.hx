package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testUnderscoreTwoThousand(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _format = ("15:04_20060102" : stdgo.GoString);
        var _input = ("14:38_20150618" : stdgo.GoString);
        var __tmp__ = stdgo._internal.time.Time_parse.parse(_format?.__copy__(), _input?.__copy__()), _time:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _time.date(), _y:stdgo.GoInt = __tmp__._0, _m:stdgo._internal.time.Time_Month.Month = __tmp__._1, _d:stdgo.GoInt = __tmp__._2;
            if (((_y != ((2015 : stdgo.GoInt)) || _m != ((6 : stdgo._internal.time.Time_Month.Month)) : Bool) || (_d != (18 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("Incorrect y/m/d, got %d/%d/%d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)), stdgo.Go.toInterface(_d));
            };
        };
        {
            var _h = (_time.hour() : stdgo.GoInt);
            if (_h != ((14 : stdgo.GoInt))) {
                _t.errorf(("Incorrect hour, got %d" : stdgo.GoString), stdgo.Go.toInterface(_h));
            };
        };
        {
            var _m = (_time.minute() : stdgo.GoInt);
            if (_m != ((38 : stdgo.GoInt))) {
                _t.errorf(("Incorrect minute, got %d" : stdgo.GoString), stdgo.Go.toInterface(_m));
            };
        };
    }
