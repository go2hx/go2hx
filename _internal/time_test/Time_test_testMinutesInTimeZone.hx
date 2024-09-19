package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testMinutesInTimeZone(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Mon Jan 02 15:04:05 +0123 2006" : stdgo.GoString)), _time:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _expected = (4980 : stdgo.GoInt);
        var __tmp__ = _time.zone(), __2:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        if (_offset != (_expected)) {
            _t.errorf(("ZoneOffset = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_expected));
        };
    }
